<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String rollno=request.getParameter("rollno");
String sname=request.getParameter("sname");
String yrad=request.getParameter("yrad");
String sem=request.getParameter("sem");
String yr=request.getParameter("yr");
String sdept=request.getParameter("sdept");
String phno=request.getParameter("phno");
String email=request.getParameter("email");
String city=request.getParameter("city");
%>
ROLLNO:<%=rollno %>
<p>
NAME:<%=sname %>
<p>
YEAR OF ADMISSION:<%=yrad %>
<p>
SEMESTER:<%=sem %>
<p>
YEAR:<%=yr %>
<p>
DEPARTMENT:<%=sdept %>
<p>
PHONE NO:<%=phno %>
<p>
EMAIL:<%=email %>
<p>
CITY:<%=city %>
<p>
</body>
</html>