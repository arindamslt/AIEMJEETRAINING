package jdbc;
import java.sql.*;
class JavaMySqlConn
{
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String select_sql="select * from customer_dtls";
	private String insert_sql="insert into customer_dtls values(?,?,?)";
	private String delete_sql="delete from customer_dtls where cid=?";
	private String update_sql="update customer_dtls set cname=?,cphno=? where cid=?";
	public void getData()
	{
		try
		{
			//Class.forName("com.mysql.cj.jdbc.Driver");//REGISETR AND LOAD THE DRIVER
			//cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jeedb","root","arindam");//establish the connection
		   ConnectionFactory con=new ConnectionFactory();
		   cn=con.getConn();
			st=cn.createStatement();//CREATE THE STATEMENT
		    rs=st.executeQuery(select_sql);//EXECUTE QUERY AND STORE DATA INTO RESULTSET
		    while(rs.next())
		    {
		    	//System.out.println(rs.getString(1));
		    	//System.out.println(rs.getString(2));
		    	//System.out.println(rs.getString(3));
		    	System.out.println(rs.getString(1)+"===>"+rs.getString(2)+"===>"+rs.getString(3));
		    }
		}
		/*catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();//check line number where exception occur
		}*/
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void insertData()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");//REGISETR AND LOAD THE DRIVER
			cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jeedb","root","arindam");//establish the connection
		    ps=cn.prepareStatement(insert_sql);
		    ps.setString(1,"C3");
		    ps.setString(2,"RUPAM");
		    ps.setString(3,"348645");
		    ps.executeUpdate();//insert data
		}
		catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();//check line number where exception occur
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void updateData()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");//REGISETR AND LOAD THE DRIVER
			cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jeedb","root","arindam");//establish the connection
		    ps=cn.prepareStatement(update_sql);
		    ps.setString(3,"C1");
		    ps.setString(1,"ROBIN");
		    ps.setString(2,"3409545");
		    ps.executeUpdate();//insert data
		}
		catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();//check line number where exception occur
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void deleteData()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");//REGISETR AND LOAD THE DRIVER
			cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jeedb","root","arindam");//establish the connection
		    ps=cn.prepareStatement(delete_sql);
		    ps.setString(1,"C3");
		    ps.executeUpdate();//insert data
		}
		catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();//check line number where exception occur
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
}
public class TestConnection {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
  JavaMySqlConn jc=new JavaMySqlConn();
  //jc.insertData();
 // jc.deleteData();
  //jc.updateData();
  jc.getData();
	}

}
