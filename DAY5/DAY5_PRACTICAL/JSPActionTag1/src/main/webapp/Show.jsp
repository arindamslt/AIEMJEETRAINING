<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="Img1.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 String uname=request.getParameter("uname");
 String pass=request.getParameter("pass");
%>
<div style="text-align:center;">
<h2>USERNAME:<%=uname %></h2>
<p>
<h2>PASSWORD:<%=pass %></h2>
</div>
</body>
</html>