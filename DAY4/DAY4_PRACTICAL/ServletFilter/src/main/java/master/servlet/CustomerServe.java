package master.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CustomerServe
 */
@WebServlet("/CustomerServe")
public class CustomerServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String cid=request.getParameter("cid");
		String cname=request.getParameter("cname");
		String cphno=request.getParameter("cphno");
	
		PrintWriter out=response.getWriter();
		
		out.println("CUSTOMER ID:"+cid);
		out.println("<p>");
		out.println("CUSTOMER NAME:"+cname);
		out.println("<p>");
		out.println("PHONE NUMBER:"+cphno);
		
	}

}
