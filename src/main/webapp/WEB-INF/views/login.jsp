<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>" > 
<style type="text/css">
*{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
}
#cb{
	width:20px;
}
</style>
</head>
<body>

<!-- class="form-signin" -->
<form method="POST" action="${pageContext.request.contextPath}/login" >
<!--  class="login-box" -->
<label for="name">Name:</label>
<input name="name" type="text" autofocus="autofocus" placeholder="your name.." required/>

<!--  class="login-box" -->
<label for="password">Password:</label>
<input id="password" name="password" type="password" placeholder="password.." required/>
	<div class="checkbox">
    <label><input id="cb" type="checkbox" class="bg-primary" onclick="myVisibility()"/> Show Password</label>
  </div>
	<button name="login" type="submit">Login</button>
	<span>&nbsp;</span>
    <button name="reset" type="reset">Cancel</button>
	
</form>
<script type="text/javascript">
function myVisibility() {
    var x = document.getElementById("password");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
</script>
</body>
</html>