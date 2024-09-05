package master.dao;
import java.sql.*;

import master.dto.FoodDto;
import master.dto.RegisterDto;
import master.utilities.ConnectionFactory;
public class RegisterDao {
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	//private String select_sql="select * from food";
	private String insert_sql="insert into register values(?,?,?)";
	//private String delete_sql="delete from food where fid=?";
	//private String update_sql="update food set fname=?,fprice=? where fid=?";
	public void insertData(RegisterDto fdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
		    ps=cn.prepareStatement(insert_sql);
		    ps.setString(1,fdto.getUname());
		    ps.setString(2,fdto.getPass());
		    ps.setString(3,fdto.getNm());
		   
		    ps.executeUpdate();//insert data
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public boolean checkLogin(String uname,String pass)
	{
		boolean flag=false;
		String sql="select * from register where uname='"+uname+"' and pass='"+pass+"'";
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
		    st=cn.createStatement();
		    rs=st.executeQuery(sql);
		    if(rs.next())
		    {
		    	flag=true;
		    }
		 	
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		
		return flag;
	}
}
