<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>House Details</title>
<link rel="stylesheet" href="home.css">
</head>
<body>
<div id="addhousehead">
<center>
<form action="addhouserental" method="post" >
<div id="addhousemenu">
<h1>AddHouseRental</h1>
</div>
<table>
<tr>
<td><label>HouseType</label></td>
<td><select name="house">
  <option value="noun">select</option>
  <option value="1BHK">1BHK</option>
  <option value="2BHK">2BHK</option>
  <option value="3BHK">3BHK</option>
</select></td>
</tr>
<tr>
<td><label>SquareFeet</label></td>
<td><input type="text" name="squareFeet"></td>
<td><span style="color:red">${errorMessages.squareFeeterror}</span></td>
</tr>
<tr>
<td><label>RentalCost</label></td>
<td><input type="text" name="rentalCost"></td>
<td><span style="color:red">${errorMessages.rentalCosterror}</span></td>
</tr>
<tr>
<td><label>ParkingAvaliable</label></td>
<td><input type="text" name="parkingAvaliable"></td>
<td><span style="color:red">${errorMessages.parkingAvaliableerror}</span></td>
</tr>
<tr>
<td><label>Garden</label></td>
<td><input type="text" name="garden"></td>
<td><span style="color:red">${errorMessages.gardenerror}</span></td>
</tr>
<tr>
<td><label>Address</label></td>
<td><textarea name="address" rows="5" cols="50"></textarea></td>
<td><span style="color:red">${errorMessages.addresserror}</span></td>
</tr>
</table>
<div id="addhousesub">
<input type="submit" value="submit">
</div>
</form>
</center>
</div>
</body>
</html>