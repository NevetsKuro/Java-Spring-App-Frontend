<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.container,body{
	background-color: #FF3838;
}

.clss{
	width:800px;
	padding:30px 40px;
	padding-right:50px;
	border-radius:5px;
	box-shadow:0px 0px 20px rgba(0, 0, 0, 0.7);
	background-color: white;
}
h1{
 background: #FF3838;
 padding:20px;
  color: white;
}
.err{
color:red;
padding: 2px;
}

input.ng-invalid {
	border-color: red;
}
input.ng-valid {
    border-color:lightgreen;
}
</style>
</head>
<body ng-app="">
<div class="container">

<h1>Registration Page</h1>
<div class="maindiv">

<form:form name="registration" class="clss" modelAttribute="user" method="post" action="saveRegister">
<div class="form-group">
<form:errors path="name" cssClass="err"/><br>
	<label for="regname">Name:</label>
	<form:input name="regname" id="regname" path="name" class="form-control" ng-model="myName" required="true" pattern=".{6,}"/>
</div>
<div class="form-group">
<form:errors path="email" cssClass="err"/><br>
	<label for="regemail">E-mail:</label>
	<form:input id="regemail" type="email" path="email" class="form-control" ng-model="myEmail" required="true" pattern=".{6,}"/>
</div>
<div class="form-group">
<form:errors path="place" cssClass="err"/><br>
	<label for="regplace">Place:</label>
	<form:input name="regname" id="regplace" path="place" class="form-control" ng-model="myPlace" required="true" pattern=".{6,}"/>
</div>
<div class="form-group">
<form:errors path="password" cssClass="err"/><br>
	<label for="regpwd">Password:</label>
	<form:input id="regpwd" type="password" path="password" class="form-control" ng-model="myPwd" required="true" pattern=".{6,}"/>
</div>
<div class="form-group">
	<label for="cpassword">Confirm-Password:</label>
	<form:input id="cpassword" path="password" type="password" class="form-control" ng-model="myPwd2" required="true" pattern=".{6,}" onmouseover="chkPwd()"/>
</div>
<div class="form-group" >
	<label for="gender">Gender</label>
	<form:radiobutton path="gender" value="M" label="M" required="true" ng-model="gender"/>
	<form:radiobutton path="gender" value="F" label="F" required="true" ng-model="gender"/>
	<div ng-switch="gender">
	<div ng-switch-when="M">
    	<i>Male </i><i class="fa fa-male" aria-hidden="true"></i>
  	</div>
  	<div ng-switch-when="F">
     	<i>Female </i> <i class="fa fa-female" aria-hidden="true"></i>
	</div>
	</div>
</div>
<button class="btn btn-default" type="submit" id="submit">Submit</button>
<button class="btn btn-default" type="reset">Reset</button>
</form:form>
</div>
</div>
<script type="text/javascript">
var password = document.getElementById("regpwd");
var confirm_password = document.getElementById("cpassword");

function validatePassword(){
if(password.value != confirm_password.value) {
  confirm_password.setCustomValidity("Passwords Don't Match");
} else {
  confirm_password.setCustomValidity('');
}
}
password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>
</body>
</html>