<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Buy in</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="col-sm-5" style="border:0px solid grey;border-radius:5px;padding:20px; margin-left:40px;">
<h2>Shopped Product details</h2>
<h3>Movie-Name: ${prod.name}</h3>
<h2>Description: ${prod.description}</h2>
<h2>Amount: ${prod.price}</h2>
<h2>Provider: ${prod.supplier.supname}</h2>
</div>

<div class="section" style="border:1px solid grey;border-radius:5px;padding:40px; margin:0px;">
<form action="addToCart" method="post" style="margin:10px;">
<input type="hidden" value="${prod.id}" name="pid"/><br>
<input type="hidden" value="${prod.price}" name="pPrice"/><br>
<input type="hidden" value="${prod.name}" name="pName"/><br>
<input type="hidden" value="${prod.imgname}" name="imgName"/><br><br>
<input type="number" class="form-control" name="pQty" required><br><br>
<input class="btn btn-warning btn-lg" type="submit" value="+ Cart">
<h6><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span>Wishlist</h6>
</form>
</div>

<div class="col-sm-6" style="margin-left: 100px;">
<h2>More Details</h2>
<ul>
<li>policy details</li>
<li>age restriction details</li>
<li>privacy details</li>
</ul>
</div>

<hr>
<div style="margin-right: 100px;">
<h6>All Product are from a trusted vendor.</h6>
</div>
</body>
</html>