<%-- 
    Document   : index
    Created on : 8 nov. 2012, 15:26:25
    Author     : BAVAY Emilien - THILLAYE Joachim
--%>
<%-- any content can be specified here e.g.: --%>

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

    <%@include file="header.jspf" %>
    <div id="contenu">
    <table width="800" height="500" border="0">
  <tr>
      <td id="illustration"width="500" height="284">
          <div id="titre">
          Le titre et la pochette 
          </div>
          <br>
          <img src="http://a3.idata.over-blog.com/320x320/4/69/94/92/MI-OCTOBRE/michael-jackson-this-is-it-pochette-album.jpg" height="400" width="400"/>
          
          </td>
    <td id="inputQte"width="200" height="284">
            <label for="Quantity">Quantity</label>
            <!--<input id="qte" name="qte" value="1" onkeydown="qte.innerHTML=''();"></input>-->
            <SELECT name="qte" size="1">
                <OPTION>1
                <OPTION>2
                <OPTION>3
                <OPTION>4
                <OPTION>5
                <OPTION>6
                <OPTION>7
                <OPTION>8
                <OPTION>9
                <OPTION>10
            </SELECT><br>
             
            La modif de quantité etc ...
       
    </td>
  </tr>
  <tr>
    <td colspan="2">la description phénoménale</td>
  </tr>
</table>
    </div>
    
     	
	
    <%@include file="footer.jspf" %>

</div>


<!-- #global -->
    </body>
</html>
