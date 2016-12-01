<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--Tag Lib directive for JSTL Core --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--Tag Lib directive for JSTL Function --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--Tag Lib directive for JSTL Formatting --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Formatting Tutorial Page</title>
</head>
<body>
	<c:set var="dummyString1" value="200.10"></c:set>
	<c:set var="currentDate" value="<%=new java.util.Date() %>"></c:set>
	<fmt:parseNumber var="dummyFloat1" type="number" value="${dummyString1}"></fmt:parseNumber>
	<p><c:out value="${dummyFloat1}"/></p>
	<fmt:parseNumber var="dummyInt1" type="number" integerOnly="true" value="${dummyString1}"></fmt:parseNumber>
	<p><c:out value="${dummyInt1}"/></p>
	<fmt:formatDate var= "formattedDate" pattern="yyyy-MM-dd" value="${currentDate}"></fmt:formatDate>
	<p><c:out value="${formattedDate}"/></p>
	<fmt:formatNumber type="currency" value="${dummyString1}" var="currencyFormat" currencyCode="INR" currencySymbol="Rs"></fmt:formatNumber>
	<p><c:out value="${currencyFormat}"/></p>
</body>
</html>