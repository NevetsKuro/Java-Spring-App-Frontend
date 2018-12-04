<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Buy in</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
#api tr td{
padding: 5px;
}
#api{
border-bottom: 1px solid grey;
}
</style>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<div class="col-sm-2">&nbsp;</div>
<table id="api" class="table table-striped">
<tr><th colspan="2">Movie details</th></tr>
<tr><td>Movie-Name:</td><td>${prod.name}</td></tr>
<tr><td>Description:</td><td>${prod.description}</td></tr>
<tr><td>Amount:</td><td>${prod.price}</td></tr>

<tr><td>Provider:</td><td>${prod.supplier.supname}</td></tr>
<tr><td>Quantity:</td><td><input type="number" name="pQty" form="f1" max="${prod.stock}" required/><td></tr>
</table>
<div>
<form id="f1" action="addToCart" method="post" style="height: 50px">
<input class="btn btn-warning btn-lg" type="submit" value="+ Cart">
<input type="hidden" value="${prod.id}" name="pid"/><br>
<input type="hidden" value="${prod.price}" name="pPrice"/><br>
<input type="hidden" value="${prod.name}" name="pName"/><br>
<input type="hidden" value="${prod.imgname}" name="imgName"/><br><br>
</form>
</div>
<hr/>
<div class="col-sm-6" style="margin-left: 50px;">
<h3>Note:</h3>
<ul>
<li>All movies, TV shows, and episodes on our site do not have any videos provided by us. They are urchased from sites like 123movies and Putlockers and advertised on our site.</li>
</ul>
</div>
<div class="col-sm-4" style="margin-right: 100px; margin-top: 50px;">
<h6><span>*</span> All Movie are from a trusted vendor.</h6>
</div>
</body>
</html>