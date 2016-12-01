<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%-- 1) Page directive : import --%>
 <%@ page import="java.util.Date" %>
 <%-- 2) Page directive : info --%>
 <%@ page info="Created by HariHaraKumar.C" %>
 <%-- 3) Page directive : buffer --%>
 <%@ page buffer="16kb" %>
 <%-- 4) Page directive : isThreadSafe; If set to false, the web container will send the new request to jsp only after execution of the previous request --%>
 <%@ page isThreadSafe="false" %>
 <%-- 5) Page directive : errorPage; Redirect to the specified error page when some error occurs in the current page --%>
 <%-- 6) Page directive : isErrorPage; true if the current page is error page else false --%>
 <%@ page isErrorPage="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page Directive JSP</title>
</head>
<body>
	<h4>Welcome to Hari JSP Tutorial : (Page Directives)</h4>
	<p>Today date is <%=new Date() %></p>
</body>
</html>