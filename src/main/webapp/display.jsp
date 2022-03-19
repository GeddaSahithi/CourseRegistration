<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.courseregister.Model.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
	<h1 align="center">Registration List</h1>
<a href="index.jsp" class="btn btn-primary stretched-line" style="float: right;">Register new user</a><br>
	<div align="center" class="col-sm-8">
		<table class="table table-responsive table-bordered" style="width:80%" align="right">
			<tr>
				<th style="width:50%">Name</th>
				<th style="width:70%">Course</th>
				<th style="width:100%">Fee</th>
			</tr>
			<%ArrayList <Student> studs = (ArrayList<Student>)request.getAttribute("list");
			  for(Student s : studs){%>
			<tr>
				<td><%= s.getName()%></td>
				<td><%=s.getCourse()%></td>
				<td><%=s.getFee()%></td>
				<%} %>
			</tr>
		</table>
	</div>
</body>
</html>