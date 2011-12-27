
function slideSwitch() {

	var $active = $('#spinner li.active');

	if ($active.length == 0) {

	    $active = $('#spinner li:first');

	    $('#spinner li').hide();
	    $active.show().addClass('active');
	    return;
	}

	$active.css({ opacity: 0.0 }).height(0);

	$active.show();

	// use this to pull the images in the order they appear in the markup
	var $next = $active.next().length ? $active.next() : $('#spinner li:first');

	$active.addClass('last-active');
	$active.css({ opacity: 0 }).hide().height(0);
	$next.css({ opacity: 0.0 })
	        .addClass('active')
	        .show()
	        .height(400)
	        .animate({ opacity: 1.0 }, 1500, function () {
            $active.removeClass('active last-active');
    });
}


$(function () {
    slideSwitch();
    setInterval("slideSwitch()", 10000);
}); 

