
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Film</title>
</head>
<body>

	<h2>Update the entry, click submit to save</h2>
	<br>
<form:form action="editBike.do" method="POST" modelAttribute="bike">
	<form:input path="id" value="${bike.id }" type="hidden" />
	<form:label path="brand">Brand:</form:label><br>
	<form:input class="input" path="brand" value="${bike.brand}"/>
	<br>
	<form:label path="model">Model:</form:label><br>
	<form:input class="input" path="model" value="${bike.model} "/>
	<br>
	<form:label path="description">Description:</form:label><br>
	<form:input class="input" path="description" value="${bike.description}"/>
	<br>
	<form:label path="barType">Handlebar Type:</form:label><br>
	<form:input class="input" path="barType" value="${bike.barType  }"/>
	<br>
	<form:label path="wheelSize">Wheel Size:</form:label><br>
	<form:input class="input" path="wheelSize" value="${bike.wheelSize  }"/>
		<br>
	<form:label path="rimWidth">Rim Width:</form:label><br>
	<form:input class="input" path="rimWidth" value="${bike.rimWidth  }"/>
	<br>
	<form:label path="suspType">Suspension Type:</form:label><br>
	<form:input class="input" path="suspType" value="${bike.suspType  }"/>
	<br>
	<form:label path="drivenG">Driven Gear Size:</form:label><br>
	<form:input class="input" path="drivenG" value="${bike.drivenG  }"/>
	<br>
	<form:label path="drivingG">Driving Gear Size:</form:label><br>
	<form:input class="input" path="drivingG" value="${bike.drivingG }"/>
	<br>
	<form:label path="gender">Gender:</form:label><br>
	 <form:select path="gender" value="${bike.gender  }">
				<option value="MEN">Men's</option>
				<option value="WOMEN">Women's</option>
				<option value="BOY">Boy's</option>
				<option value="GIRL">Girl's</option>
				<option value="UNISEX">Unisex</option>
							</form:select>
				
	<br>
		<form:label path="imgURL">Image:</form:label><br>
	<form:input class="input" path="imgURL" value="${bike.imgURL}"/>
	<br>
	<button type="submit" name="bikeToUpdate">Submit</button>

</form:form>
		
		<form action="editBike.do" method="POST">
</form>
		
		<p>
		<a href="/" class="btn btn-secondary" role="button">Back
			to Home</a>
	</p>


</body>
</html>