<%-- 
    Document   : inscription
    Created on : 15 nov. 2012, 13:53:57
    Author     : Emilien
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
        
        <form name="inscription" method="post" action="inscription" onsubmit="return validateInscriptionForm()">

                           Prenom <input type="text" name="prenom"/><br/>
                           Nom <input type="text" name="nom"/><br/>
                           Rue <input type="text" name="rue"><br/>
                           Numero <input type="text" name="num"/><br/>
                           Localite <input type="text" name="localite"/><br/>
                           CP <input type="text" name="codepostal"/><br/>
                           Mail <input type="text" name="mail"/><br/>
                           Mot de passe <input type="password" name="mdp"/><br/>
                           Confirmation <input type="password" name="mdpconfirm"/><br/>                           
                           <input type="submit" value="S'inscrire"/>
        </form>
        
        
    </div>
    
    
    <%@include file="footer.jspf" %>
    
    
</div>
