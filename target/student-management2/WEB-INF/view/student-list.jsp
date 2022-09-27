
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Yukan'na senshi (brave warrior)</title>

<link rel="stylesheet" type="text/css" href="/student-management2/URLToReachResourcesFolder/CSS/my-style-sheet.css">

</head>
<body class="myfonts">
<h1 align="Center">INDIA</h1>

	<div align="center">
	
	<form action="showAddStudent" >
	
	<input type="submit" value="ADD" class="myButtons">
	
	</form>
		<table border="1">
			<thead>
				<tr>
					<td>id</td>
					<td>name</td>
					<td>mobile</td>
					<td>country</td>
				</tr>
			</thead>
			
			<c:forEach var="student" items="${students}">
				<tr>
					<td>${student.id}</td>
					<td>${student.name}</td>
					<td>${student.moblie}</td>
					<td>${student.country}</td>
					<td><a href="/student-management2/updateStudent?userId=${student.id }">Update</a></td>
				<td><a href="/student-management2/deleteStudent?userId=${student.id }" onclick="if(!(confirm('Are you sure you want to delete this student ?')))return false">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		
	 <img alt="fake students photo" src="/student-management2/URLToReachResourcesFolder/Images/image.png">
	
	
	</div>
	
</body>
</html>




