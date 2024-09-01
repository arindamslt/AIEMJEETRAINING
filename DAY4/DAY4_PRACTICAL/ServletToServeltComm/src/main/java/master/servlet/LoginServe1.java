package master.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServe1
 */
@WebServlet("/LoginServe1")
public class LoginServe1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String pass=request.getParameter("pass");
		PrintWriter out=response.getWriter();
		if(pass.equals("admin"))
		{
			RequestDispatcher rd=request.getRequestDispatcher("loginServe2");
			rd.forward(request, response);//DATA SEND
		}
		else
		{
			out.println("YOUR PASSWORD IS WRONG");
			RequestDispatcher rd=request.getRequestDispatcher("Login.html");
			rd.include(request, response);
		}
	}

}
