$(document).ready(function(){
  "use strict";
	$(".client").click(function(){
		$(".client").removeClass("noactive");
		$(".client").addClass("active");
		$(".artisan").removeClass("active");
		$(".artisan").addClass("noactive");
		$(".gouirah").slideDown(500);
		$(".elkhaldi").slideUp(500);
		
	});
	$(".artisan").click(function(){
		$(".artisan").removeClass("noactive");
		$(".artisan").addClass("active");
		$(".client").removeClass("active");
		$(".client").addClass("noactive");
		$(".gouirah").slideUp(500);
		$(".elkhaldi").slideDown(500);
	});

}); 