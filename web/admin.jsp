<%-- 
    Document   : admin
    Created on : May 8, 2023, 1:29:54 PM
    Author     : Ahmed Iftekher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Admin Page - CourseLead</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/admin.css" type="text/css">
</head>
<body>
	<div class="adminBack">
            <nav class="navbar navbar-expand-sm bg-light navbar-dark">
                <a class="adminNavTitle navbar-brand" href="#">Course<span class="adminSpan">LEAD</span></a>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item dropdown">
				<a class="navAdmin nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
					Username
				</a>
				<div class="adminDropdown dropdown-menu">
					<a class=" dropdown-item cursor-pointer" href="#"  data-toggle="modal" data-target="#profileModal">Profile</a>
					<a class=" dropdown-item" href="#">Logout</a>
				</div>
			</li>
		</ul>
	</nav>
            <div class="container mt-4">
                <div class="row">
			<div class="col-md-6">
                            <h2 class="adminTitle">All Courses</h2>
			</div>
			<div class="col-md-6 text-right">
				<button class="btn btn-primary" data-toggle="modal" data-target="#addCourseModal">Add Course</button>
			</div>
		</div>
		<div class="row mt-4">
			<div class="col-md-4 mb-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Course 1</h5>
						<h6 class="card-subtitle mb-2 text-muted">CSE101</h6>
						<p class="card-text">Course Teacher: John Doe</p>
						<small class="text-muted">Course details: This is a course about computer science fundamentals.</small>
						<!--<a href="#" class="card-link text-danger">Unenroll</a>-->
					</div>
				</div>
			</div>
                    <div class="col-md-4 mb-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Course 1</h5>
						<h6 class="card-subtitle mb-2 text-muted">CSE101</h6>
						<p class="card-text">Course Teacher: John Doe</p>
						<small class="text-muted">Course details: This is a course about computer science fundamentals.</small>
						<!--<a href="#" class="card-link text-danger">Unenroll</a>-->
					</div>
				</div>
			</div>
			<div class="col-md-4 mb-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Course 1</h5>
						<h6 class="card-subtitle mb-2 text-muted">CSE101</h6>
						<p class="card-text">Course Teacher: John Doe</p>
						<small class="text-muted">Course details: This is a course about computer science fundamentals.</small>
						<!--<a href="#" class="card-link text-danger">Unenroll</a>-->
					</div>
				</div>
			</div>
                        
			</div>
		</div>
	</div>
    <div class="modal fade" id="addCourseModal">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Add Course</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form>
		  <div class="form-group">
		    <label for="courseName">Course Name:</label>
		    <input type="text" class="form-control" id="courseName">
		  </div>
		  <div class="form-group">
		    <label for="courseCode">Course Code:</label>
		    <input type="text" class="form-control" id="courseCode">
		  </div>
		  <div class="form-group">
		    <label for="teacherUsername">Teacher's Username:</label>
		    <input type="text" class="form-control" id="teacherUsername">
		  </div>
		  <div class="form-group">
		    <label for="details">Details:</label>
		    <textarea class="form-control" id="details" rows="3"></textarea>
		  </div>
		</form>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Add Course</button>
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
            </div>		
</body>
</html>






