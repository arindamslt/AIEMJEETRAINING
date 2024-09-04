package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import master.dao.FoodDao;
import master.dao.OrderDao;
import master.dto.FoodDto;
import master.dto.OrderDto;

/**
 * Servlet implementation class OrderServe
 */
@WebServlet("/OrderServe")
public class OrderServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String fid=request.getParameter("fid");
		int oqty=Integer.parseInt(request.getParameter("oqty"));
		OrderDto odto=new OrderDto();
		odto.setFid(fid);
		odto.setOqty(oqty);
	   OrderDao odao=new OrderDao();
	   odao.insertData(odto);
	   response.sendRedirect("Display.jsp");
		//FoodDto fdto=new FoodDto();
		//fdto.setFid(fid);
		//fdto.setFname(fname);
		//fdto.setFprice(fprice);
		//FoodDao fdao=new FoodDao();
		//fdao.insertData(fdto);
		//response.sendRedirect("FoodList.jsp");
	}

}
