module Jekyll
  class TagIndex < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tags.html')
      self.data['tag'] = tag
      tag_title_prefix = site.config['tag_title_prefix'] || 'Articles Tagged &ldquo;'
      tag_title_suffix = site.config['tag_title_suffix'] || '&rdquo;'
      self.data['title'] = "#{tag_title_prefix}#{tag}#{tag_title_suffix}"
    end
  end
  class TagGenerator < Generator
    safe true
    def generate(site)
      if site.layouts.key? 'tags'
        dir = site.config['tag_dir'] || 'tag'
        site.tags.keys.each do |tag|
          write_tags(site, File.join(dir, tag), tag)
        end
      end
    end
    def write_tags(site, dir, tag)
      index = TagIndex.new(site, site.source, dir, tag)
      index.render(site.layouts, site.site_payload)
      index.write(site.dest)
      site.pages << index
    end
  end
end
