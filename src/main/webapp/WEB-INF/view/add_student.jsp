<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student CRUD SpringBoot</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6 mt-5">
				<h1>Add Student</h1>
				<c:if test="${data.status.equals('failed')}">
					<div class="alert alert-danger" role="alert">${data.message}
					</div>
				</c:if>

				<c:if test="${data.status.equals('success')}">
					<div class="alert alert-success" role="alert">
						${data.message}</div>
				</c:if>



				<form action="/save" method="post">



					<div class="mb-3">
						<label for="name" class="form-label"> Student Name</label> 
						<input type="text" class="form-control" name="name" id="name">
					</div>



					<div class="mb-3">
						<label for="mobile" class="form-label"> Mobile</label> 
						<input type="number" class="form-control" name="mobile" id="mobile">
					</div>



					<div class="mb-3">
						<label for="email" class="form-label"> Email</label> 
						<input type="text" class="form-control" name="email" id="email">
					</div>




					<div class="mb-3">
					<label for="gender">Gender</label> 
					<input type="radio" id="gender"	name="gender" value="male">Male 
					<input type="radio"	id="gender" name="gender" value="female">Female
					</div>




				<div class="mb-3">
					<label for="subject">Courses</label> 
					<input type="checkbox"	id="courses" name=" courses" value="html">HTML
					<input	type="checkbox" id=" courses" name="courses" value="css">CSS
	                <input	type="checkbox" id="courses" name="courses" value="bootstrap">Bootstrap
				</div>




				<div class="mb-3">
					<label for="address">Address</label> 
					<select name="address">
						<option value="-1"></option>
						<option>Dhaka</option>
						<option>Dinajpur</option>
						<option>Thakurga</option>
					</select>
				</div>



				<button type="submit" class="btn btn-success">Add</button>



				</form>
				<h5>
					<a href="/" class="link-success">Student List</a>
				</h5>
			</div>
		</div>

	</div>
</body>
</html>