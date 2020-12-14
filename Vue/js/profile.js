$(document).ready(function(){
  "use strict";
	$('.show1_1').click(function(){
		$('.show1').removeClass("sh");
		$('.show2').addClass("sh");
		$('.show3').addClass("sh");
		$('.show4').addClass("sh");
		
	});
	$('.show2_2').click(function(){
		$('.show2').removeClass("sh");
		$('.show1').addClass("sh");
		$('.show3').addClass("sh");
		$('.show4').addClass("sh");
		
	});
	$('.show3_3').click(function(){
		$('.show3').removeClass("sh");
		$('.show2').addClass("sh");
		$('.show1').addClass("sh");
		$('.show4').addClass("sh");
		
	});
	$('.show4_4').click(function(){
		$('.show4').removeClass("sh");
		$('.show2').addClass("sh");
		$('.show3').addClass("sh");
		$('.show1').addClass("sh");
		
	});
	$('.info').click(function(){
		$('.info').removeClass("active");
		$(this).addClass("active");
	});
	$('.sup1').click(function(){
		$( "input[name='image1']" ).attr("value","");
		$('.omg1').fadeOut(100);
		
	});
	$('.sup2').click(function(){
		$( "input[name='image2']" ).attr("value","");
		$('.omg2').fadeOut(100);
		
	});
	$('.sup3').click(function(){
		$( "input[name='image3']" ).attr("value","");
		$('.omg3').fadeOut(100);
		
	});
	$('.sup4').click(function(){
		$( "input[name='image4']" ).attr("value","");
		$('.omg4').fadeOut(100);
		
	});
	$('.sup5').click(function(){
		$( "input[name='image5']" ).attr("value","");
		$('.omg5').fadeOut(100);
		
	});
	$('.sup6').click(function(){
		$( "input[name='image6']" ).attr("value","");
		$('.omg6').fadeOut(100);
		
	});
	$('.sup7').click(function(){
		$( "input[name='image7']" ).attr("value","");
		$('.omg7').fadeOut(100);
		
	});
	$('.sup8').click(function(){
		$( "input[name='image8']" ).attr("value","");
		$('.omg8').fadeOut(100);
		
	});
	$( "input[name='image1']" ).change(function (e){
		 if (this.files.length > 0) {$(".image2").show();}
		 var fileName = e.target.files[0].name;
		$('.image1').fadeOut(200);
		$('.omg1').fadeIn(200);
		$('.omg1-1').attr("src","C:/Users/GOUIRAH/Desktop/pfe/imgaes/"+fileName);
		
	});
	$( "input[name='image2']" ).change(function (e){
		if (this.files.length > 0) {$(".image3").show();}
		var fileName = e.target.files[0].name;
		$('.image2').fadeOut(200);
		$('.omg2').fadeIn(200);
		$('.omg2-2').attr("src","C:/Users/GOUIRAH/Desktop/pfe/imgaes/"+fileName);
	});
	$( "input[name='image3']" ).change(function (e){
		if (this.files.length > 0) {$(".image4").show();}
		var fileName = e.target.files[0].name;
		$('.image3').fadeOut(200);
		$('.omg3').fadeIn(200);
		$('.omg3-3').attr("src","C:/Users/GOUIRAH/Desktop/pfe/imgaes/"+fileName);
	});
	$( "input[name='image4']" ).change(function (e){
		if (this.files.length > 0) {$(".image5").show();}
		var fileName = e.target.files[0].name;
		$('.image4').fadeOut(200);
		$('.omg4').fadeIn(200);
		$('.omg4-4').attr("src","C:/Users/GOUIRAH/Desktop/pfe/imgaes/"+fileName);
	});
	$( "input[name='image5']" ).change(function (e){
		if (this.files.length > 0) {$(".image6").show();}
		var fileName = e.target.files[0].name;
		$('.image5').fadeOut(200);
		$('.omg5').fadeIn(200);
		$('.omg5-5').attr("src","C:/Users/GOUIRAH/Desktop/pfe/imgaes/"+fileName);
	});
	$( "input[name='image6']" ).change(function (e){
		if (this.files.length > 0) {$(".image7").show();}
		var fileName = e.target.files[0].name;
		$('.image6').fadeOut(200);
		$('.omg6').fadeIn(200);
		$('.omg6-6').attr("src","C:/Users/GOUIRAH/Desktop/pfe/imgaes/"+fileName);
	});
	$( "input[name='image7']" ).change(function (e){
		if (this.files.length > 0) {$(".image8").show();}
		var fileName = e.target.files[0].name;
		$('.image7').fadeOut(200);
		$('.omg7').fadeIn(200);
		$('.omg7-7').attr("src","C:/Users/GOUIRAH/Desktop/pfeimgaes/"+fileName);
	});
	$( "input[name='image8']" ).change(function (e){
		var fileName = e.target.files[0].name;
		$('.image8').fadeOut(200);
		$('.omg8').fadeIn(200);
		$('.omg8-8').attr("src","C:/Users/GOUIRAH/Desktop/pfe/imgaes/"+fileName);
	});
	$( "input[name='video1']" ).change(function (){
		if (this.files.length > 0) {$(".video2").show();}
	});
	$( "input[name='video2']" ).change(function (){
		if (this.files.length > 0) {$(".video3").show();}
	});
	$( "input[name='video3']" ).change(function (){
		if (this.files.length > 0) {$(".video4").show();}
	});
	$('.tof').click(function(){
		var img=$(this).attr("src");
		$('.popup').fadeIn(100);
		$('.tof2').attr("src",img);
	});
	$('.sup').click(function(){
		$('.popup').fadeOut(100);
	});

}); 