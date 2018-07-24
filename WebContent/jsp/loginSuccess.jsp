<%--
  Created by IntelliJ IDEA.
  User: harih
  Date: 7/24/2018
  Time: 6:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Success Page</title>
</head>
<body>
    <%
        String userSessionId="";
        Cookie[] cookies=request.getCookies();
        if(cookies !=null) {
            for (Cookie cookie : cookies) {
                if(cookie.getName().equals("userSessionId")){
                    userSessionId=cookie.getValue();
                    break;
                }
            }
        }
        if(userSessionId == null){
            response.sendRedirect("/html/login.html");
        }
    %>
    <h3>Welcome <%=userSessionId%>, Login Successful</h3><br/>
    <form action="logoutServlet" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
