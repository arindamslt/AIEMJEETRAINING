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
<div >
	<form action="Third.jsp" method="post" style="width:30%;margin:100px auto;">
		<h2>LOGIN FORM</h2>
	<input type="text" class="form-control" placeholder="ENTER THE USERNAME" name="uname">
	<input type="password" class="form-control" placeholder="ENTER THE PASSWORD" name="pass">
	
	<input type="submit" class="btn btn-outline-dark" value="LOGIN">
	</form>
</div>
</body>
</html>