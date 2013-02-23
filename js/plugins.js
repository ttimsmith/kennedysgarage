// Avoid `console` errors in browsers that lack a console
if (!(window.console && console.log)) {
    (function() {
        var noop = function() {};
        var methods = ['assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error', 'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log', 'markTimeline', 'profile', 'profileEnd', 'markTimeline', 'table', 'time', 'timeEnd', 'timeStamp', 'trace', 'warn'];
        var length = methods.length;
        var console = window.console = {};
        while (length--) {
            console[methods[length]] = noop;
        }
    }());
}

//@codekit-prepend "fitvids.js";
//@codekit-prepend "prettify.js";
//@codekit-prepend "raphael.2.1.0min.js";
//@codekit-prepend "justgage.1.0.1-min.js";

$(document).ready(function(){

	// To make the code look beautiful for you
	// http://code.google.com/p/google-code-prettify/
	prettyPrint();

    // Basic FitVids Test
    $("article").fitVids();

});
