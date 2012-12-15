<%-- 
    Document   : index
    Created on : 8 nov. 2012, 15:26:25
    Author     : BAVAY Emilien - THILLAYE Joachim
--%>
<%-- any content can be specified here e.g.: --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <link rel="stylesheet" type="text/css" href="style/design.css" media="all" />
    <fmt:setBundle basename="packageLangue.lang" scope="session" />
    <c:set var="pagename" scope="request" value="getAlbum?idAlbum=${album.idAlbum}" />
<title>MusicStore - <fmt:message key="detailTitle" /></title>	
</head>

<body>

<!-- #global -->
<div id="global">
    <%@include file="header.jspf" %>
    
    <div id="contenu">
        <div id="detailPage">
            <div id="titre">${album.artiste} - ${album.titre}</div>
            
            <div id="illustration">
                <img alt="" src="./style/img/album/${album.image}" height="400" width="400" />
            </div>
            
            <div id="inputQte">
                <center><span class="labelName">${album.label}</span><br /><img alt="" src="./style/img/label/${album.labelImg}" height="60" /></center>
                <div id="desc">
                    ${desc}
                </div>
                <div id="option">
                    Options
                </div>
                <div>
                    <c:if test="${album.promo}"><img id="promoLogoDetail" alt="" src="./style/img/LogoPromo.png" /></c:if>
                    <p><span class="titleBox"><fmt:message key="priceAlbum"/> :</span> ${album.getPromo() ? album.getPrixPromoFormat() : album.prix} $</p>            
                </div>
                <form name="addToCart" method="post" action="ServletAjoutPanier?ID=${album.idAlbum}">
                    <p>
                        <span class="titleBox"><fmt:message key="quantityAlbum"/></span>            
                        <select name="qte" id="qteBox">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                        </select>
                    </p>    
                    <input type="submit" value=" <fmt:message key="addToCartButton"/>" />              
                </form>
            </div>
        </div>
    </div>    	
	
    <%@include file="footer.jspf" %>

</div>
    
</body>
</html>
