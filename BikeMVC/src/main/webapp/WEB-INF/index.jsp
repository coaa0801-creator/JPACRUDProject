<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<!-- <h1>This is the Home Page</h1> -->
<form action="SearchKeyword.do" method="GET">
  Keyword Search: <input type="text" name="keyword" placeholder="Search Bike by Keyword"/>
  <input type="submit" value="Search"/><br>
</form>
<form action="getBike.do" method="GET">
  Bike ID: <input type="text" name="bid" placeholder="Search Bike by ID"/>
  <input type="submit" value="Search"/><br>
</form>
<form action="addBike.do">
<input type="submit" value="Add a Bike" />
</form>

<br      />
  <c:forEach var="bike" items="${bikes}">
  ${bike.id}. <a href="getBike.do?bid=${bike.id}">${bike.brand } ${bike.model}</a><br>
 
  
  
  </c:forEach>
  
</body>
</html>