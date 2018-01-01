<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BuyMovies</title>
</head>
<body>
<div class="container">
<h2>Product List for Admin</h2>

<table class="table table-hover" id="api" class="display" border="1">
<tr>
<th>Index</th>
<th>Product Id</th>
<th>Product Name</th>
<th>Product Description</th>
<th>Product Rating</th>
<th>Product Quality</th>
<th>Product Supplier</th>
<th>Product Category</th>
<th>Product Released</th>
<th>Stock</th>
<th>Price</th>
<th>Time</th>
</tr>
<c:if test="${empty prodList}">
<tr align="center">
<td colspan="10">The product list is empty!!</td>
</tr>
</c:if>
<c:forEach var="p" varStatus="st" items="${prodList}">
<tr>
<td><c:out value="${st.count}"></c:out></td>
<td><c:out value="${p.id}"></c:out></td>
<td><c:out value="${p.name}"></c:out></td>
<td><c:out value="${p.description} }"></c:out></td>
<td><c:out value="${p.rating }"></c:out></td>
<td><c:out value="${p.quality}"></c:out></td>
<td><c:out value="${p.supplier.supname }"></c:out></td>
<td><c:out value="${p.category.catname }"></c:out></td>
<td><c:out value="${p.released }"></c:out></td>
<td><c:out value="${p.stock }"></c:out></td>
<td><c:out value="${p.price }"></c:out></td>
<td><c:out value="${p.time }"></c:out></td>
</tr>
</c:forEach>
</table>

</div>
</body>
</html>