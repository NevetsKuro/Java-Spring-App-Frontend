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

}
#rs-h2{
font-weight: bolder;
font-family: monospace;
}
#rs-pdes{
font-size: 17px;
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
    <div class="container" style="margin-top: 55px;">
<div style="padding: 10px 146px;background: #F2ECFF;">

<!-- Top  grid -->
<div class="row top-row" style="text-align: -webkit-center">
    <video src="<c:url value="/resources/videos/americanmade.mov"></c:url>" controls="controls" style="width: auto"></video>
</div>
<br>

<!-- Bottom Side Grid -->
<div class="row">

<!-- Left Side Grid -->
<div class="col-sm-3" style="margin-bottom: 100px"><img class="img img-rounded img-responsive" alt="${prod.imgname}" src="<c:url value="/resources/items/${prod.imgname}"></c:url>"></div>
<div class="col-sm-1"></div>

<!-- Right Side Grid -->
<div class="col-sm-8">
    <h2 id="rs-h2"><c:out value="${prod.name}"></c:out> &nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:16px;color: maroon;font-style: italic">By <c:out value="${prod.supplier.supname}"></c:out></span></h2>
<div class="row">Rating: <span style="font-family:'Courier New';font-size: 18px;">${prod.rating}/10 rating</span></div>
<div class="row"><span>Quality: </span><span class="">${prod.quality}</span></div>
<br>
<div class="row">    
<span>Description:</span>
<p id="rs-pdes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${prod.description}"></c:out></p>
</div>


    <div class="row" id="rs-p">Price:<span>&#8377;</span><span><c:out value="${prod.price}"></c:out></span></div>
<span><a class="btn btn-success" href="productBuy?pid=${prod.id}" style="margin: 20px;float: right">BUY</a></span>
</div>
</div>
<div></div>
<div></div>

</div>
</div>
<div>
<jsp:include page="footer.jsp"></jsp:include>
</div>

</body>
</html>