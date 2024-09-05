package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.FoodDao;
import master.dto.FoodDto;

/**
 * Servlet implementation class FoodDelServe
 */
@WebServlet("/FoodDelServe")
public class FoodDelServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String fid=request.getParameter("fid");
		
	
		FoodDto fdto=new FoodDto();
		fdto.setFid(fid);
		
		FoodDao fdao=new FoodDao();
		//fdao.insertData(fdto);
		fdao.deleteData(fdto);
		//response.sendRedirect("Show.jsp");
		response.sendRedirect("FoodList.jsp");
	}

}
