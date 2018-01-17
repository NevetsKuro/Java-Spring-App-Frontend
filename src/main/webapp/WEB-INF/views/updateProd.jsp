<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div>
	<form method="post" action="productUpdate" class="form-signin" enctype="multipart/form-data">
	<span id="reauth-email" class="reauth-email"></span>
	
	<input type="hidden" name="pid" value="${prod.id}"/>
	
	<h4 class="input-title">Product Name</h4>
	<input class="form-control" type="text" name="pName" value="${prod.name}" required/>
	
	<h4 class="input-title">Product rating</h4>
	<input class="form-control" type="text" name="pRating" value="${prod.rating}" required/>
	
	<h4 class="input-title">Product description</h4>
	<input class="form-control" type="text" name="pDescription" value="${prod.description}" required/>
	
	<h4 class="input-title">Product date</h4>
	<input class="form-control" type="date" name="pDate"  value="${prod.proddate}" required/>
	
	<h4 class="input-title">Product quality</h4>
	<input class="form-control" type="text" name="pQuality" value="${prod.quality}" required/>
	
	<h4 class="input-title">Product released</h4>
	<input class="form-control" type="text" name="pReleased" value="${prod.released}" required/>

	<h4 class="input-title">Product Price</h4>
	<input class="form-control" type="number" name="pPrice" value="${prod.price}" required/>

	<h4 class="input-title">Product Stock</h4>
	<input class="form-control" type="number" name="pStock" value="${prod.stock}" required/>
	
	<h4 class="input-title">Product Time</h4>
	<input class="form-control" type="number" name="pTime" value="${prod.time}" required/>
	
	<input type="hidden" name="imgName" value="${prod.imgname}">
	
	<div class="form-group">
	<table>
	<tr>
		<td>Select Supplier</td>
		<td>
		<select class="form-control" name="pSupplier" required>
		<option value="">${prod.supplier.supname}</option>
		<c:forEach items="${supList}" var="sup">
		<option value="${sup.sid}">${sup.supname}</option>
		</c:forEach>
		</select>
		</td>
	</tr>
	</table>
	</div>
	
	<div class="form-group">
	<table>
	<tr>
		<td>Select Category</td>
		<td>
		<select class="form-control" name="pCategory" required>
		<option value="">${prod.category.catname}</option>
		<c:forEach items="${catList}" var="cat">
		<option value="${cat.cid}">${cat.catname}</option>
		</c:forEach>
		</select>
		</td>
	</tr>
	</table>
	</div>
	
	<br>
	<button class="btn btn-default btn-primary" type="submit">Save</button>
	<button class="btn btn-default btn-warning" type="reset">Cancel</button>
	<br>
	</form>
</div>
</div>
</body>
</html>