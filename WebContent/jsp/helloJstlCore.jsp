<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%--Tag Lib directive for JSTL Core --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello JSTL Core Page</title>
</head>
<body>
	<h5 align="center">JSTL Tutorial</h5>
	<!-- JSTL Core Tag : c out ; Similar one to the JSP expression tag-->
	<p><c:out value="${'Welcome to Kumban JSTL Tutorial'}"></c:out></p>
	  <!-- JSTL Core Tag : c import; Similar one to the JSP include tag --> 
	<c:import url="hello.jsp">
		<c:param name="userName" value="KumbaKumar.C"></c:param>
	</c:import>
	<!-- JSTL Core Tag : c set; c remove  -->
	<c:set var="dummyVariable1" scope="page" value="${'Kumban'}" ></c:set>
	<p><c:out value="${dummyVariable1}"></c:out></p> 
	<c:remove var="dummyVariable1"/>  
	<!-- JSTL Core Tag: c catch -->  
	<c:catch var="excep1">
		<% int standard=0; %>
	</c:catch>
	<!-- JSTL Core Tag: c if -->
	<c:if test="${excep1 != null}">
		<p> Exception occured: <b>${excep1} </b></p>
	</c:if>
	<!-- JSTL Core Tag: c choose; when; otherwise -->
	<c:choose>
		<c:when test="${standard > 10 }">
			<p>Mr Kumban is a higher secondary school student</p>
		</c:when>
		<c:when test="${standard < 10 and standard > 1}">
			<p>Mr Kumban is a secondary school student</p>
		</c:when>
		<c:otherwise>
			<p>Mr Kumban is a elementary school student</p>
		</c:otherwise>
	</c:choose>
	<!-- JSTL Core Tag: c forEach-->
	<p>Classes in the school:</p>
	<c:forEach var="i" begin="1" end="12">
		<p>Class <b>${i}</b> </p>
	</c:forEach>
	<!-- JSTL Core Tag: c forTokens-->
	<p>Students in the class:</p>
	<c:forTokens items="Kumban,Hari,Kumar" delims="," var="student">
		<p>${student}</p>
	</c:forTokens>
	<!-- JSTL Core Tag: c redirect-->
	<%-- <c:redirect url="hello.jsp">
		<c:param name="userName" value="Usha"/>
	</c:redirect> --%>
</body>
</html>