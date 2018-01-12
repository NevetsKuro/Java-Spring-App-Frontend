<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">

<!-- Top  grid -->
<div class="row">
<video src="<c:url value="/resources/videos/${##}"></c:url>"></video>
</div>

<!-- Bottom Side Grid -->
<div class="row">
<!-- Left Side Grid -->
<div class="col-sm-4"><img alt="${##}" src="/resources/items/"></div>
<!-- Right Side Grid -->
<div class="col-sm-8">
<h2>title</h2>
<p>description</p>
</div>
</div>
<div></div>
<div></div>


</div>

</body>
</html>