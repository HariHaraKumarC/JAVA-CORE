<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--Tag Lib directive for JSTL Core --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--Tag Lib directive for JSTL Function --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello JSTL Function Page</title>
</head>
<body>
	<c:set var="dummyString1" value="Welcome to Hari JSTL Tutorial"></c:set>
	<c:set var="dummyString2" value="Hello JSTL       "></c:set>
	<c:set var="dummyString3" value="Welcome@to@JSTL@world"></c:set>
	<c:choose>
		<c:when test="${fn:contains(dummyString1,'TUTORIAL')}">
			<p>Keyword Tutorial found </p>
		</c:when>
		<c:otherwise>
			<p>Keyword Tutorial not found</p>
		</c:otherwise>
	</c:choose>
	<c:if test="${fn:containsIgnoreCase(dummyString1,'TUTORIAL')}">
		<p>Keyword Tutorial found </p>
	</c:if>
	<p><c:out value="${fn:endsWith(dummyString1,'TUTORIAL')}"/></p>
	<p><c:out value="${fn:startsWith(dummyString1,'Welcome')}"/></p>
	<p><c:out value="${fn:escapeXml(dummyString1)}"/></p>
	<p><c:out value="${dummyString1}"/></p>
	<p><c:out value="${fn:indexOf(dummyString1,'JSTL') }"/></p>
	<p><c:out value="${fn:trim(dummyString2) }"/></p>
	<p><c:out value="${fn:trim(dummyString2) }"/></p>
	<c:set var="dummyString4" value="${fn:split(dummyString3,'@') }"/>
	<c:forEach var="i" begin="0" end="${fn:length(dummyString4)}">
		<p><c:out value="${dummyString4[i]}"/></p>
	</c:forEach>
	<c:set var="dummyString5" value="${fn:join(dummyString4,' ')}"/>
	<p><c:out value="${dummyString5}"/></p>
	<p><c:out value="${fn:toLowerCase(dummyString5)}"/></p>
	<p><c:out value="${fn:toUpperCase(dummyString5)}"/></p>
	<p><c:out value="${fn:substring(dummyString5,0,10)}"/></p>
	<p><c:out value="${fn:substringAfter(dummyString5,'to')}"/></p>
	<p><c:out value="${fn:substringBefore(dummyString5,'to')}"/></p>
	<p><c:out value="${fn:replace(dummyString5,'world','function')}"/></p>
</body>
</html>