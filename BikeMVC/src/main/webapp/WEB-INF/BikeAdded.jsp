<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add New Film</title>
</head>
<h1>Add New Bike
</h1>
<form:form action="addNewBike.do" method="POST" modelAttribute="bike">
	<form:label path="brand">Brand:</form:label><br>
	<form:input class="input" path="brand" placeholder="Enter the Brand:"/>
	<br>
	<form:label path="model">Model:</form:label><br>
	<form:input class="input" path="model" placeholder="Enter the Model:"/>
	<br>
	<form:label path="description">Description:</form:label><br>
	<form:input class="input" path="description" placeholder="Enter the Description:"/>
	<br>
	<form:label path="barType">Handlebar Type:</form:label><br>
	<form:input class="input" path="barType" placeholder="Enter the Handlebar Type:"/>
	<br>
	<form:label path="wheelSize">Wheel Size:</form:label><br>
	<form:input class="input" path="wheelSize" placeholder="Enter the Wheel Size:"/>
		<br>
	<form:label path="rimWidth">Rim Width:</form:label><br>
	<form:input class="input" path="rimWidth" placeholder="Enter the Rim Width:"/>
	<br>
	<form:label path="suspType">Suspension Type:</form:label><br>
	<form:input class="input" path="suspType" placeholder="Enter the Suspension Type:"/>
	<br>
	<form:label path="drivenG">Driven Gear Size:</form:label><br>
	<form:input class="input" path="drivenG" placeholder="Enter the Driven Gear Size:"/>
	<br>
	<form:label path="drivingG">Driving Gear Size:</form:label><br>
	<form:input class="input" path="drivingG" placeholder="Enter the Driving Gear Size:"/>
	<br>
	<form:label path="gender">Gender:</form:label><br>
	 <form:select path="gender">
				<option value="MEN">Men's</option>
				<option value="WOMEN">Women's</option>
				<option value="BOY">Boy's</option>
				<option value="GIRL">Girl's</option>
				<option value="UNISEX">Unisex</option>
							</form:select>
				
	<br>
		<form:label path="imgURL">Image:</form:label><br>
	<form:input class="input" path="imgURL" placeholder="Enter the image url:"/>
	<br>
	
	<input class="submit" type="submit" value="Submit"/>
</form:form>
<form action="addNewBike.do" method="POST">
</form>
	 



	<p>
		<a href="/" class="btn btn-secondary" role="button">Back
			to Home</a>
	</p>
</body>
</html>