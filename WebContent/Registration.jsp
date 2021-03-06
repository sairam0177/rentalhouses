<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="home.css">
</head>
<body id="img" background="" width=80px>
<div id="header">
	<div id="rental">
		<h1>Rental Portal</h1>
	</div>
	<div id="log">
		<a href="Login.jsp" style="color: red"><h2>LogIn</h2></a>
	</div>	
</div>

<form action="register" method="post" name="regform" onsubmit=" return validate()">
<div id="Register">
	<h1>Registration</h1>
</div>
<div id="menu">
<table>
	<tr>
		<td><label>Fullname</label>	</td>
		<td>
			<input type="text" name="fullname" value="${param.fullname}" pattern="[a-zA-Z\s]{3,20}">
		</td>
		<td> 
			<span class="error" id="fullnameerror"></span>
		</td>
		<td>
			<span style="color:red">${errorMessages.fullnameerror}</span>
		</td>
	</tr>
	
	<tr>
		<td><label>Email</label></td>
		<td>
			<input type="email" name="email" value="${param.email}" pattern="[a-zA-Z0-9_$#]{1,}+@[a-zA-Z]{2,7}+.[a-z]{3,6}">
		</td>
		<td><span class="error" id="emailerror"></span></td>
		<td><span style="color:red">${errorMessages.emailerror}</span></td>
	</tr>
	
	<tr>
		<td>
			<label>MobileNumber</label>
		</td>
		<td>
			<input type="tel" name="mobile" value="${param.mobile}" pattern="[0-9]{10}">
		</td>
		<td> <span class="error" id="mobileerror"></span></td>
		<td><span style="color:red">${errorMessages.mobileerror}</span></td>
	</tr>
	
	<tr>
		<td>
			<label>Owner</label>
		</td>
		<td>
			<input type="radio" name="owner" value="owner">As Owner</td>
		<td>
			<input type="radio" name="owner" value="tenent" >As Tenent</td>
	</tr>
	
	<tr>
		<td>
			<label>Username</label>
		</td>
		<td>
			<input type="text" name="username" value="${param.username}" pattern="[a-zA-Z\s]{3,20}">
		</td>
		<td> <span class="error" id="usernameerror"></span></td>
		<td><span style="color:red">${errorMessages.usernameerror}</span></td>
	</tr>
	
	<tr>
		<td>
			<label>Password</label>
		</td>
		<td>
			<input type="password" name="password" value="${param.password}" pattern="[a-zA-z0-9@$#]{8,20}">
		</td>
		<td> <span class="error" id="passworderror"></span></td>
		<td><span style="color:red">${errorMessages.passworderror}</span></td>
	</tr>
	
	<tr>
		<td>
			<label>Confirmpassword</label>
		</td>
		<td>
			<input type="password" name="confirmpassword" value="${param.confirmpassword}" pattern="[a-zA-z0-9@$#]{8,20}">
		</td>
		<td> <span class="error" id="confirmpassworderror"></span></td>
		<td><span style="color:red">${errorMessages.confirmpassword}</span></td>
	</tr>				
</table>
	<div id="secondregbutton">
		<input type="submit" value="submit">
	</div>
</div>	
</form>
<script src="validation.js"></script>
</body>
</html>