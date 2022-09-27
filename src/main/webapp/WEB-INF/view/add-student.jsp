<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BRAVE WARRIOR STUDENT</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css"
	href="/student-management2/URLToReachResourcesFolder/CSS/my-style-sheet.css">

<link rel="stylesheet" type="text/css"
	href="/student-management2/URLToReachResourcesFolder/CSS/add-student.css">

</head>
<body>


	<div align="center">

		<h1 >Add Student</h1>
		<form:form action="save-student" modelAttribute="student"
			method="POST">

			<form:hidden path="id" />


			<label class="card text-white bg-secondary mb-3" style="max-width: 18rem;">Name:</label>
			<form:input path="name" />


			<br />

			<label class="card text-white bg-secondary mb-3" style="max-width: 18rem;" >mobile:</label>
			<form:input path="mobile" />


			<br />

			<label class="card text-white bg-secondary mb-3" style="max-width: 18rem;">country:</label>
			<form:input path="country" />


			<br />

			<input type="submit" value="Submit" class="btn btn-warning">




		</form:form>
	</div>



</body>
</html>