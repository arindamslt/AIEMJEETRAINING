package master.dao;
import java.sql.*;

import master.dto.FoodDto;
import master.dto.OrderDto;
import master.utilities.ConnectionFactory;
public class OrderDao {
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String select_sql="select * from order_details";
	private String insert_sql="insert into order_details(fid,oqty) values(?,?)";
	//private String delete_sql="delete from food where fid=?";
	//private String update_sql="update food set fname=?,fprice=? where fid=?";
	public void insertData(OrderDto fdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
		    ps=cn.prepareStatement(insert_sql);
		    ps.setString(1,fdto.getFid());
		    ps.setInt(2,fdto.getOqty());
		   
		    ps.executeUpdate();//insert data
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public ResultSet getData()
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
		    st=cn.createStatement();
		    rs=st.executeQuery(select_sql);
		 	
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
}
