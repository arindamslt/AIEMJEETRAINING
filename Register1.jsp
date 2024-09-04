<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script>
	function initialize()
	{
		hcid=document.getElementById("hcid");
			hcid.innerText=null;
			var hcname=document.getElementById("hcname");
			hcname.innerText=null;
			var hcphno=document.getElementById("hcphno");
			hcphno.innerText=null;
		
	}
	function validateForm()
	{
		initialize();
		var isValid=true;
		var username=document.f1.username.value; 
		//var cid=document.getElementById("cid");
				alert("USERNAME:"+username);
		console.log(username);
		var pass=document.f1.pass.value;
		alert(pass);
		var phno=document.f1.phno.value;
		
		if(username.length<1)
		{
			alert("Length:"+username.length);
			hcid=document.getElementById("hcid");
			hcid.innerText="USERNAME CAN'T BLANK";
			 isValid=false;
		}
		if(pass.length<4 && pass.length<10)
		{ 
			alert("Length PASSWORD:"+pass.length);
			var hcname=document.getElementById("hcname");
			hcname.innerText="PASSWORD MUST BE BETWEEN FOUR  CHARECTER LONG";
			isValid=false;
		}
		if(phno.length<10)
		{
			alert("Length PHNO:"+phno.length);
			var hcphno=document.getElementById("hcphno");
			hcphno.innerText="PHONE NUMBER MUST BE 10";
			isValid=false;
		}
		return isValid;
	}
</script>
</head>
<body>
<div style="width:30%;margin:100px auto;">
	<form name="f1" action="RegisterServe" onsubmit="return validateForm()">
		<input type="text" class="form-control" name="username" id="username" placeholder="ENTER THE USERNAME">
		<h3 id="hcid" style="color:red"></h3>
		<input type="password" class="form-control" name="pass" id="pass" placeholder="ENTER THE PASSWORD">
		<h3 id="hcname" style="color: red;"></h3>
		<input type="text" class="form-control" name="phno" id="phno" placeholder="ENTER THE  PHONE NO">
		<h3 id="hcphno" style="color:red"></h3>
		<input type="text" class="form-control" name="nm" id="nm" placeholder="ENTER THE  NAME">
		<input type="submit" class="btn btn-outline-secondary" value="REGISTER">
	</form>
</div>
</body>
</html>