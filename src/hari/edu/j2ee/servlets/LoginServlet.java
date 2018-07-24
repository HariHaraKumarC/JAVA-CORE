package hari.edu.j2ee.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by harih on 7/24/2018.
 */
@WebServlet(description = "Login Servlet",urlPatterns = {"/html/loginServlet"})
public class LoginServlet extends HttpServlet {
    private static final String SAMPLE_USER_ID="admin";
    private static final String SAMPLE_PASSWORD="admin";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reqUserId=request.getParameter("userId");
        String reqPassword=request.getParameter("password");
        if(reqUserId.equalsIgnoreCase(SAMPLE_USER_ID) && reqPassword.equalsIgnoreCase(SAMPLE_PASSWORD)){
            String redirectTo=request.getContextPath()+"/jsp/loginSuccess.jsp";
            //Cookie Creation
            Cookie loginCookie=new Cookie("userSessionId",reqUserId);
            loginCookie.setMaxAge(30*60);
            loginCookie.setPath(redirectTo); //Cookie path need to be set as the path differs.
            response.addCookie(loginCookie);
            response.sendRedirect(redirectTo);
        }else{
            RequestDispatcher requestDispatcher=getServletContext().getRequestDispatcher("/html/loginPage.html");
            PrintWriter out=response.getWriter();
            out.println("<font color=red>Either User Id or Password is incorrect</font>");
            requestDispatcher.include(request,response);
        }
    }
}
