<%-- 
    Document   : cart
    Created on : 15 nov. 2012, 13:53:57
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
        <fmt:setBundle basename="packageLangue.lang" scope="session"/>
        <c:set var="pagename" scope="request" value="cart.jsp" />
	<title>MusicStore - <fmt:message key="cartTitle"/></title>
        
</head>

<body>

<!-- #global -->
<div id="global">
    
    <%@include file="header.jspf" %>    
    <jsp:include page="/Cart"></jsp:include>  
    <div id="contenu">
        <c:if test="${not empty sessionScope.user.hasmMapPanier}">
        <c:if test="${not empty message}">
            <span id="cartError"><fmt:message key="${message}"/></span>
        </c:if>
        <table id="tableCart">
            <form name="cart" action="changeQuantity" method="post">            
            <thead>
                <tr>
                    <td width="80"> </td>
                    <td width="420"><fmt:message key="productName"/></td>
                    <td width="100"><fmt:message key="unitPrice"/></td>
                    <td width="80"><fmt:message key="quantity"/></td>
                    <td width="100"><fmt:message key="subTotal"/></td>              
                    <td width="50"> </td>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td colspan="2"><a href="index.jsp"><fmt:message key="continueShopping"/></a></td>
                    <td colspan="4"><input type="submit" id="submitCart" value='<fmt:message key="updateCart"/>' /></td>
                </tr>
            </tfoot>
            <tbody>    
               <c:forEach var="album" items="${sessionScope.user.hasmMapPanier}">
                    <tr>
                       <td><img alt="" src="./style/img/album/${album.value.image}" width="50px" height="50px" /></td>
                        <td class="alignLeft"><h5><a href="getAlbum?idAlbum=${album.value.idAlbum}">${album.value.artiste} - ${album.value.titre}</a></h5></td>
                        <td>$${album.value.promo ? album.value.getPrixPromoFormat() : album.value.prix}</td>
                        <td>
                             <input type="number" name="quantity${album.value.idAlbum}" id="quantity" min="0" max="100" step="1" value="${album.value.qte}" >
                        </td>
                        <td> $${album.value.tot}</td>
                        <td><a href="removeAlbum?idAlbum=${album.value.idAlbum}"><img alt="" src="./style/img/Delete.png" width="20px" /></a></td>                       
                   </tr>
                </c:forEach>                
                <tr>
                    <td colspan="6" id="totalCart">TOTAL : $${total}</td>
                </tr>
            </tbody>
            </form>
        </table>
        <div id="commander"><a href="confirmation.jsp"><fmt:message key="confirmCommande"/></a></div>
    </c:if>
    <c:if test="${empty sessionScope.user.hasmMapPanier}">
        <fmt:message key="cartEmpty"/>
    </c:if>
    </div>   
    
    <%@include file="footer.jspf" %>
    
</div>
