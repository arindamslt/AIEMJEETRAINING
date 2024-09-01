<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>ORDER DETAILS INFORMATION</h2>
<%
String oid=request.getParameter("oid");
String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
int pqty=Integer.parseInt(request.getParameter("pqty"));
double price=Double.parseDouble(request.getParameter("price"));
 
%>
ORDERID:<%=oid %>
<p>
PRODUCT ID:<%=pid %>
<p>
PRODUCT NAME:<%=pname %>
<p>
QUANTITY:<%=pqty %>
<p>
PRICE:<%=price %>
<p>
TOTAL PRICE:<%=pqty*price %>
</body>
</html>