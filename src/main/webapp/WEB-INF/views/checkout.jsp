<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checkout</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
<div class="col-xs-6 jumbotron">
<div class="head">
<label>Customer Shopping Details</label>
</div>

<div class="outer">
<div class="well" style="width:100%">
<form action="orderprocess" method="post">
<c:set var="gtot" value="0"></c:set>
<c:forEach var="c" items="${cart}">
<c:set var="gtot" value="${gtot + c.cartPrice * c.cartStock}"></c:set>
</c:forEach>
<div class="well">
<table>
<tr>
<td colspan="3">Name: </td><td>${user.name}</td>
</tr>
<tr>
<td colspan="3">Email: </td><td>${user.email}</td>
</tr>
<tr>
<td colspan="3">Address: </td><td>${user.place}</td>
</tr>

</table>

<div class="outer">
<h3>Enter Payment Details</h3>
<br>
<label>Select Payment</label>
<select name="payment">
<option value="COD">Cash On delivery</option>
<option value="Net">Net Banking</option>
</select><br><br>
<div>
<div><label for="name-on-card">Name:<input type="text" name="name-on-card" style="height:30px;"></div>
<div><label for="card-number">Card Number:</label><input type="number" name="card-number" style="height:30px;"></div><br>
<div><input type="hidden" name="total" value="${gtot}"> </div>
</div>

</div>

<input type="submit" value="PROCEED" style="width:75%;" class="btn btn-danger">
</div>
</form>
</div>
</div>
</div>

</div>


</body>
</html>