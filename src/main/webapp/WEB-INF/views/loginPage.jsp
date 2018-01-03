<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div>
<br>
<br>
<br>
<br>
<br>
</div>
<div class="container">
<div class=" col-md-4">
<form:form modelAttribute="user" method="POST" action="loggedIn">
<div class="form-group">
<label for="logname">Name:</label>
<form:input path="name" id="logname" class="form-control" autofocus="autofocus"/>
</div>
<div class="form-group">
<label for="logpassword">Password:</label>
<form:input path="password" id="logpassword" class="form-control"/>
</div>
<div>
    <button id="login" name="login" type="submit">Login</button>
</div>
</form:form>
</div>
</div>
</body>
</html>