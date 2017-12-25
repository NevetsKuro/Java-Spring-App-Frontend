<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<%-- <jsp:include page="welcomePage.jsp"/> --%>
<div class="container">
<h2>Registration Page</h2>
<form:form modelAttribute="user" method="POST" action="saveRegister">
<div class="form-group">
	<label for="name">Name:</label>
	<form:input id="regname" path="name" class="form-control" placeholder="Yuh hav done it..." autofocus/>
</div>
<div class="form-group">
	<label for="email">E-mail:</label>
	<form:input id="regemail" path="email" class="form-control"/>
</div>
<div class="form-group">
	<label for="place">Place:</label>
	<form:input id="regplace" path="place" class="form-control"/>
</div>
<div class="form-group">
	<label for="name">Password:</label>
	<form:input id="regpwd" path="password" class="form-control"/>
</div>
<div class="form-group">
	<label for="cpassword">Confirm-Password:</label>
	<input id="regname" type="password" class="form-control">
</div>
<div>
	<label for="gender">Gender</label>
	<form:radiobutton path="gender" value="M" label="M"/>
	<form:radiobutton path="gender" value="F" label="F"/>
</div>
<button class="btn btn-default" type="submit">Submit</button>
<button class="btn btn-default" type="reset">Reset</button>
</form:form>
</div>
</body>
</html>