<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
*{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
}
#main{
margin-left:140px;
margin-top:140px;
width: 100%;
height: 100%;
}
#inner-span{
padding: 10px;
}
.h1{
padding:10px;
font-size: 50px;
}

.btn,.h1{
border-radius:5px;
background-color:white;
color:gray;
z-index:1;
text-decoration: none;
}
body{
background-size: contain;
}
</style>
</head>
<body background="<c:url value="/resources/items/Error.jpg"></c:url>">
<div id="main">
<span class="h1">You are not an authorized User!!!</span>
<br><br><br><br>
<div class="btn btn-default"><a href="${pageContext.request.contextPath}/reLogin"><span class="inner-span">Back To Login</span></a>
</div>
</div>
</body>
</html>