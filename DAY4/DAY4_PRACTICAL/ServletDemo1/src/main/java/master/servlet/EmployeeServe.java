package master.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmployeeServe
 */
@WebServlet("/EmployeeServe")
public class EmployeeServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	/*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String eid=request.getParameter("eid");
		String ename=request.getParameter("ename");
		String edesig=request.getParameter("edesig");
		String edept=request.getParameter("edept");
		PrintWriter out=response.getWriter();
		out.println("EMPLOYEE ID:"+eid);
		out.println("<p>");
		out.println("EMPLOYEE NAME:"+ename);
		out.println("<p>");
		out.println("EMPLOYEE DESIGNATION:"+edesig);
		out.println("<p>");
		out.println("DEPARTMENT:"+edept);
	}*/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String eid=request.getParameter("eid");
		String ename=request.getParameter("ename");
		String edesig=request.getParameter("edesig");
		String edept=request.getParameter("edept");
		PrintWriter out=response.getWriter();
		out.println("EMPLOYEE ID:"+eid);
		out.println("<p>");
		out.println("EMPLOYEE NAME:"+ename);
		out.println("<p>");
		out.println("EMPLOYEE DESIGNATION:"+edesig);
		out.println("<p>");
		out.println("DEPARTMENT:"+edept);
	}
}
