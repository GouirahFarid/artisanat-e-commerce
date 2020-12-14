$(document).ready(function(){
	"use strict";
	$('.my-zoom-1').WMZoom();
	$('.my-zoom-2').WMZoom({
	 config : {
		inner : true
		}
	});
	$('.cat1').click(function(){
		$('.sous1').slideToggle(300);
		$('.t1').slideToggle(100);
		$('.t2').slideToggle(100);
	});
	$('.cat2').click(function(){
		$('.sous2').slideToggle(300);
	    $('.t3').slideToggle(100);
		$('.t4').slideToggle(100);
	});
	$('.cat3').click(function(){
		$('.sous3').slideToggle(300);
		$('.t5').slideToggle(100);
		$('.t6').slideToggle(100);
	});
	$('.cat4').click(function(){
		$('.sous4').slideToggle(300);
		$('.t7').slideToggle(100);
		$('.t8').slideToggle(100);
	});
	$('.h_1').click(function(){
		$('.h_1').removeClass("hactive");
		$(this).addClass("hactive");
	});
	$('.h_2').click(function(){
		$('.h_2').removeClass("hactive");
		$(this).addClass("hactive");
	});
	$('.h_3').click(function(){
		$('.h_3').removeClass("hactive");
		$(this).addClass("hactive");
	});
	$('.h_4').click(function(){
		$('.h_4').removeClass("hactive");
		$(this).addClass("hactive");
	});
	
	var img=$('.imactive').attr("src");
	$(".choo").attr("src",img);
		
	$('.im').click(function(){
		var image=$(this).attr("src");
		$('.choo').attr("src",image);
	});
	
	
});