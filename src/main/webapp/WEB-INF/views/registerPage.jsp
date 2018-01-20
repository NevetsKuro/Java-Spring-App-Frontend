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
</style>
<script>
function validateForm() {
    var x = document.getElementById("regname").value;
    document.getElementById("regname").style.borderColor = "red";
    if (x == "") {
    	document.getElementById("regname").style.borderColor = "red";
    }
    else{
    	document.getElementById("regname").style.borderColor = "";
    }
}
function enableIf(){
	var ch = document.getElementById("regname").style.borderColor;
	if(ch=="red"){
		document.getElementById("submit").disabled = "true";
    }
    else{
    	document.getElementById("submit").disabled = "";
    }
}

</script>
</head>
<body>

<%-- <jsp:include page="welcomePage.jsp"/> --%>
<div class="container">

<h1>Registration Page</h1>
<div class="maindiv">

<form:form name="registration" class="clss" modelAttribute="user" method="post" action="saveRegister">
<div class="form-group">
<form:errors path="name" cssClass="err"/><br>
	<label for="regname">Name:</label>
	<form:input name="regname" id="regname" path="name" class="form-control" onmouseout="return validateForm()"/>
</div>
<div class="form-group">
<form:errors path="email" cssClass="err"/><br>
	<label for="regemail">E-mail:</label>
	<form:input id="regemail" path="email" class="form-control"/>
</div>
<div class="form-group">
<form:errors path="place" cssClass="err"/><br>
	<label for="regplace">Place:</label>
	<form:input name="regname" id="regplace" path="place" class="form-control"/>
</div>
<div class="form-group">
<form:errors path="password" cssClass="err"/><br>
	<label for="regpwd">Password:</label>
	<form:input id="regpwd" type="password" path="password" class="form-control"/>
</div>
<div class="form-group">
	<label for="cpassword">Confirm-Password:</label>
	<form:input id="cpassword" path="password" type="password" class="form-control"/>
</div>
<div class="form-group" >
	<label for="gender">Gender</label>
	<form:radiobutton path="gender" value="M" label="M"/>
	<form:radiobutton path="gender" value="F" label="F"/>
</div>
<button class="btn btn-default" type="submit" id="submit" onmouseover="return enableIf()">Submit</button>
<button class="btn btn-default" type="reset">Reset</button>
</form:form>
</div>
</div>

<script type="text/javascript">


</script>
</body>
</html>