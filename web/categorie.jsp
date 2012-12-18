<%-- 
    Document   : categorie
    Created on : 14 déc. 2012, 09:13:02
    Author     : Emilien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
    <head>	
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />	
        <link rel="stylesheet" type="text/css" href="style/design.css" media="all" />
        <fmt:setBundle basename="packageLangue.lang" scope="session"/>
        <c:set var="pagename" scope="request" value="GetAlbumsCategorie?id=${idGenre}" />        
        <title>MusicStore - ${genre}</title>
    </head>

<body>

<!-- #global -->
<div id="global">

<!-- #entete -->	
<%@include file="header.jspf" %>

<!-- #contenu -->
<div id="contenu">
    <div id="grid">
        <center>
              
        <c:forEach var="album" items="${albums}">
            <div class="grid_element">
                <c:if test="${album.promo}">
                    <img alt="" src="./style/img/LogoPromo.png" class="promoLogo" />
                </c:if>
                <a href="getAlbum?idAlbum=${album.idAlbum}">
                    <img alt="" src="./style/img/album/${album.image}" width="180px" height="180px" />
                </a>
                <span class="album-name">${album.titre}</span><span class="album-artist">${album.artiste}</span>
                <c:if test="${album.promo}">
                    <span class="pricePromo-box">$${album.prix}</span>
                    <span class="price-box">$${album.getPrixPromoFormat()}</span>
                </c:if>
                <c:if test="${!album.promo}">
                    <span class="price-box">$${album.prix}</span>
                </c:if>
            </div>                           
        </c:forEach>
        </center>
    </div>
</div>

<%@include file="footer.jspf" %>

</div>

</body>
</html>

