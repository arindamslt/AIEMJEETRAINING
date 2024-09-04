<%@page import="master.dao.OrderDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <jsp:include page="NavClient.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<h2>ORDRED LIST</h2>
<table class="table table-hover">
<thead class="table-dark">
<tr>
<td>ORDER ID</td>
<td>FOOD ID</td>
<td>ORDER DATE</td>
<td>ORDER QUANTITY</td>
</thead>
<%
OrderDao fdao=new OrderDao();
ResultSet rs=fdao.getData();
while(rs.next())
{
%>
<tbody>
<tr>
<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getInt(4) %></td>
</tbody>
<%
}
%>
</table>

</div>
</body>
</html>