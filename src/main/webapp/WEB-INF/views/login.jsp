<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>" > 
</head>
<body>

<!-- class="form-signin" -->
<form method="POST" action="${pageContext.request.contextPath}/login" >
<!--  class="login-box" -->
<label for="name">Name:</label>
<input name="name" type="text" autofocus="autofocus" required/>

<!--  class="login-box" -->
<label for="password">Password:</label>
<input name="password" type="password" required/>

	<button name="login" type="submit">Login</button>
	<span>&nbsp;</span>
    <button name="reset" type="reset">Cancel</button>
	
</form>
</body>
</html>