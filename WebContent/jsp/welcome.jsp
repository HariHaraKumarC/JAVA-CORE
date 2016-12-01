<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome JSP</title>
</head>
<body>
	<h6>Welcome to Hari JSP tutorial</h6>
	<%-- Scriplet Tag Example --%>
	<%-- 
		JSP Life cycle:
		1) Web container translates the JSP file to Servlet java class file
		2) Class loader loads the class file into the memory
		3) Object Initialization using jspinit method();
		4) Web container execute the operation by calling the jspservice method();
		5) Once the job is done, the web container removes the object using jspDestroy method();
		
		Difference between JSP Scriplet tag and Declaration tag:
		1) Any thing put inside the scriplet tag goes inside the jspSPervice method of the translated Servlet class
		2) Any thing put inside the declaration tag goes into the Servlet class as the instance member of the class but not with in the jspService method
	--%>
	<%
		int a=10;
	%>
	<p>Value of a initialized with in Scriplet tag equals <%out.println(a); %> </p>
	<%-- JSP Action tags Forward and param --%>
	<%-- <jsp:forward page="jsp/hello.jsp">
		<jsp:param value="HARIHARAKUMAR" name="userName"/>
	</jsp:forward> --%>
	<%-- JSP Action tags Include and param --%>
	<jsp:include page="hello.jsp">
		<jsp:param value="KumbaKumar" name="userName"/>
	</jsp:include>
	<%-- JSP Action tags usebean --%>
	<jsp:useBean id="student1" scope="page" class="hari.edu.j2ee.beans.StudentBean"></jsp:useBean>
	<%
		student1.setName("HariHaraKumar.C");
		student1.setAge(27);
		student1.setMale(true);
	%>
	<p>Student Name from Student Bean : <b><%=student1.getName() %></b></p>
	<%-- JSP Action tags setProperty and getProperty --%>
	<jsp:useBean id="student2" scope="page" class="hari.edu.j2ee.beans.StudentBean"></jsp:useBean>
	<jsp:setProperty property="name" value="KumbaKumar.C" name="student2"/>
	<jsp:setProperty property="age" value="27" name="student2"/>
	<jsp:setProperty property="male" value="true" name="student2"/>
	<jsp:getProperty property="name" name="student2"/>
	<jsp:getProperty property="age" name="student2"/>
	<jsp:getProperty property="male" name="student2"/>
</body>
</html>