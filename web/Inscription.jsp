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
	<title>MusicStore - <fmt:message key="inscriptionError"/></title>
</head>

<body>

<!-- #global -->
<div id="global">
    
    <%@include file="header.jspf" %>
    
        <div id="contenu">

        
        <h1>Erreur <fmt:message key="${reponse}" /></h1>

        </div>
    <%@include file="footer.jspf" %>
    
    
</div>
</html>
