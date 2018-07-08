<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>AGROX</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Green Farm Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- Custom Theme files -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/lightbox.css">
<link rel="stylesheet" type="text/css" href="css/menu_topexpand.css" />
<!-- //Custom Theme files -->
<!--fonts-->
<link href="//fonts.googleapis.com/css?family=Courgette&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
<!--//fonts-->
<style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 9px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
::placeholder {
    color: blue;
    opacity: 1; /* Firefox */
}

:-ms-input-placeholder { /* Internet Explorer 10-11 */
   color: red;
}

::-ms-input-placeholder { /* Microsoft Edge */
   color: red;
}
</style>
</head>
<body>
<!--Slider-->
<div class="slider">
	<div class="header-bottom">
	


		<div class="clearfix"> </div>
		<h1><a href="index.html" class="w3l-logo"><i class="fa fa-pagelines" aria-hidden="true"></i>SYSTEME <span>AGROX</span></a></h1>
		
		<div class="clearfix"> </div>
	</div>
	<div class="callbacks_container">
		<ul class="rslides" id="slider3">
			
				<div class="slider-info">
					
					
					<div class="w3_mail_grids">
			<form action="Login" method="post">
		
				<div class="col-md-6 col-xs-6 cont-editw3l">
					<input type="email" id="login" name="login" placeholder="Votre login ici" required=""/>
					<input type="password" id="pwd" name="pwd" placeholder="Votre mot de passe ici" required=""/>
				</div>
					<input type="submit" id="ok" name="ok" value="Connexion">
						
			</form>
			
			
		</div>
					
					
					
					</div>
			
			
		</ul>
	</div>
	<div class="clearfix"></div>
</div>
<!--//Slider-->



<!-- js-files -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- gallery -->
<script src="js/lightbox-plus-jquery.min.js"></script> 
<!-- //gallery -->
<!-- awards -->
<script src="js/jquery.gauge.js"></script>
<script>
$(document).ready(function (){
	$("#gauge1").gauge(30,{color: "#FEC606",unit: " %",type: "halfcircle"});
	$("#gauge2").gauge(70, {color: "#FD5B03", unit: " %",type: "halfcircle"});
	$("#gauge3").gauge(75, {color: "#2C82C9",unit: " %",type: "halfcircle"});
});
</script> 
<!-- //awards -->		
<!-- banner-slider -->
<script src="js/responsiveslides.min.js"></script>
<script>
// You can also use "$(window).load(function() {"
$(function () {
  // Slideshow 3
  $("#slider3").responsiveSlides({
	auto: true,
	pager:true,
	nav:true,
	speed: 500,
	namespace: "callbacks",
	before: function () {
	  $('.events').append("<li>before event fired.</li>");
	},
	after: function () {
	  $('.events').append("<li>after event fired.</li>");
	}
  });

});
</script>
<!-- //banner-slider -->
<!-- testimonials -->
<!-- required-js-files-->
<link href="css/owl.carousel.css" rel="stylesheet">
<script src="js/owl.carousel.js"></script>
<script>
$(document).ready(function() {
  $("#owl-demo").owlCarousel({
	items : 1,
	lazyLoad : true,
	autoPlay : false,
	navigation : true,
	navigationText : true,
	pagination : true,
  });
});
</script>
<!-- //required-js-files-->
<!-- //testimonials -->
<!-- start-smooth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
		
		$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!-- //end-smooth-scrolling -->	
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
	$(document).ready(function() {
		/*
		var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
		};
		*/
		
		$().UItoTop({ easingType: 'easeOutQuart' });
		
	});
</script>
<!-- //smooth-scrolling-of-move-up -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/bootstrap.js"></script>
<!-- //menu-js -->
<script src="js/classie.js"></script>
<script src="js/main.js"></script>
<!-- //menu-js -->
<!-- //js-files -->

</body>
</html>