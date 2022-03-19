<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
	<h1 align="center">Student Course Registration</h1><br>
	<div class="form" align="center">
		<div class="col-sm-4">
			<form action="register" method="post">
				<div align="left">
					<label class="form-label">Student Name</label>
					<input type="text" class="form-control" placeholder="Student Name" name="aname" id="aname" required>
				</div>
				<div align="left">
					<label class="form-label">Course</label>
					<input type="text" class="form-control" placeholder="Course" name="course" id="course" required>
				</div>
				<div align="left">
					<label class="form-label">Fee</label>
					<input type="text" class="form-control" placeholder="Fee" name="fee" id="fee" required>
				</div><br>
				<div align="left">
					<input type="submit" id="submit" value="Submit" name="submit" class="btn btn-info">
					<input type="reset" id="reset" value="Reset" name="reset" class="btn btn-warning">
				</div>
			</form>
		</div>
	</div>
</body>
</html>