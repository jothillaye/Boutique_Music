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
    <script type="text/javascript">
        function validatePrenom()
        {           
            var prenom = document.forms["register"]["prenom"].value;
            var myPrenomTest = new RegExp("^[a-zA-Z]{5,9}$","g"); // 5 à 9 caractères
               if (myPrenomTest.test(prenom)==false)
                {
                    
                    getElementById('span_prenom').InnerHTML="Prenom invalide";
                   //document.getElementById("prenom").style.borderColor='RED';                   
                }
                else
                {
                    document.getElementById("prenom").style.borderColor='Green';
                }
        }
        
        function validateNom()
        {
            var nom = document.forms["register"]["nom"].value;
            var myNomTest = new RegExp("^[a-zA-Z]{5,9}$","g"); // 5 à 9 caractères
               if (myNomTest.test(nom)==false || nom == "" || nom==null)
                {
                   document.getElementById("nom").style.borderColor='RED';                   
                }
                else
                {
                    document.getElementById("nom").style.borderColor='Green';
                }     
        }
        
    </script>

<body>

<!-- #global -->
<div id="global">
    
    <%@include file="header.jspf" %>
    
    
    <div id="contenu">
        
        <form class="style" name="register" method="post" onsubmit="return validateForm()"><!--action="register"--> 
                
            <label for="Prenom">Prenom</label> <input type="text" name="prenom" id="prenom" onkeyup="validatePrenom();" /><span id="span_prenom"/><br/>
            <label for="Nom">Nom</label> <input type="text" name="nom" id="nom" onkeyup="validateNom();"/><br/>
            <label for="Rue">Rue</label> <input type="text" name="rue" id="rue"/><br/>
            <label for="Numero">Numero</label> <input type="text" name="numero" id="numero"/><br/>
            <label for="Localite">Boite</label> <input type="text" name="boite" id="boite" /><br/>
            <label for="Localite">Localite</label> <input type="text" name="localite" id="localite"/><br/>
            <label for="Code postal">Code Postal</label> <input type="text" name="codepostal" id="codepostal"/><br/>
            <label for="Mail">Mail</label> <input type="text" name="mail" id="mail"/><br/>
            <label for="Mot de passe">Mot de passe</label> <input type="password" name="pw" id="pw"/><br/>
            <label for="Confirmation">Confirmation</label> <input type="password" name="pwconfirm" id="pwconfirm"/><br/>                           
            <input type="submit" value="S'inscrire"/>
        </form>
        
        
    </div>
    
    
    <%@include file="footer.jspf" %>
    
    
</div>
