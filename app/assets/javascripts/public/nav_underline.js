/* nav underline */
$(function() {

    var $el, leftPos, newWidth,
        $mainNav = $("#nav");

    $mainNav.append("<li id='magic-line'></li>");
    var $magicLine = $("#magic-line");

	// If we are on a Posts page, there is no current item to start with
	if($(".current_page_item").length === 0) {
		$magicLine
	        .width(0)
	        .css("left", 0)
	        .data("origLeft", $magicLine.position().left)
	        .data("origWidth", $magicLine.width());
	}
	else {
    	$magicLine
	        .width($(".current_page_item").width())
	        .css("left", $(".current_page_item a").position().left)
	        .data("origLeft", $magicLine.position().left)
	        .data("origWidth", $magicLine.width());
	}
	
    $("#nav li a").hover(function() {
		$el = $(this);
        leftPos = $el.position().left;
        newWidth = $el.parent().width();
        $magicLine.stop().animate({
            left: leftPos,
            width: newWidth
        });
    }, function() {
        $magicLine.stop().animate({
            left: $magicLine.data("origLeft"),
            width: $magicLine.data("origWidth")
        });
    });
});