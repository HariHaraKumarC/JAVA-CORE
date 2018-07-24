package hari.edu.j2ee.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by harih on 7/24/2018.
 */
@WebServlet(description = "Logout Servlet",urlPatterns = {"/jsp/logoutServlet"})
public class LogoutServlet extends HttpServlet{

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String redirectTo=request.getContextPath()+"/html/loginPage.html";
        Cookie userSessionId=null;
        Cookie[] cookies=request.getCookies();
        if(cookies !=null) {
            for (Cookie cookie : cookies) {
                if(cookie.getName().equalsIgnoreCase("userSessionId")){
                    userSessionId=cookie;
                    break;
                }
            }
        }
        if(userSessionId != null ){
            userSessionId.setMaxAge(0);
            userSessionId.setPath(redirectTo); //Cookie path need to be set as the path differs.
            response.addCookie(userSessionId);
        }
        response.sendRedirect(redirectTo);
    }
}
