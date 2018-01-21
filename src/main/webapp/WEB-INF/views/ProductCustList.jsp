<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Product List</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
th{
text-align: center;
border-left:1px solid #cccccc;
background-color: #f2f2f2;
}
#api{
border-top:1px solid #cccccc;
text-align: center;
border-radius: 5px;
}
#mainbody{
background-repeat: no-repeat;
background-position: center;
background-size: cover;
}
</style>
</head>
<body id="mainbody" background="<c:url value="/resources/items/wallpprs4.jpg"></c:url>">
<jsp:include page="header.jsp"></jsp:include>
<div class="container table-responsive">
<h2>Product List</h2>

<table class="table table-hover table-striped" id="api">
<thead>
<tr>
<th class="info">Index</th>
<th>Product Id</th>
<th>Product Name</th>
<th>Product Description</th>
<th>Product Released</th>
<th>Price</th>
<th>Time</th>
<th>Posted on</th>
<th>Poster</th>
</tr>
</thead>
<tbody>
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
<td ><c:out value="${p.description}"></c:out></td>
<td><c:out value="${p.released }"></c:out></td>
<td><c:out value="${p.price }"></c:out></td>
<td><c:out value="${p.time }"></c:out></td>
<td><c:out value="${p.proddate }"></c:out></td>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<td><img src="<c:url value="/resources/items/${p.imgname}"/>" height="50px" width="50px" ></td>
</tr>
</c:forEach>
</tbody>
</table>

</div>


</body>
</html>