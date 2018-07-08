<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page import= "java.sql.*" %>
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

        caption /* Titre du tableau */
        {
           margin: auto; /* Centre le titre du tableau */
           font-family: Arial, Times, "Times New Roman", serif;
           font-weight: bold;
           font-size: 1.2em;
           color: #009900;
           margin-bottom: 20px; /* Pour �viter que le titre ne soit trop coll� au tableau en-dessous */
        }
 
       <style>

table {
    border-collapse: collapse;
	   margin: auto; /* Centre le tableau */
    width: 100%;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr:nth-child(even){background-color: rgb(40, 98, 255)}

th {
    background-color: Gray;
    color: white;
}
</style>
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
					<a href="Consommation.jsp"><font color="black"> Consommation �nergitique</font></a></a>
				</div>			
				</div>
				
				<div class="dropdown">
				<span><a href="#about" class="scroll"><i class="glyphicon glyphicon-info-sign"></i><span>Ges. des Equipements</span></a> </span>
				<div class="dropdown-content">
					<a href="AjoutEquipement.jsp"><font color="black"> Ajout Equipement</font></a></a>
					<a href="MAJEquipement.jsp"><font color="black"> Mise � jour Equipement</font></a></a>
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
				
				<a href="Login.jsp" class="scroll"><i class="glyphicon glyphicon-cog"></i><span>D�connexion</span></a>
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
					<h3>BienVenue � Agrox</h3>
					<p>Supervision en temps r�el</p>
					</div>
			</li>
			<li>
				<div class="slider-info">
					<h3>BienVenue � Agrox</h3>
					<p>Planifier l'arrosage � choix</p>
					</div>
			</li>
			<li>
				<div class="slider-info">
					<h3>BienVenue � Agrox</h3>
					<p>Suivi des alertes et du syst�me</p>
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
		<h3 class="agile-title">Liste des Historiques</h3>
		<div class="w3_mail_grids" align="center">
			
				
					<table>
					<tr>
					<th>Nom Du Champ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>Identifiant de Plante&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>Type de plante&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					</tr>
						
						 <%
					 try
						{
						String url="jdbc:mysql://localhost/agrox";
						String driver="com.mysql.jdbc.Driver";
						Class.forName(driver);
						Connection con=(Connection)DriverManager.getConnection(url,"root","");	
		PreparedStatement st=(PreparedStatement)con.prepareStatement("select * from plante");
		ResultSet rs1=st.executeQuery();
		while(rs1.next())
		{
			String ch=rs1.getString("nom_champ");
			String p=rs1.getString("id");
			String c=rs1.getString("categorie");
			%>	
						<tr>
					<td><%=ch %></td>
					<td><%=p %></td>
					<td><%=c %></td>
					</tr>
					<%
		}
						}
					 catch(Exception e)
					 {}
					%>
					</table>
					
					
			
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
				<p>Syst�me Agrox cr�e en collaboration avec le cabinet ADOPT Formation: Centre de formation professionnelle et bo�te de d�veloppement sise � Sfax.</p>
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
							<h6>T�l�phone</h6>
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
		   <p>� 2017 Agrox. Tous droits r�serv�s | R�alis� par Mahdi Kotti</p>
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