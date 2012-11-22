<%-- 
    Document   : cart
    Created on : 15 nov. 2012, 13:53:57
    Author     : BAVAY Emilien - THILLAYE Joachim
--%>
<%-- any content can be specified here e.g.: --%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>My Cart</title>
	<link rel="stylesheet" type="text/css" href="style/design.css" media="all" />
</head>
    <script type="text/javascript">
        
    </script>

<body>

<!-- #global -->
<div id="global">
    
    <%@include file="header.jspf" %>
    
    
    <div id="contenu">
        <table id="tableCart">
            <thead>
                <tr>
                    <td width="10%"> </td>
                    <td width="50%">Product Name</td>
                    <td width="10%">Unit Price</td>
                    <td width="15%">Quantity</td>
                    <td width="10%">Subtotal</td>              
                    <td width="5%"> </td>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td colspan="2"><a href="index.jsp">Continue Shopping</a></td>
                    <td colspan="4" class="droite"><a href="cart.jsp">Update</a></td>
                </tr>
            </tfoot>
            <tbody>
                <tr>
                    <td><img alt="" src="./style/img/pochette/pochette5.jpg" width="50px" height="50px" /></td>
                    <td class="alignLeft"><h5><a href="detail.jps?album=1">Michael Jackson - This is it</a></h5></td>
                    <td>188$</td>
                    <td><input type="text" name="qte" id="qte"/></td>
                    <td>188$</td>
                    <td><img alt="" src="./style/img/Delete.png" width="20px" /></td>
                </tr>
            </tbody>
            
        </table>
    </div>
    
    
    <%@include file="footer.jspf" %>
    
    
</div>
