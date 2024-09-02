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
String rollno=request.getParameter("rollno");
String sname=request.getParameter("sname");
String yrad=request.getParameter("yrad");
String sem=request.getParameter("sem");
String yr=request.getParameter("yr");
String sdept=request.getParameter("sdept");
%>
<div >
	<form action="Show.jsp" method="post" style="width:30%;margin:100px auto;">
		<h2>PERSONNEL INFORMATION</h2>
	<input type="text" class="form-control" placeholder="ENTER THE PHONE NO" name="phno">
	<input type="text" class="form-control" placeholder="ENTER THE EMAIL" name="email">
	<input type="text" class="form-control" placeholder="ENTER THE CITY" name="city">
	<input type="hidden" name="rollno" value="<%=rollno %>">
		<input type="hidden" name="sname" value="<%=sname %>">
		<input type="hidden" name="yard" value="<%=yrad %>">
		<input type="hidden" name="sem" value="<%=sem %>">
		<input type="hidden" name="yr" value="<%=yr %>">
		<input type="hidden" name="sdept" value="<%=sdept %>">
	<input type="submit" class="btn btn-outline-dark" value="FINISH">
	</form>
</div>
</body>
</html>