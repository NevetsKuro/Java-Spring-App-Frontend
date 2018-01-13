<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> i'm a cool </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="<c:url value="/resources/css/homepage.css" />" rel="stylesheet"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.mi-title{
padding:2px;
border-radius:1px;
background-color:black;
opacity:0.5;
position: absolute;
top:90%;
left:6%;
}
#body-div
{	
	margin-left:20px;
	padding:0px;
	display: block;
}
#ads, li{
	font:italic; 
	list-style-type:none; 
	text-decoration: none;
	color:black; 
	border-bottom-color: black;
}
#h4{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
	font-size: 20pt;
	border-bottom:1px solid;
	border-bottom-color:red;
}
#leftitems{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
	border-bottom:1px solid;
	border-bottom-color:red;
	font-size: 15pt;
	padding: 3px;
	border-radius: 3px; 
}
#leftitems:hover{
	background-color: red;
}
.col-sm-2{
	border:2px solid red;
	border-radius:5px;
	height:2745px;
}
</style>
</head>

<body class="bdy">
<jsp:include page="header.jsp"></jsp:include>
<div id="body-div" class="container" >

<div class="col-sm-2">

<h2>List</h2>
<h4 id="h4" >Category</h4>
<ul title="Category" >
<c:forEach var="cat" items="${catList}">
<li id="leftitems" ><a id="ads" href="${pageContext.request.contextPath}/prodCatListNav?cid=${cat.cid}">${cat.catname}</a></li>
</c:forEach>
</ul>
<h4 id="h4">Supplier</h4>
<ul title="Supplier">
<c:forEach var="sup" items="${supList}">
<li id="leftitems" ><a id="ads" href="${pageContext.request.contextPath}/prodSupListNav?sid=${sup.sid}">${sup.supname}</a> </li>
</c:forEach>
</ul>
</div>

<div class="col-sm-10">
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=4">
<img class="mi-img img-rounded img-responsive"  style="height:300px;" alt="1" src="<c:url value="/resources/items/movie1.1.jpg"/>"><span class="mi-title">American made</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=5">
<img class="mi-img img-rounded img-responsive" style="height:300px;"alt="2" src="<c:url value="/resources/items/movie1.2.jpg"/>"><span class="mi-title">FlatLiners</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=6">
<img class="mi-img img-rounded img-responsive" style="height:300px;" alt="3" src="<c:url value="/resources/items/movie1.3.jpg"/>"><span class="mi-title">American Assassin</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=7">
<img class="mi-img img-rounded img-responsive" style="height:300px;" alt="4" src="<c:url value="/resources/items/movie1.4.jpg"/>"><span class="mi-title">The Witching</span>
</a></div>
<div>
&nbsp;
</div>

</div>
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pname=Deadpool">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.5.jpg"/>"><span class="mi-title">Deadpool</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=1">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.6.jpg"/>"><span class="mi-title">Stream</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=3">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.7.jpg"/>"><span class="mi-title">Burning man</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=2">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.8.jpg"/>"><span class="mi-title">Doctor Strange</span>
</a></div>
<div>
&nbsp;
</div>

</div>
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;"src="<c:url value="/resources/items/movie1.9.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;"src="<c:url value="/resources/items/movie1.10.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.11.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.12.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div>
&nbsp;
</div>

</div>
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pname=Into the deep">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.13.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.14.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.15.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.16.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div>
&nbsp;
</div>

</div>
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img img-rounded img-responsive" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img img-rounded img-responsive" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img img-rounded img-responsive" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img img-rounded img-responsive" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div>
&nbsp;
</div>

</div>
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<br/>

</div>
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
</div>
<div>
&nbsp;
</div>

<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
</div>
<div>
&nbsp;
</div>

<div class="row">
<div class="col-sm-3"><a href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a href="#">
<img class="mi-img" alt="#" src="#"><span class="mi-title">###</span>
</a></div>
<div>
&nbsp;
</div>

</div>
</div>
</div>
<div class="container">
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>