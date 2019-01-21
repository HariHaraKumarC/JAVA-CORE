package hari.edu.j2ee.servlets;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

/**
 * Created by HariHaraKumar on 24/07/2018.
 */

@WebServlet(description = "Servlet tutorial", urlPatterns = {"/helloServlet"})
public class HelloServlet implements Servlet {

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        System.out.println("Hello Servlet > Inside Init Method");
    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        System.out.println("Hello Servlet > Inside Service Method");
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {
        System.out.println("Hello Servlet > Inside Destroy Method");
    }
}
