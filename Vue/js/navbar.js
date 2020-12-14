$(document).ready(function(){
	"use strict";
	$('.li').click(function(){
		$('.li').removeClass("liactive");
		$(this).addClass("liactive");
	});
});