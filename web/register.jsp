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
            
            

            
            function valider()
            {
                if(validateLocalite()==true && validatePrenom()==true && validateNom()==true && validateNumero()==true && validateRue()==true && validateboite()==true && validateCodePostal()==false && validateMail()==false && validateBoite()==true && validatePw()==true && validateSamePw()==true && validateTel()==true )
                {                        
                        return true;
                }
                else
                {                        
                        return false;
                }
            }
        
            function validatePrenom()
            {           
                var prenom = document.forms["register"]["prenom"].value;
                var myPrenomTest = new RegExp("^[a-zA-Z]{1}[a-zA-Z-]{1,50}$","g"); // 2 à 16 caractères
                if (myPrenomTest.test(prenom)==false || prenom=="" || prenom==null)
                {
                    span_prenom.innerHTML="<fmt:message key="invalidFirstName"/>";
                    document.getElementById("prenom").style.borderColor='Red';
                    
                    return false;
                }
                else
                {
                     span_prenom.innerHTML="";
                     document.getElementById("prenom").style.borderColor='Green';
                     
                     return true;
                }
            }

            function validateNom()
            {
                var nom = document.forms["register"]["nom"].value;
                var myTest = new RegExp("^[a-zA-Z]{1,50}$","g"); // 2 à 25 caractères
                   if (myTest.test(nom)==false || nom == "" || nom==null)
                    {
                       span_nom.innerHTML="<fmt:message key="invalidName"/>";
                       document.getElementById("nom").style.borderColor='RED'; 
                       
                       return false;
                    }
                    else
                    {
                        span_nom.innerHTML="";
                        document.getElementById("nom").style.borderColor='Green';
                        
                        return true;
                    }     
            }

            function validateNumero()
            {
                var numero = document.forms["register"]["numero"].value;
                var myTest = new RegExp("^[0-9]{1,10}$","g"); 
                   if (myTest.test(numero)==false || numero == "" || numero==null)
                    {
                       span_numero.innerHTML="<fmt:message key="invalidNumber"/>";
                       document.getElementById("numero").style.borderColor='RED';                        
                       return false;
                       
                    }
                    else
                    {
                        span_numero.innerHTML="";
                        document.getElementById("numero").style.borderColor='Green';                        
                        return true;
                    }     
            }
            
            
            function validateRue()
            {
                var rue = document.forms["register"]["rue"].value;
                var myTest = new RegExp("^[a-zA-Z0-9]{2,50}","g"); // 2 à 25 caractères
                   if (myTest.test(rue)==false || rue == "" || rue==null)
                    {
                       span_rue.innerHTML="<fmt:message key="invalidStreet"/>";
                       document.getElementById("rue").style.borderColor='RED'; 
                       
                       return false;
                    }
                    else
                    {
                        span_rue.innerHTML="";
                        document.getElementById("rue").style.borderColor='Green';
                        
                        return true;
                    }     
            }
            
            
            function validateBoite()
            {
                var boite = document.forms["register"]["boite"].value;
                var myTest = new RegExp("^[a-zA-Z0-9]{0,15}$","g"); // 2 à 25 caractères
                   if (myTest.test(boite)==false  || boite==null)
                    {
                       span_boite.innerHTML="<fmt:message key="invalidBox"/>";
                       document.getElementById("boite").style.borderColor='RED'; 
                       
                       return false;
                    }
                    else
                    {
                        span_boite.innerHTML="";
                        document.getElementById("boite").style.borderColor='Green';
                        
                        return true;
                    }     
            }
            
            function validateCodePostal()
            {
                var codepostal = document.forms["register"]["codepostal"].value;
                var myTest = new RegExp("^[0-9]{4}$","g"); // 2 à 25 caractères
                   if (myTest.test(codepostal)==false || codepostal == "" || codepostal==null)
                    {
                       
                       span_codepostal.innerHTML="<fmt:message key="invalidPostalCode"/>";
                       document.getElementById("codepostal").style.borderColor='RED'; 
                       
                       return false;
                    }
                    else
                    {
                        span_codepostal.innerHTML="";
                        document.getElementById("codepostal").style.borderColor='Green';
                        
                        return true;
                    }     
            }
            
            
            function validateMail() 
            {
                var email = document.forms["register"]["mail"].value;
                var myTest = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                if (!myTest.test(email)) 
                {
                    span_mail.innerHTML="<fmt:message key="invalidMail"/>";
                    document.getElementById("mail").style.borderColor='RED'; 
                    
                    return false;
                }
                else
                {
                    span_mail.innerHTML="";
                    document.getElementById("mail").style.borderColor='Green';
                    
                    return true;
                }     
                
            }
            
            function validatePw()
            {
                var pw = document.forms["register"]["pw"].value;
                var myTest = /^([a-zA-Z0-9_\.\-]{6,20})+$/;
                 if (myTest.test(pw)==false || pw == "" || pw==null)
                {
                    span_pw.innerHTML="<fmt:message key="invalidPassword"/>";
                    document.getElementById("pw").style.borderColor='RED'; 
                    
                    return false;
                }
                else
                {
                    span_pw.innerHTML="";
                    document.getElementById("pw").style.borderColor='Green';
                    
                    return true;
                }     
            }
            
            function validateSamePw()
            {
                var pw = document.forms["register"]["pw"].value;
                var pwconf = document.forms["register"]["pwconfirm"].value;
                if(pwconf.toString()!=pw.toString())
                {
                        span_pwconfirm.innerHTML="<fmt:message key="invalidPasswordConfirm"/>";
                        document.getElementById("pwconfirm").style.borderColor='RED'; 
                        
                        return false;
                }
                else
                {
                        span_pwconfirm.innerHTML="";
                        document.getElementById("pwconfirm").style.borderColor='Green';
                        
                }
            }
            
            function validateLocalite()
            {
                var loc = document.forms["register"]["localite"].value;
                var myTest = new RegExp("^[a-zA-Z0-9]{2,50}","g"); // 2 à 25 caractères
                   if (myTest.test(loc)==false || loc == "" || loc==null)
                    {
                       
                       span_localite.innerHTML="<fmt:message key="invalidLocalite"/>";
                       document.getElementById("localite").style.borderColor='RED'; 
                       
                       return false;
                    }
                    else
                    {
                        span_localite.innerHTML="";
                        document.getElementById("localite").style.borderColor='Green';
                        
                        return true;
                    }     
            }
            
            function validateTel()
            {
                var tel = document.forms["register"]["tel"].value;
                var myTest = new RegExp("^[.0-9/+//]{8,50}$","g"); // 2 à 25 caractères
                   if (myTest.test(tel)==false || tel == "" || tel==null)
                    {
                       
                       span_tel.innerHTML="<fmt:message key="invalidPhone"/>";
                       document.getElementById("tel").style.borderColor='RED'; 
                       
                       return false;
                    }
                    else
                    {
                        span_tel.innerHTML="";
                        document.getElementById("tel").style.borderColor='Green';
                        
                        return true;
                    }     
            }
        </script>        
</head>

<body>

<!-- #global -->
<div id="global">
    
    <%@include file="header.jspf" %>    
    
    <div id="contenu">         
        <form class="register" name="register" method="post" onsubmit="valider();" action="inscription"><!--action="register"-->                 
            <label for="Prenom"><fmt:message key="firstName"/></label> <input type="text" name="prenom" id="prenom" onkeyup="validatePrenom();" /> 
                <span id="span_prenom"> </span><br/>
            <label for="Nom"><fmt:message key="lastName"/></label> <input type="text" name="nom" id="nom" onkeyup="validateNom();  "/> 
                <span id="span_nom"> </span><br/>
                <label for="Rue"><fmt:message key="street"/></label> <input type="text" name="rue" id="rue"  onkeyup="validateRue();"/> 
                <span id="span_rue"> </span><br/>
            <label for="Numero"><fmt:message key="houseNumber"/></label> <input type="text" name="numero" id="numero" onkeyup="validateNumero();  " /> 
                <span id="span_numero"> </span><br/>
            <label for="Localite"><fmt:message key="houseBox"/></label> <input type="text" name="boite" id="boite" onkeyup="validateBoite();  "/> 
                <span id="span_boite"> </span><br/>
            <label for="Localite"><fmt:message key="locality"/></label> <input type="text" name="localite" id="localite"  onkeyup="validateLocalite();"/> 
                <span id="span_localite"> </span><br/>
           <label for="Code postal"><fmt:message key="postalCode"/></label> <input type="text" name="codepostal" id="codepostal" onkeyup="validateCodePostal();  "/> 
                <span id="span_codepostal"> </span><br/>
            <label for="Mail"><fmt:message key="mail"/></label> <input type="text" name="mail" id="mail" onkeyup="validateMail();  "/> 
                <span id="span_mail"> </span><br/>
                <label for="Tel"><fmt:message key="phone"/></label> <input type="text" name="tel" id="tel" onkeyup="validateTel();"/>
                <span id="span_tel"> </span><br/>        
            <label for="Mot de passe"><fmt:message key="password"/></label> <input type="password" name="pw" id="pw" onkeyup="validatePw();  "/> 
                <span id="span_pw"> </span><br/>
                <label for="Confirmation"><fmt:message key="passConfirm"/></label> <input type="password" name="pwconfirm" id="pwconfirm" onkeyup="validateSamePw(); "/> 
                <span id="span_pwconfirm"> </span><br/>
                <br/>
                <fmt:message key="facult"/><br/>
                
            <input type="submit"  value="<fmt:message key="buttonSubmit"/>" id="submitForm"  />
        </form>
        
        
    </div>
    
    
    <%@include file="footer.jspf" %>
    
    
</div>
