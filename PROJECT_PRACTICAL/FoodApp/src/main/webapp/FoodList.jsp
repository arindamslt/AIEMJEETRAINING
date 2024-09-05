<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<h2>FOOD LIST</h2>
<table class="table table-hover">
<thead class="table-dark">
<tr>
<td>FOODID</td>
<td>FOOD NAME</td>
<td>PRICE</td>
</thead>
<%
FoodDao fdao=new FoodDao();
ResultSet rs=fdao.getData();
while(rs.next())
{
%>
<tbody>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getDouble(3) %></td>
</tbody>
<%
}
%>
</table>

</div>
</body>
</html>