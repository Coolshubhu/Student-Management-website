
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>YUKAN'NA SENSHI (BRAVE WARRIOR)</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="/student-management2/URLToReachResourcesFolder/CSS/my-style-sheet.css">

</head>
<body>
<div align="center">>
	<h1 align="Center" class="font-weight-bold">BRAVE WARRIOR STUDENT PORTAL </h1>



		<form action="showAddStudent">

			<input type="submit" value="ADD"  class="btn btn-outline-success">

		</form>
		<table border="1"   class="table table-striped table-dark">
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
					<td><a
						href="/student-management2/updateStudent?userId=${student.id }">Update</a></td>
					<td><a
						href="/student-management2/deleteStudent?userId=${student.id }"
						onclick="if(!(confirm('Are you sure you want to delete this student ?')))return false">Delete</a></td>
				</tr>
			</c:forEach>
		</table>

		

	</div>

</body>
</html>




