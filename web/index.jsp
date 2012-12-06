<%-- 
    Document   : index
    Created on : 8 nov. 2012, 15:26:25
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
        <c:set var="pagename" scope="request" value="index.jsp" />        
        <title>MusicStore - <fmt:message key="indexTitle"/></title>
    </head>

<body>

<!-- #global -->
<div id="global">

	<!-- #entete -->	
	<%@include file="header.jspf" %>
	<!-- #contenu -->
	<div id="contenu">
		<div id="grid">
			<div class="grid_element">
				<a href="detail.jsp?album=1">
					<img alt="" src="./style/img/pochette/pochette.jpg" width="150px" height="150px" />
				</a>
				<span class="product-name">BluePrint</span>
				<span class="price-box">18$</span>
			</div>
			<div class="grid_element">
				<a href="detail.jsp?album=2">
					<img alt="" src="./style/img/pochette/pochette2.jpg" width="150px" height="150px" />
				</a>
				<span class="product-name">Ray Charles</span>
				<span class="price-box">34$</span>
			</div>
			<div class="grid_element">
				<a href="detail.jsp?album=3">
					<img alt="" src="./style/img/pochette/pochette3.jpg" width="150px" height="150px" />
				</a>
				<span class="product-name">Justine Bieber</span>
				<span class="price-box">.99$</span>
			</div>
			<div class="grid_element">
				<a href="detail.jsp?album=4">
					<img alt="" src="./style/img/pochette/pochette4.jpg" width="150px" height="150px" />
				</a>
				<span class="product-name">Dim Mak</span>
				<span class="price-box">19$</span>
			</div>                    
                        <jsp:include page="/albums"></jsp:include>
                        <c:forEach var="album" items="${requestScope.albums}">
                            <div class="grid_element">
                                    <a href="detail.jsp?album=4">
                                            <img alt="" src="./style/img/pochette/pochette4.jpg" width="150px" height="150px" />
                                    </a>
                                    <span class="product-name">${album}<br />${article.titre}</span>
                                    <span class="price-box">${album.prix}$</span>
                            </div>                           
                        </c:forEach>
            <div class="grid_element">
                <a href="detail.jsp?album=5">
                    <img alt="" src="./style/img/pochette/pochette5.jpg" width="150px" height="150px" />
                </a>
                <span class="product-name">This is It</span>
                <span class="price-box">188$</span>
            </div>
		</div>
 	</div>
	
        <%@include file="footer.jspf" %>

</div>

</body>
</html>
