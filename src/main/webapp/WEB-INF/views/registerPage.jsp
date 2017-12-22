<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="welcomePage.jsp"/>
<div class="container">
<h2>Registration Page</h2>
<form action="">
<div class="form-group">
	<label for="name">Name:</label>
	<input id="regname" type="text" class="form-control" placeholder="Yuh hav done it..." autofocus>
</div>
<div class="form-group">
	<label for="place">Place:</label>
	<input id="regplace" type="text" class="form-control">
</div>
<div class="form-group">
	<label for="email">E-mail:</label>
	<input id="regemail" type="email" class="form-control">
</div>
<div class="form-group">
	<label for="name">Password:</label>
	<input id="regpwd" type="password" class="form-control">
</div>
<div class="form-group">
	<label for="cpassword">Confirm-Password:</label>
	<input id="regname" type="password" class="form-control">
</div>
<button class="btn btn-default" type="submit">Submit</button>
<button class="btn btn-default" type="reset">Reset</button>
</form>
</div>
</body>
</html>