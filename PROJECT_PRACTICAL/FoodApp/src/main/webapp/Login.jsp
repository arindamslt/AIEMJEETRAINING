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
<div style="width: 30%;margin:100px auto;">
	<form action="LoginServe" method="post">
	<h2>LOGIN FORM</h2>
		<input type="text" class="form-control" name="uname" placeholder="ENTER THE USERNAME">
		<input type="password" class="form-control" name="pass" placeholder="ENTER THE PASSWORD">
	
		<input type="submit" class="btn btn-outline-primary" value="LOGIN">
	</form>
</div>
</body>
</html>