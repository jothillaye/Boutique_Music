<%-- 
    Document   : cart
    Created on : 15 nov. 2012, 13:53:57
    Author     : BAVAY Emilien - THILLAYE Joachim
--%>
<%-- any content can be specified here e.g.: --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />        
	<link rel="stylesheet" type="text/css" href="style/design.css" media="all" />
        <fmt:setBundle basename="packageLangue.lang" scope="session"/>
        <c:set var="pagename" scope="request" value="cart.jsp" />
	<title>MusicStore - <fmt:message key="carTitle"/></title>
</head>

<body>

<!-- #global -->
<div id="global">
    
    <%@include file="header.jspf" %>
    
    
    <div id="contenu">
        <table id="tableCart">
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
                    <td colspan="4"><a href="cart.jsp"><fmt:message key="updateCart"/></a></td>
                </tr>
            </tfoot>
            <tbody>
                <form name="cart">
                <tr>
                    <td><img alt="" src="./style/img/pochette/pochette5.jpg" width="50px" height="50px" /></td>
                    <td class="alignLeft"><h5><a href="detail.jsp?album=1">Michael Jackson - This is it</a></h5></td>
                    <td>188$</td>
                    <td>
                        <select name="quantity">
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
                    </td>
                    <td>188$</td>
                    <td><img alt="" src="./style/img/Delete.png" width="20px" /></td>
                </tr>
                </form>
            </tbody>
            
        </table>
    </div>
    
    
    <%@include file="footer.jspf" %>
    
    
</div>
