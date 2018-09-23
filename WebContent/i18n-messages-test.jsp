<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<c:set var="theLocale"
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
scope="session"/>

<fmt:setLocale value="${theLocale}"/>
<fmt:setBundle basename="com.jsptest.jsp.multilingual_mini_app.i18n.resources.mylabels" />

<html>
<head>
<meta charset="ISO-8859-1">
<title>Multilingual mini app</title>
</head>
<body>

<a href="i18n-messages-test.jsp?theLocale=en_US">English</a>
<a href="i18n-messages-test.jsp?theLocale=fr_FR">Français</a>
<a href="i18n-messages-test.jsp?theLocale=es_ES">Espagnol</a>

<hr>
<fmt:message key="label.greeting"/>
<br>
<br>

<fmt:message key="label.firstname"/> <i>Johny</i><br>
<br>
<fmt:message key="label.lastname"/> <i>Deep</i><br>
<br>

<fmt:message key="label.welcome"/>
<br>


</body>
</html>