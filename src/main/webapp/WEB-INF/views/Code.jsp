<%-- 

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
<style type="text/css">
*{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
}
#cb{
	width:20px;
}
label{
	color: black;
}

html, body {
  border: 0;
  padding: 0;
  margin: 0;
  height: 100%;
}

body {
  background: tomato;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 16px;
}
form {
  background: white;
  width: 40%;
  box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.7);
  font-family: lato;
  color: #333;
  border-radius: 10px;
}
form input{
	margin-left: 30px;
	padding: 3px;
	border-radius: 5px;
}
form label {
  font-size:20px;
  margin-left: 20px;
  display: inline-block;
  margin-top: 30px;
  margin-bottom: 5px;
  position: relative;
}
form label span {
  color: #FF3838;
  font-size: 2em;
  position: absolute;
  left: 2.3em;
  top: -10px;
}
form button {
  position: relative;
  margin-top: 30px;
  margin-bottom: 30px;
  left: 30%;
  transform: translate(-50%, 0);
  font-family: inherit;
  color: white;
  background: #FF3838;
  outline: none;
  border: none;
  padding: 5px 15px;
  font-size: 1.3em;
  font-weight: 400;
  border-radius: 3px;
  box-shadow: 0px 0px 10px rgba(51, 51, 51, 0.4);
  cursor: pointer;
  transition: all 0.15s ease-in-out;
}
form button:hover {
  background: #ff5252;
}

</style>
</head>
<body>

<!-- class="form-signin" -->
<form method="POST" action="${pageContext.request.contextPath}/login" >
<!--  class="login-box" -->
<label for="name">Name:</label><br>
<input name="name" type="text" autofocus placeholder="your name.." required/><br>

<!--  class="login-box" -->
<label>Password:</label><br>
<input id="password" name="password" type="password" placeholder="password..." required/><br>
	
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





--%>

