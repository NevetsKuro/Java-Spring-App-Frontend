<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checkout</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<style type="text/css">
*{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
}
.outer input[type=checkbox]{
	border-radius: 50%;
}
#leftspace{
	margin-left: 20px;
}
#myDiv{
	padding:2px;	
	display: none;
	border: 1px solid grey;
	border-radius: 5px;
}
#myDiv div label{
width:150px;
}
@media screen and (max-width:480px){

}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("#hide").click(function(){
        $("#myDiv").hide();
    });
    $("#show1").click(function(){
        $("#myDiv").show();
    });

    $("#show2").click(function(){
        $("#myDiv").show();
    });

    $("#show3").click(function(){
        $("#myDiv").show();
    });
});
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
<div class="jumbotron">
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
<br>
<label>Select Payment</label><br>
<div id="leftspace">
<!-- COD -->
<input id="hide" type="radio" name="payment"> Cash On Delivery<br>

<!-- Debit -->
<input id="show1" type="radio" name="payment"> Debit<br>
<div>
<h6>Select type of card</h6>
<select name="paymenttype">
<option value="Visa-Debit">Visa/MasterCard Debit Card</option>
<option value="Rupay-Debit">Rupay Debit Card</option>
<option value="Maestro-Debit">Maestro Debit Card</option>
<option value="Citibank-Debit">Citibank Debit Card</option>
</select>
</div>
<!-- Credit -->
<input id="show2" type="radio" name="payment"> Credit
<div>
<h6>Select type of credit payment</h6>
<select name="payment-type">
<option value="MasterCard">MasterCard</option>
<option value="Visa">Visa</option>
<option value="Diners-Club">Diners-Club</option>
</select>
</div>
<!-- Net Banking -->
<input id="show3" type="radio" name="payment">Net Banking
<div>
<h6>Select a Bank</h6>
<select name="payment-type">
<option value="ICICI">ICICI</option>
<option value="YesBank">YesBank</option>
<option value="BankOfIndia">BOI</option>
<option value="HDFC">HDFC</option>
</select>
</div>
<div id="myDiv">
<div><label for="name-on-card">Name:</label><input type="text" name="name-on-card" style="height:30px;"></div>
<div><label for="card-number">Card Number:</label><input type="number" name="card-number" style="height:30px;"></div><br>
</div>
<div><input type="hidden" name="total" value="${gtot}" style="height: 0px;"></div>
</div>
</div>
<br>
<input type="submit" value="PROCEED" style="width:75%;" class="btn btn-danger">
</div>
</form>
</div>
</div>
</div>

</div>
</body>
</html>