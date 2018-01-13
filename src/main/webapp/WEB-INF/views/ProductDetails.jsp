<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.top-row{
display:block;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">

<!-- Top  grid --><div class="row top-row">
<video src="<c:url value="/resources/videos/americanmade.mov"></c:url>" controls="controls"  ></video>
</div>
<br>
<!-- Bottom Side Grid -->
<div class="row">
<!-- Left Side Grid -->
<div class="col-sm-3"><img class="img img-responsive" alt="${prod.imgname}" src="<c:url value="/resources/items/${prod.imgname}"></c:url>"></div>
<!-- Right Side Grid -->
<div class="col-sm-8">
<h2><c:out value="${prod.name}"></c:out></h2>
<p><c:out value="${prod.description}"></c:out></p>
<p>By<span><c:out value="${prod.supplier.supname}"></c:out></span></p>
<p><span>&#8377;</span><span><c:out value="${prod.price}"></c:out></span></p>
</div>
</div>
<div></div>
<div></div>

</div>

</body>
</html>