<%-- 
    Document   : inscription
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
	<title>Register</title>
	<link rel="stylesheet" type="text/css" href="style/design.css" media="all" />
</head>
    <script type="text/javascript">
        function blockSubmit(block)
        {
            document.getElementById("submitForm").disabled = block;
        }
        
        function validatePrenom()
        {           
            var prenom = document.forms["register"]["prenom"].value;
            var myPrenomTest = new RegExp("^[a-zA-Z]{1}[a-zA-Z-]{1,15}$","g"); // 2 à 16 caractères
            if (myPrenomTest.test(prenom)==false)
            {
                span_prenom.innerHTML="<font color='red' > Prenom invalide</font>";
                document.getElementById("prenom").style.borderColor='Red';
                blockSubmit(true);
            }
            else
            {
                 span_prenom.innerHTML="";
                 document.getElementById("prenom").style.borderColor='Green';
                 blockSubmit(false);
            }
        }
        
        function validateNom()
        {
            var nom = document.forms["register"]["nom"].value;
            var myNomTest = new RegExp("^[a-zA-Z]{2,25}$","g"); // 5 à 9 caractères
               if (myNomTest.test(nom)==false || nom == "" || nom==null)
                {
                   span_nom.innerHTML="<font color='red' > Nom invalide</font>";
                   document.getElementById("nom").style.borderColor='RED'; 
                   blockSubmit(true);
                }
                else
                {
                    span_nom.innerHTML="";
                    document.getElementById("nom").style.borderColor='Green';
                    blockSubmit(false);
                }     
        }
        
    </script>

<body onload="blockSubmit(true);">

<!-- #global -->
<div id="global">
    
    <%@include file="header.jspf" %>
    
    
    <div id="contenu">
        
        <form class="style" name="register" method="post" onsubmit="return validateForm()"><!--action="register"-->                 
            <label for="Prenom">Prenom</label> <input type="text" name="prenom" id="prenom" onkeyup="validatePrenom();" /><span name ="span_prenom" id="span_prenom"> </span><br/>
            <label for="Nom">Nom</label> <input type="text" name="nom" id="nom" onkeyup="validateNom();"/> <span name ="span_nom" id="span_nom"> </span><br/>
            <label for="Rue">Rue</label> <input type="text" name="rue" id="rue"/> <span name ="span_rue" id="span_rue"> </span><br/>
            <label for="Numero">Numero</label> <input type="text" name="numero" id="numero"/> <span name ="span_numero" id="span_numero"> </span><br/>
            <label for="Localite">Boite</label> <input type="text" name="boite" id="boite" /> <span name ="span_boite" id="span_boite"> </span><br/>
            <label for="Localite">Localite</label> <input type="text" name="localite" id="localite"/> <span name ="span_localite" id="span_localite"> </span><br/>
            <label for="Code postal">Code Postal</label> <input type="text" name="codepostal" id="codepostal"/> <span name ="span_codepostal" id="span_codepostal"> </span><br/>
            <label for="Mail">Mail</label> <input type="text" name="mail" id="mail"/> <span name ="span_mail" id="span_mail"> </span><br/>
            <label for="Mot de passe">Mot de passe</label> <input type="password" name="pw" id="pw"/> <span name ="span_pw" id="span_pw"> </span><br/>
            <label for="Confirmation">Confirmation</label> <input type="password" name="pwconfirm" id="pwconfirm"/> <span name ="span_pwconfirm" id="span_pwconfirm"> </span><br/>                           
            <input type="submit" value="S'inscrire" id="submitForm" />
        </form>
        
        
    </div>
    
    
    <%@include file="footer.jspf" %>
    
    
</div>
