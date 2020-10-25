<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Confirmation</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty bike }">
			<h1>Bike ${Confirmation }</h1>
			<table>
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
					<td><img src="${bike.imgURL}"></td>

				</tr>

			</table>
		</c:when>
 	<c:otherwise>
 			<h1>We are sorry. Your entry was not ${Confirmation }</h1>
		<br>
		Please try again
 	</c:otherwise>
	
		
	</c:choose>
	

<br>


	<p>
		<a href="/" class="btn btn-secondary" role="button">Back
			to Home</a>
	</p>
</body>