<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Bike</title>
</head>
<body>
<div>
	<c:if test="${empty bike}">
	<c:if test="${empty bikes }">No Bikes found</c:if>

 <c:forEach var="bike" items="${bikes}">
  <h5>${bike.brand} (${bike.model})		${bike.wheelSize} cm </h5>
 <img src="${bike.imgURL}" width="115" height="101">
  <p>${bike.description}<br> 
  	</p>
  			<form action="getNewBikeInfo.do" method="GET">
			<button type="submit" name="bid" value="${bike.id }">Update
				Bike Information</button>
		</form>
		<form action="deleteBike.do" method="GET">
			<button type="submit" name="bid" value="${bike.id }">Delete
				Bike</button>
		</form>
   </c:forEach>
			</c:if>
	<c:if test="${!empty bike}">
  <h5>${bike.brand} (${bike.model})		${bike.wheelSize} cm </h5>
  <img src="${bike.imgURL}" width="115" height="101">
  <p>${bike.description}<br> 
  	</p>
  			<form action="getNewBikeInfo.do" method="GET">
			<button type="submit" name="bid" value="${bike.id }">Update
				Bike Information</button>
		</form>
		<form action="deleteBike.do" method="GET">
			<button type="submit" name="bid" value="${bike.id }">Delete
				Bike</button>
		</form>
			</c:if>
  	<a href="/" class="btn btn-secondary" role="button">Back
			to Home</a>
			<h6>Your Search contained ${count} results</h6>
</div>
</body>
</html>