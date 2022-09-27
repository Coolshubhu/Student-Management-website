<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" type="text/css"
	href="/student-management2/URLToReachResourcesFolder/CSS/my-style-sheet.css">

<link rel="stylesheet" type="text/css"
	href="/student-management2/URLToReachResourcesFolder/CSS/add-student.css">

</head>
<body >


	<div align="center">

		<h1>Add Student</h1>
		<form:form action="save-student" modelAttribute="student"
			method="POST">

			<form:hidden path="id" />


			<label>Name:</label>
			<form:input path="name" />

			<br />

			<label>mobile:</label>
			<form:input path="mobile" />

			<br />

			<label>country:</label>
			<form:input path="country" />

			<br />

			<input type="submit" value="Submit" >




		</form:form>
	</div>



</body>
</html>