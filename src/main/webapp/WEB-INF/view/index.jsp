<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student CRUD SpringBoot</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
	<div class="container">
	<div class="table-responsive">
		
		<h1>Student List</h1>
		<table class="table table-responsive table-hover table-bordered border-dark">
		 <thead class="table-dark">
			<tr>
				<th>Student Id</th>
				<th>Student Name</th>
				<th>Mobile</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Courses</th>
				<th>Address</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="s" items="${data.studentList}">
				<tr>
					<td>${s.id}</td>
					<td>${s.name}</td>
					<td>${s.mobile}</td>
					<td>${s.email}</td>
					<td>${s.gender}</td>
					<td>${s.courses}</td>
					<td>${s.address}</td>
					
					<td>
					<a class="link-primary" href="/edit/${s.id}">Edit</a>&nbsp;&nbsp;|&nbsp;
					<a class="link-danger"  href="/delete/${s.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<h5><a href="/add_student" class="link-success">Add Student</a></h5>
	</div>
</div>
</body>
</html>