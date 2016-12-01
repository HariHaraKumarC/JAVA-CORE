package hari.edu.j2ee.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DummyCalcServlet
 */
@WebServlet(description = "Dummy Calculator Servlet", urlPatterns = { "/DummyCalcServlet" })
public class DummyCalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String inp1=request.getParameter("inp1");
		String inp2=request.getParameter("inp2");
		int param1=0, param2=0;
		if(inp1 != null){
			param1=Integer.parseInt(inp1);
		}
		if(inp2 != null){
			param2=Integer.parseInt(inp2);
		}
		int result=param1+param2;
		PrintWriter pageWriter=response.getWriter();
		pageWriter.write("Addition Result of <b>"+ param1 + "</b> and <b>" + param2 + "</b> is <b>" + result + "</b>" );
	}

}
