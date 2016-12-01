<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello JSP</title>
</head>
<body>
	<%-- <%String param1=request.getParameter("userName");%> --%>
	<%-- <h4>Welcome <%=param1 %><b></b></h4> --%>
	<h4>Welcome <b>${param.userName}</b></h4>
</body>
</html>