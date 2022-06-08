<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>Add Notes</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Writes notes here</h1>


		<form action="SaveServlet" method="post" class="">
			<div class="form-group  ">
				<label for="title">Artist Name</label> <input type="text" name="title"
					required class="form-control col-md-6" id="title " placeholder="Enter Notes">
			</div>
			<div class="form-group ">
				<label for="birthday" >Dob:</label> <input type="date"
					id="birthday" name="birthday">
			</div>

			<div class="form-group">
				<label for="content">Bio</label>
				<textarea id="content" name="content" required class="form-control col-md-6"
					 placeholder="Enter details upto 1500"></textarea>


			</div>
			<div class="text-left">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>

		</form>


	</div>
	<br>
	
	

</body>
</html>