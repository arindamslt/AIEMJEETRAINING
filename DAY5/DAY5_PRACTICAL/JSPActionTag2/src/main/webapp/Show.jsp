<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<%
String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
int pqty=Integer.parseInt(request.getParameter("pqty"));
double price=Double.parseDouble(request.getParameter("price"));
String compname=request.getParameter("compnm");
%>
<div>
<h2 style="background-color:black;color:white;text-align:center;">PRODUCT REPORT</h2>
<table class="table table-hover" >
<thead class="table-dark">
<tr>
<td>PRODUCT ID</td>
<td>PRODUCT NAME</td>
<td>QUANTITY</td>
<td>PRICE</td>
<td>COMPANY NAME</td>
</tr>
</thead>
<tbody>
<tr>
<td><%=pid %></td>
<td><%=pname %></td>
<td><%=pqty %></td>
<td><%=price %></td>
<td><%=compname %></td>
</tr>
</tbody>
</table>
</div>
</body>
</html>