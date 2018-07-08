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
</style>
</head>
<body>
<!--Slider-->
<div class="slider">
	<div class="header-bottom">
		<div class="top-nav menu-wrap">
		<nav>
			<div class="icon-list">
				<a href="index.jsp" class="scroll"><i class="glyphicon glyphicon-home"></i><span>Accueil</span></a>
				
				<div class="dropdown">
				<span><a href="#about" class="scroll"><i class="glyphicon glyphicon-info-sign"></i><span>Ges. des Plantes</span></a> </span>
				<div class="dropdown-content">
					<a href="AjoutPlante.jsp"><font color="black"> Ajout Plante</font></a></a>
					<a href="Commande.jsp"><font color="black"> Arrosage</font></a></a>
					<a href="Plantes.jsp"><font color="black"> Details Plante</font></a></a>
				</div>			
				</div>
				
				
				<div class="dropdown">
				<span><a href="#about" class="scroll"><i class="glyphicon glyphicon-info-sign"></i><span>Ges. des Capteurs</span></a> </span>
				<div class="dropdown-content">
					<a href="AjoutCapteur.jsp"><font color="black"> Ajout Capteur</font></a></a>
					<a href="Consommation.jsp"><font color="black"> Consommation énergitique</font></a></a>
				</div>			
				</div>
				
				<div class="dropdown">
				<span><a href="#about" class="scroll"><i class="glyphicon glyphicon-info-sign"></i><span>Ges. des Equipements</span></a> </span>
				<div class="dropdown-content">
					<a href="AjoutEquipement.jsp"><font color="black"> Ajout Equipement</font></a></a>
					<a href="MAJEquipement.jsp"><font color="black"> Mise à jour Equipement</font></a></a>
				</div>			
				</div>
				
				<div class="dropdown">
				<span><a href="#about" class="scroll"><i class="glyphicon glyphicon-info-sign"></i><span>Supervision</span></a> </span>
				<div class="dropdown-content">
					<a href="Courbes.jsp"><font color="black"> Courbes</font></a></a>
					<a href="Historique.jsp"><font color="black"> Historique</font></a></a>
						<a href="Alertes.jsp"><font color="black"> Alertes</font></a></a>
				</div>			
				</div>				
				
				<a href="Login.jsp" class="scroll"><i class="glyphicon glyphicon-cog"></i><span>Déconnexion</span></a>
			</div>
		</nav>
	</div>
	<button class="menu-button" id="open-button"></button> 

		<div class="clearfix"> </div>
		<h1><a href="index.html" class="w3l-logo"><i class="fa fa-pagelines" aria-hidden="true"></i>SYSTEME <span>AGROX</span></a></h1>
		
		<div class="clearfix"> </div>
	</div>
	<div class="callbacks_container">
		<ul class="rslides" id="slider3">
			<li>
				<div class="slider-info">
					<h3>BienVenue à Agrox</h3>
					<p>Supervision en temps réel</p>
					</div>
			</li>
			<li>
				<div class="slider-info">
					<h3>BienVenue à Agrox</h3>
					<p>Planifier l'arrosage à choix</p>
					</div>
			</li>
			<li>
				<div class="slider-info">
					<h3>BienVenue à Agrox</h3>
					<p>Suivi des alertes et du système</p>
					</div>
			</li>
		</ul>
	</div>
	<div class="clearfix"></div>
</div>
<!--//Slider-->

<!-- contact -->
<div class="agileits_w3layouts_contact" id="contact">
	<div class="container"> 
		<h3 class="agile-title">Ajout Nouvelle Plante</h3>
		<div class="w3_mail_grids">
			<form action="AddPlante" method="post">
				<div class="col-md-6 col-xs-6 cont-editw3l">
					<input type="text" id="champ" name="champ" placeholder="Nom du champ du ferme" required=""/>
					<input type="text" id="idplante" name="idplante" placeholder="Id de la plante" required=""/>
				</div>
				<div class="col-md-6 col-xs-6 cont-editw3l">
					
					<input type="hidden" id="cat" name="cat" placeholder="Catégorie du plante" />
				</div>
					<br></br>
				
			<div class="col-md-6 col-xs-6 cont-editw3l">
				<select onchange="document.getElementById('cat').value=this.options[this.selectedIndex].text">
					<option>Sélectionner un type</option>
					<option>Plante Productive</option>
					<option>Plante non Productive</option>
					</select>
				</div>
				<input type="submit" id="ok" name="ok" value="Validation">
			</form>
		</div>
	</div>
</div>
<!-- contact-->

<!--footer-->
<div class="footer_bottom section">
	<div class="agileits-w3layouts-footer">
		<div class="container">
			<div class="col-md-4 w3-agile-grid">
				<h5>A propos</h5>
				<p>Système Agrox crée en collaboration avec le cabinet ADOPT Formation: Centre de formation professionnelle et boîte de développement sise à Sfax.</p>
				   <div class="w3_agileits_social_media team_agile_w3l team footer">
							<ul class="social-icons3">
								
								<li><a href="#" class="wthree_facebook"> <i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#" class="wthree_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#" class="wthree_dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
								<li><a href="#" class="wthree_behance"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
							</ul>
						</div>		
			</div>
			<div class="col-md-4 w3-agile-grid">
				<h5></h5>
				<div class="w3ls-post-grids">
					<div class="w3ls-post-grid">
						
						<div class="clearfix"> </div>
					</div>
					<div class="w3ls-post-grid">
						
						<div class="clearfix"> </div>
					</div>
					<div class="w3ls-post-grid">
						
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<div class="col-md-4 w3-agile-grid">
				<h5>Adresse</h5>
				<div class="w3-address">
					<div class="w3-address-grid">
						<div class="w3-address-left">
							<i class="fa fa-phone" aria-hidden="true"></i>
						</div>
						<div class="w3-address-right">
							<h6>Téléphone</h6>
							<p>+216 97 678 478 </p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="w3-address-grid">
						<div class="w3-address-left">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</div>
						<div class="w3-address-right">
							<h6>Adresse Electronique</h6>
							<p>Email :<a href="mailto:example@email.com"> adoptcenter@gmail.com</a></p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="w3-address-grid">
						<div class="w3-address-left">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
						</div>
						<div class="w3-address-right">
							<h6>Emplacement</h6>
							<p>Rue Ahmed Aloulou, immeuble jawhara Mezanine B2 Sfax.
							</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="copyright">
		   <p>© 2017 Agrox. Tous droits réservés | Réalisé par Mahdi Kotti</p>
	</div>
</div>
<!--//footer-->

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