<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="cs" class="master.bean.Customer">
    <jsp:setProperty name="cs" property="cid"></jsp:setProperty>
    <jsp:setProperty name="cs" property="cname"></jsp:setProperty>
    <jsp:setProperty name="cs" property="cphno"></jsp:setProperty>
    </jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
CID:<%=cs.getCid() %>
<p>
NAME:<%=cs.getCname() %>
<p>
PHONE NO:<%=cs.getCphno() %>
</body>
</html>