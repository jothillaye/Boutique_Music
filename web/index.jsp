<%-- 
    Document   : index
    Created on : 8 nov. 2012, 15:26:25
    Author     : Joachim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Boutique de musique</title>
	<link rel="stylesheet" type="text/css" href="style/design.css" media="all" />
</head>

<body>

<!-- #global -->
<div id="global">

	<!-- #entete -->	
	<div id="entete">
		<h1>
			El Miouzik Store
		</h1>
		<p class="sous-titre">
			Who are you ? <strong><a href="register.jsp">Register</a></strong>
		</p>
	</div>
	
	<!-- #navigation -->
	<div id="navigation">
		<ul>
			<li class="gauche"><a href="cart.jps">View Cart</a></li>
			<li class="gauche"><a href="connexion.jsp">Log in</a></li>
			<li class="droite"><a href="account.jps">My Account</a></li>
			<li class="droite"><a href="info.jsp">Info</a></li>
		</ul>
	</div>
	
	<!-- #contenu -->
	<div id="contenu">
		<div id="grid">
			<div class="grid_element">
				<a href="element_link">
					<img alt="" src="./style/img/pochette/pochette.jpg" width="150px" height="150px" />
				</a>
				<span class="product-name">BluePrint</span>
				<span class="price-box">18$</span>
			</div>
			<div class="grid_element">
				<a href="element_link">
					<img alt="" src="./style/img/pochette/pochette2.jpg" width="150px" height="150px" />
				</a>
				<span class="product-name">Ray Charles</span>
				<span class="price-box">34$</span>
			</div>
			<div class="grid_element">
				<a href="element_link">
					<img alt="" src="./style/img/pochette/pochette3.jpg" width="150px" height="150px" />
				</a>
				<span class="product-name">Justine Bieber</span>
				<span class="price-box">2$</span>
			</div>
			<div class="grid_element">
				<a href="element_link">
					<img alt="" src="./style/img/pochette/pochette4.jpg" width="150px" height="150px" />
				</a>
				<span class="product-name">Dim Mak</span>
				<span class="price-box">19$</span>
			</div>
               <div class="grid_element">
                      <a href="element_link">
                           <img alt="" src="./style/img/pochette/pochette5.jpg" width="150px" height="150px" />
                      </a>
                      <span class="product-name">This is It</span>
                      <span class="price-box">188$</span>
               </div>
		</div>
 	</div>
	
	<!-- #pied -->
	<div id="pied">
		<p>
			Le contenu de mon pied de page. Nulla tincidunt tincidunt mi.
			Curabitur iaculis, lorem vel rhoncus faucibus, felis magna fermentum
			augue, et ultricies lacus lorem varius purus. Curabitur eu amet.
		</p>
		<p id="copyright">
			Mise en page &copy; 2008
			<a href="http://www.elephorm.com">Elephorm</a> et
			<a href="http://www.alsacreations.com">Alsacréations</a>
		</p>
	</div>

</div>

</body>
</html>
