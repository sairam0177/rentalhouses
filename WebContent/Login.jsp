<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body background="">
	<div id="header">
		<div id="rental">
			<h1>RentalPortal</h1>
		</div>
		<div id="reg">
			<a href="Registration.jsp" style="color: red"><h2>Registration</h2></a>
			<div id="homepage">
				<a href="HomePage.jsp" style="color: red"><h2>HomePage</h2></a>
			</div>
		</div>
	</div>
	<form name="loginform">
		<div id="log">
			<h2>LogIn</h2>
		</div>
		<div id="logmenu">
			<table>
				<tr>
					<td><label>Email</label></td>
					<td><input type="email" name="email" value="${param.email}"></td>
				</tr>
				<tr>
					<td><label>password</label></td>
					<td><input type="password" name="password" value="${param.password}"></td>
				</tr>
			</table>
		</div>
		<div id="sub">
				<input type="Submit" value="LogIn">
		</div>
	</form>
</body>
</html>