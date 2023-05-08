<%-- 
    Document   : admin
    Created on : May 8, 2023, 1:29:54 PM
    Author     : Ahmed Iftekher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">Course Management System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Admin Dashboard</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container my-5">
    <div class="row">
        <div class="col-12">
            <h1>Admin Dashboard</h1>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-12">
            <h2>Existing Courses</h2>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Course Name</th>
                    <th>Teacher Name</th>
                    <th>Details</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <% Class.forName("com.mysql.jdbc.Driver"); %>
                <% Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/course_management_system","root",""); %>
                <% Statement stmt=con.createStatement(); %>
                <% ResultSet rs=stmt.executeQuery("SELECT * FROM courses"); %>
                <% while (rs.next()) { %>
                    <tr>
                        <td><%= rs.getString("course_name") %></td>
                        <td><%= rs.getString("teacher_name") %></td>
                        <td><%= rs.getString("details") %></td>
                        <td><a href="delete_course.jsp?id=<%= rs.getString("id") %>" class="btn btn-danger">Delete</a></td>
                    </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-12">
            <h2>Add New Course</h2>
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addCourseModal">
                Add Course
            </button>
        </div>
    </div>
</div>
                
                <!-- Add Course Modal -->
<div class="modal fade" id="addCourseModal" tabindex="-1" role="dialog" aria-labelledby="addCourseModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addCourseModalLabel">Add Course</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="addCourseForm" method="post" action="addCourse.jsp">
          <div class="form-group">
            <label for="courseName">Course Name</label>
            <input type="text" class="form-control" id="courseName" name="courseName" required>
          </div>
          <div class="form-group">
            <label for="teacherUsername">Teacher's Username</label>
            <input type="text" class="form-control" id="teacherUsername" name="teacherUsername" required>
            <div id="teacherList"></div>
          </div>
          <div class="form-group">
            <label for="courseDetails">Course Details</label>
            <textarea class="form-control" id="courseDetails" name="courseDetails" rows="3" required></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Add Course</button>
        </form>
      </div>
    </div>
  </div>
</div>

<script>
  // Suggest Teacher's Username from Existing List
  $(document).ready(function() {
    $('#teacherUsername').keyup(function() {
      var query = $(this).val();
      if (query !== '') {
        $.ajax({
          url: 'getTeachers.jsp',
          method: 'POST',
          data: {query:query},
          success: function(data) {
            $('#teacherList').fadeIn();
            $('#teacherList').html(data);
          }
        });
      } else {
        $('#teacherList').fadeOut();
        $('#teacherList').html('');
      }
    });

    $(document).on('click', '.teacher', function() {
      $('#teacherUsername').val($(this).text());
      $('#teacherList').fadeOut();
    });
  });
</script>
    </body>
</html>
