package hari.edu.j2ee.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloHttpServlet
 */
@WebServlet(description = "Http Servlet Tutorial", urlPatterns = { "/helloHttpServlet" }, initParams = {@WebInitParam(name = "web_init_param_1_name", value = "web_init_param_1_value")} )
public class HelloHttpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init() throws ServletException{
		System.out.println("Hello Http Servlet > Inside Init Method");
		String common_servlet_context_param1_value=getServletContext().getInitParameter("common_servlet_context_param1");
		System.out.println("Hello Http Servlet > Common Servlet Context Param 1 Value > "+ common_servlet_context_param1_value);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("Hello Http Servlet > Inside do Get Method");
		String servlet_config_web_init_param_1_value=getServletConfig().getInitParameter("web_init_param_1_name");
		System.out.println("Hello Http Servlet > Servlet Config Web Init Param 1 Value > "+ servlet_config_web_init_param_1_value);
		PrintWriter pageWriter=response.getWriter();
		pageWriter.write("<b>Hari welcomes you all to the J2EE tutorial </b>");
	}

}
