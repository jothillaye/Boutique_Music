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
        function validateForm()
        {
            
            var pseudo = document.forms["register"]["prenom"].value;
               if (pseudo == "" || pseudo=="")
                {
                    //alert("erreur");
                   //document.forms["register"]["prenom"].bgColor="red";
                   document.getElementByName("prenom").style.borderColor='#FF3300';
                   
                }
    
        }
    </script>

<body>

<!-- #global -->
<div id="global">
    
    <%@include file="header.jspf" %>
    
    
    <div id="contenu">
        
        <form class="style" name="register" method="post" onsubmit="return validateForm()"><!--action="register"--> 
                
            <label for="Prenom">Prenom</label> <input type="text" name="prenom"  onkeyup="validateForm();" /><br/>
            <label for="Nom">Nom</label> <input type="text" name="nom"/><br/>
            <label for="Rue">Rue</label> <input type="text" name="rue"><br/>
            <label for="Numero">Numero</label> <input type="text" name="numero"/><br/>
            <label for="Localite">Boite</label> <input type="text" name="boite"/><br/>
            <label for="Localite">Localite</label> <input type="text" name="localite"/><br/>
            <label for="Code postal">Code Postal</label> <input type="text" name="codepostal"/><br/>
            <label for="Mail">Mail</label> <input type="text" name="mail"/><br/>
            <label for="Mot de passe">Mot de passe</label> <input type="password" name="pw"/><br/>
            <label for="Confirmation">Confirmation</label> <input type="password" name="pwconfirm"/><br/>                           
            <input type="submit" value="S'inscrire"/>
        </form>
        
        
    </div>
    
    
    <%@include file="footer.jspf" %>
    
    
</div>
