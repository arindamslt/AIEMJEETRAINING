<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div >
	<form action="ProductController.jsp" method="post" style="width:30%;margin:100px auto;">
		<h2>PRODUCT DETAILS FORM</h2>
	<input type="text" class="form-control" placeholder="ENTER THE PRODUCT ID" name="pid">
	<input type="text" class="form-control" placeholder="ENTER THE PRODUCT NAME" name="pname">
	<input type="text" class="form-control" placeholder="ENTER THE PRODUCT QUANTITY" name="pqty">
	<input type="text" class="form-control" placeholder="ENTER THE PRODUCT PRICE" name="price">
	<input type="submit" class="btn btn-outline-dark" value="PURCHASE">
	</form>
</div>
</body>
</html>