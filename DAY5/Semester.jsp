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
	<form action="Semester.jsp" method="post" style="width:30%;margin:100px auto;">
		<h2>SEMESTER DETAILS</h2>
	   CHOOSE SEM<select name="sem" class="custom-select">
	   <option value="I">I</option>
	    <option value="II">II</option>
	    <option value="III">III</option>
	    <option value="IV">IV</option>
	    <option value="V">V</option>
	    <option value="VI">VI</option>
	    <option value="VII">VII</option>
	    <option value="VIII">VIII</option>
	   </select>
	  CHOOSE YEAR<select name="yr" class="custom-select">
	   <option value="I">I</option>
	    <option value="II">II</option>
	    <option value="III">III</option>
	    <option value="IV">IV</option>
	  	   </select>
	   CHOOSE DEPARTMENT<select name="sdept" class="custom-select">
	   <option value="CSE">CSE</option>
	    <option value="ECE">ECE</option>
	    <option value="IT">IT</option>
	    <option value="CIVIL">CIVIL</option>
	  	   </select>
		
	<input type="submit" class="btn btn-outline-dark" value="CONTINUE">
	</form>
</div>
</body>
</html>