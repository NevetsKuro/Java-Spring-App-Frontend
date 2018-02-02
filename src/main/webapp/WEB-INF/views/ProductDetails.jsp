<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products-Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#rs-p{
font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
font-size:25px;
}
#rs-h2{
font-weight: bolder;
}
#rs-pdes{
font-size: 20px;
}
.top-row video{
display:block;
border:1px solid black;
width: 100%; 
}
.body{
 background-color: #cccccc; 
}
.img-thumbnail{
color: black;
}
video{
cursor: pointer;
}
</style>
</head>
<body class="body">
<jsp:include page="header.jsp"></jsp:include>
<div class="container">

<!-- Top  grid -->
<div class="row top-row">
<video src="<c:url value="/resources/videos/americanmade.mov"></c:url>" controls="controls"></video>
</div>
<br>

<!-- Bottom Side Grid -->
<div class="row">

<!-- Left Side Grid -->
<div class="col-sm-3"><img class="img img-rounded img-responsive" alt="${prod.imgname}" src="<c:url value="/resources/items/${prod.imgname}"></c:url>"></div>
<div class="col-sm-1"></div>

<!-- Right Side Grid -->
<div class="col-sm-8">
<h2 id="rs-h2"><c:out value="${prod.name}"></c:out> &nbsp;&nbsp;&nbsp;&nbsp;<span style="font-family:'Courier New';font-size: 18px;">${prod.rating}/10 rating</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="btn btn-success" style="text-align: center;">${prod.quality}</span></h2>
<p id="rs-pdes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${prod.description}"></c:out></p>
<p id="rs-p"><span style="font-size:16px;color: maroon;">By</span> <span style="font-size:16px;color: maroon;"><c:out value="${prod.supplier.supname}"></c:out></span></p>
<p id="rs-p"><span>&#8377;</span><span><c:out value="${prod.price}"></c:out></span></p>
<span><a class="btn btn-success" href="productBuy?pid=${prod.id}">BUY</a></span>
</div>
</div>
<div></div>
<div></div>

</div>
<br>
<div>
<jsp:include page="footer.jsp"></jsp:include>
</div>

</body>
</html>