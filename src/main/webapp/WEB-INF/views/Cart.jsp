<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
*{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
}
</style>
</head>
<body>

<div class="container">
<h2>&nbsp;&nbsp;&nbsp;&nbsp;Cart List</h2>

<table class="table table-hover" id="api" class="display" border="1">
<tr>
<th>Index</th>
<th>Product Name</th>
<th>Product Quantity</th>
<th>Product Price</th>
<th>Product Poster</th>
<th>Sub-Total</th>
<th>Action</th>
</tr>
<c:if test="${empty cartInfo}">
<tr align="center">
<td colspan="10">Your Cart is empty!!</td>
</tr>
</c:if>
<c:forEach var="p" varStatus="st" items="${cartInfo}">
<tr>
<td><c:out value="${st.count}"></c:out></td>
<td><c:out value="${p.cartProductName}"></c:out></td>
<td><c:out value="${p.cartStock}"></c:out></td>
<td><c:out value="${p.cartPrice}"></c:out></td>
<td><img src="<c:url value="/resources/items/${p.cartImage}"/>" height="50px" width="50px" alt="${p.cartImage}" ></td>
<td><c:out value="${p.cartStock * p.cartPrice}"></c:out></td>
<td><a class="btn btn-danger" role="button" href="<c:url value="/deleteCart?cartid=${p.cartId}"></c:url>">Delete</a></td>
</tr>
</c:forEach>
<tr>
<td>
<c:forEach var="p" items="${cartInfo}">
<c:set var="gtot" value="${gtot+p.cartPrice*p.cartStock}"/>
</c:forEach>
<span class="col-lg-9" ><label>Grand Total: </label><span><c:out value="${gtot}"></c:out></span></span>
</td>
</tr>

<tr>
<td>
<a class="btn btn-warning" href="${pageContext.request.contextPath}/HomePage">Continue Shopping</a>&nbsp;&nbsp;&nbsp;
<a class="btn btn-success" href="${pageContext.request.contextPath}/checkout">Checkout</a>
</td>
</tr>

</table>

</div>

</body>
</html>