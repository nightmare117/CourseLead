<%-- 
    Document   : teacher
    Created on : May 9, 2023, 3:06:36 AM
    Author     : Ahmed Iftekher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Teacher Page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/teacher.css" type="text/css">
</head>
<body>

<!--	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<a class="navbar-brand" href="#">CourseLead</a>
	</nav>-->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<a class="navbar-brand" href="#">CourseLead</a>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
					Username
				</a>
				<div class="dropdown-menu">
					<a class="dropdown-item cursor-pointer" href="#"  data-toggle="modal" data-target="#profileModal">Profile</a>
					<a class="dropdown-item" href="#">Logout</a>
				</div>
			</li>
		</ul>
	</nav>

	<div class="teacherBack container mt-5">
		<h2>My Courses</h2>
		<hr>
		
		<div class="row">
			<div class="col-md-4 mb-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Course Name</h5>
						<p class="card-text">Course Code: XYZ123</p>
						<button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#courseDetailsModal">Details</button>
					</div>
				</div>
			</div>
		</div>
		
	</div>

	<!-- Course Details Modal -->
	<div class="modal fade" id="courseDetailsModal" tabindex="-1" role="dialog" aria-labelledby="courseDetailsModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="courseDetailsModalLabel">Course Details</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h4>Course Name: Course Name</h4>
					<p>Course Code: XYZ123</p>
					<p>Course Details: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet vestibulum quam. Maecenas vel metus et nisl bibendum auctor. Sed id justo eget risus ultricies convallis. Nam hendrerit nibh vitae enim pellentesque, a convallis nibh sollicitudin. </p>
					
					<h4>Enrolled Students:</h4>
					<ul>
						<li>Student A</li>
						<li>Student B</li>
						<li>Student C</li>
					</ul>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
        
        <!-- Profile Modal -->
<div class="modal fade" id="profileModal" tabindex="-1" role="dialog" aria-labelledby="profileModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="profileModalLabel">Profile Information</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<h4>Full Name:</h4>
				<p>John Doe</p>
				
				<h4>Designation:</h4>
				<p>Teacher</p>
				
				<h4>Username:</h4>
				<p>johndoe123</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

</body>
</html>
