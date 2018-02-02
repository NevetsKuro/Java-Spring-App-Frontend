<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
*{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
}
#navdiv{
margin:15px;
width: 160;
height: 260;
border: 1px solid black;
border-radius: 5px;
padding:5px;
float: left;
margin-bottom: 20px;
}
#span1{
position: absolute;
font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif";
}
.main.div{
width:100%;
height:auto;
display: block;	
}
.col-sm-3{
height:100%;
float:left;
}
#ads{
margin:10px;
text-decoration: none;
color: black;
}
#block{
color: black;
}
#h4{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
	font-size: 20pt;
	border-bottom:1px solid;
	border-bottom-color:black;
}
#leftitems{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
	border-bottom:1px solid;
	border-bottom-color:black;
	list-style-type:none;
	font-size: 12pt;
	padding:3px;
	border-radius: 3px;
}
#leftitems:hover{
	background-color: gray;
}
#navPagesbdy{
	background-color: #cccccc;
}
.col-sm-2{
	border-radius: 10px;
	background-color: #b3b3b3; 
}
</style>
</head>
<body id="navPagesbdy">
<jsp:include page="header.jsp"></jsp:include>
<div class="container main.div">

<!-- Left navigation -->
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

<!-- Right navigation -->
<div class="rightdiv">
<c:forEach varStatus="pro" items="${prodList}">
<c:set var="times" value="${pro.count}"></c:set>
</c:forEach>
<h3 style="padding-left: 200px;">There are <c:out value="${times}" default="0"></c:out> Search result</h3>

<c:forEach var="prod" varStatus="pro" items="${prodList}">
<div class="thumbnail" id="navdiv"><a href="productDetail?pid=${prod.id}">
<img class="img img-rounded img-responsive" 
	style="width:150px;height:250px;display:relative;" alt="1" 
		src="<c:url value="/resources/items/${prod.imgname}"/>"
		/>
<span id="block"><span id="#span1"><c:out value="${prod.name}"></c:out></span><br>&nbsp;&nbsp;<span style="padding-left: 60px;right: 1px;"> &#8377;<c:out value="${prod.price}"></c:out></span></span>
</a></div>
</c:forEach>
</div>
</div>
<div>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>