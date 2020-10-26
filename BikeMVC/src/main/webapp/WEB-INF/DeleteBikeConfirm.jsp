<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete Film Results</title>
</head>
<body>
	<h1>Delete Film Results</h1>
	<br>
	
	<c:out value="${bid }" />
	<c:if test="${empty bike }">Bike has been deleted</c:if>
<table>
					<tr>
					<td>ID:</td>
					<td>${bike.id }</td>
				</tr>
				<tr>
					<td>Brand:</td>
					<td>${bike.brand }</td>
				</tr>
				<tr>
					<td>Model:</td>
					<td>${bike.model }</td>
				</tr>
				<tr>
					<td>Description:</td>
					<td>${bike.description }</td>

				</tr>
				<tr>
					<td>Handlebar Type:</td>
					<td>${bike.barType }</td>

				</tr>
				<tr>
					<td>Wheel Size:</td>
					<td>${bike.wheelSize }</td>
				</tr>
				<tr>
					<td>Rim Width:</td>
					<td>${bike.rimWidth }</td>

				</tr>
				
				<tr>
					<td>Suspension Type:</td>
					<td>${bike.suspType }</td>

				</tr>
				<tr>
					<td>Gear Ratio:</td>
					<td>${bike.drivenG }:${bike.drivingG }</td>

				</tr>
				<tr>
					<td>Gender:</td>
					<td>${bike.gender }</td>

				</tr>
				<tr>
					<td>Image:</td>
					<td><img src="${bike.imgURL}" width="115" height="101"></td>

				</tr>

			</table>
	<form action="updateBike.do" method="GET">
	<!-- <strong>Please enter film ID to confirm update:</strong>
	<input class="input" min="0" type="number" name="filmId"> -->
		<button type="submit" name="bid" value="${bike.id }">Update
			Bike Information</button>
	</form>
	<br>
	<form action="confirmBikeDelete.do" method="POST">
	<strong>Please enter bike ID to confirm bike deleted:</strong><br>
	<input class="input" type="number" name="bid">
		<button type="submit" name="filmId" value="${bike.id }">Delete
			Bike</button>
	</form>
	<br>

	<br>
	<br>
	<p>
		<a href="/" class="btn btn-secondary" role="button">Back
			to Home</a>
	</p>


</body>
</html>