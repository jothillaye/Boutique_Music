<%-- 
    Document   : inscription
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
        <c:set var="pagename" scope="request" value="register.jsp" />
        <title>MusicStore - <fmt:message key="registerTitle"/></title>
        
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
                    span_prenom.innerHTML="<fmt:message key="invalidFirstName"/>";
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
                var myNomTest = new RegExp("^[a-zA-Z]{2,25}$","g"); // 2 à 25 caractères
                   if (myNomTest.test(nom)==false || nom == "" || nom==null)
                    {
                       span_nom.innerHTML="<fmt:message key="invalidName"/>";
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

            function validateNumero()
            {
                var nom = document.forms["register"]["numero"].value;
                var myNomTest = new RegExp("[0-9]$","g"); 
                   if (myNomTest.test(nom)==false || nom == "" || nom==null)
                    {
                       span_numero.innerHTML="<fmt:message key="invalidNumber"/>";
                       document.getElementById("numero").style.borderColor='RED'; 
                       blockSubmit(true);
                    }
                    else
                    {
                        span_numero.innerHTML="";
                        document.getElementById("numero").style.borderColor='Green';
                        blockSubmit(false);
                    }     
            }

        </script>        
</head>

<body onload="blockSubmit(true);">

<!-- #global -->
<div id="global">
    
    <%@include file="header.jspf" %>
    
    
    <div id="contenu">
        
        <form class="register" name="register" method="post" onsubmit="return validateForm()"><!--action="register"-->                 
            <label for="Prenom"><fmt:message key="firstName"/></label> <input type="text" name="prenom" id="prenom" onkeyup="validatePrenom();" /> 
                <span id="span_prenom"> </span><br/>
            <label for="Nom"><fmt:message key="lastName"/></label> <input type="text" name="nom" id="nom" onkeyup="validateNom();"/> 
                <span id="span_nom"> </span><br/>
            <label for="Rue"><fmt:message key="street"/></label> <input type="text" name="rue" id="rue"/> 
                <span id="span_rue"> </span><br/>
            <label for="Numero"><fmt:message key="houseNumber"/></label> <input type="text" name="numero" id="numero" onkeyup="validateNumero();" /> 
                <span id="span_numero"> </span><br/>
            <label for="Localite"><fmt:message key="houseBox"/></label> <input type="text" name="boite" id="boite" /> 
                <span id="span_boite"> </span><br/>
            <label for="Localite"><fmt:message key="locality"/></label> <input type="text" name="localite" id="localite"/> 
                <span id="span_localite"> </span><br/>
            <label for="Code postal"><fmt:message key="postalCode"/></label> <input type="text" name="codepostal" id="codepostal"/> 
                <span id="span_codepostal"> </span><br/>
            <label for="Mail"><fmt:message key="mail"/></label> <input type="text" name="mail" id="mail"/> 
                <span id="span_mail"> </span><br/>
            <label for="Mot de passe"><fmt:message key="password"/></label> <input type="password" name="pw" id="pw"/> 
                <span id="span_pw"> </span><br/>
            <label for="Confirmation"><fmt:message key="passConfirm"/></label> <input type="password" name="pwconfirm" id="pwconfirm"/> 
                <span id="span_pwconfirm"> </span><br/>
                
            <input type="submit" value="<fmt:message key="buttonSubmit"/>" id="submitForm" />
        </form>
        
        
    </div>
    
    
    <%@include file="footer.jspf" %>
    
    
</div>
