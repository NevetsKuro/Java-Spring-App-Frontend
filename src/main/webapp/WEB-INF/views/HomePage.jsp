<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title> HomePage </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/jquery-1.4.1.min.js"></script>
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
.mi-img{
height:300px!important;
width:200px!important;
box-shadow:2px 2px 5px 5px grey;
}
.col-sm-3{
float:left;
}
.homepageanchor{
text-decoration:none;
color: white;
}
#body-div
{	
	padding:0px;
	display: block;
}
#ads, li{
	font:italic; 
	list-style-type:none; 
	text-decoration: none;
	color:black; 
	border-bottom-color: grey;
}
#h4{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
	font-size: 20pt;
	border-bottom:1px solid;
	border-bottom-color:grey;
}
#leftitems{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
	border-bottom:1px solid;
	border-bottom-color:grey;
	font-size: 12pt;
	padding: 3px;
	border-radius: 3px; 
}
#leftitems:hover,#ads:hover{
	color:#cccccc;
	background-color: grey;
}
.container .col-sm-2{
	position:sticky;
	top:20px;
	right:0px;
	padding-top:10px;
	border:2px solid #d9d9d9;
	border-radius:5px;
/* 	height:2880px; */
	background-color:#d9d9d9;
}
.bdy{
background-color:#e6e6e6;
}
.spanhead{
padding:10px;
display:block;
border:1px solid grey;
border-radius:3px;
color: white;
background-color:grey;
}
@media screen and (max-width: 1300px) {
	body > .container{
		width: 100%!important;
	}
	.mi-title{
		width:200px;
		height: 100px;
	}
}
#myTopToBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  outline: none;
  border:1px solid black; 
  background-color: black;
  color: white;
  font-size:17px;
  cursor: pointer;
  padding: 8px;
  border-radius: 30px;
  transition-duration:width 2s, height 2s;
} 
#myTopToBtn:hover{
width:50px;
height:50px;
}

</style>
<script type="text/javascript">
    $(document).ready(function() {
            $("#footer").css("display", "none");
            $("#footer").fadeIn(1000);
            $("#body-div").css("display", "none");
            $("#body-div").fadeIn(1000);
    		
		    $("a.homepageanchor").click(function(event){
		        event.preventDefault();
		        linkLocation = this.href;
		        $("#body-div").fadeOut(1000, redirectPage);      
		    });
		         
		    function redirectPage() {
		        window.location = linkLocation;
		    }
    });
</script>
</head>

<body class="bdy">
<button onclick="topFunction()" id="myTopToBtn" title="Go to top"><i class="glyphicon glyphicon-chevron-up" ></i></button>
<jsp:include page="header.jsp"></jsp:include>

<div id="body-div" class="container" style="margin-top:55px;" onclick="closelist()">
<div id="headings"><h2><span class="spanhead" onclick="closelist()">Shop Movies Now!</span></h2></div>
<div id="videoframe" style="display:block">
<iframe style="width:100%; -webkit-transform:scaleX(1); border: 0px;" width="640" height="0" src="" title="compilations">
</iframe>
</div>

<!-- sidenav -->
<div class="col-sm-2">
<h2>Sort By</h2>
<h4 id="h4" >Genre</h4>
<ul title="Category" >
<c:forEach var="cat" items="${catList}">
<li id="leftitems" ><a id="ads" href="${pageContext.request.contextPath}/prodCatListNav?cid=${cat.cid}">${cat.catname}</a></li>
</c:forEach>
</ul>
<h4 id="h4">Providers</h4>
<ul title="Supplier">
<c:forEach var="sup" items="${supList}">
<li id="leftitems" ><a id="ads" href="${pageContext.request.contextPath}/prodSupListNav?sid=${sup.sid}">${sup.supname}</a> </li>
</c:forEach>
</ul>
</div>

<div>
&nbsp;
</div>

<div class="col-sm-10">
<div class="row">
<div class="col-sm-3">
<a class="homepageanchor" href="productDetail?pid=35">
<img class=" mi-img img-rounded img-responsive" alt="1" src="<c:url value="/resources/items/movie1.1.jpg"/>"><span class="mi-title">American made</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=36">
<img class="mi-img img-rounded img-responsive"  alt="2" src="<c:url value="/resources/items/movie1.2.jpg"/>"><span class="mi-title">FlatLiners</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=37">
<img class="mi-img img-rounded img-responsive"  alt="3" src="<c:url value="/resources/items/movie1.3.jpg"/>"><span class="mi-title">American Assassin</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=38">
<img class="mi-img img-rounded img-responsive"  alt="4" src="<c:url value="/resources/items/movie1.4.jpg"/>"><span class="mi-title">The Witching</span>
</a></div>
<div>
&nbsp;
</div>

</div>
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=39">
<img class="mi-img img-rounded img-responsive" alt="#"  src="<c:url value="/resources/items/movie1.5.jpg"/>"><span class="mi-title">Deadpool</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=40">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.6.jpg"/>"><span class="mi-title">Stream</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=41">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.7.jpg"/>"><span class="mi-title">Burning man</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=42">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.8.jpg"/>"><span class="mi-title">Doctor Strange</span>
</a></div>
<div>
&nbsp;
</div>

</div>
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=43">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;"src="<c:url value="/resources/items/movie1.9.jpg"/>"><span class="mi-title">Reign of Fire</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=44">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;"src="<c:url value="/resources/items/movie1.10.jpg"/>"><span class="mi-title">Baby Driver</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=45">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.11.jpg"/>"><span class="mi-title">IT</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=46">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.12.jpg"/>"><span class="mi-title">The heart of the Sea</span>
</a></div>
<div>
&nbsp;
</div>

</div>
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=47">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.13.jpg"/>"><span class="mi-title">Into the Deep</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=48">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.14.jpg"/>"><span class="mi-title">The Bid Sick</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=49">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.15.jpg"/>"><span class="mi-title">LIFE</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href=productDetail?pid=50">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.16.jpg"/>"><span class="mi-title">Birth of the dragon</span>
</a></div>
<div>
&nbsp;
</div>

</div>
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=51">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.17.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=52">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.18.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=53">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.19.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=54">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.20.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div>
&nbsp;
</div>

</div>
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=55">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.21.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=56">
<img class="mi-img img-rounded img-responsive" alt="#" style="height:300px;" src="<c:url value="/resources/items/movie1.22.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=57">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.23.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=58">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.24.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div>
&nbsp;
</div>

</div>
<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=59">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.25.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=60">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.26.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=61">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.27.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=62">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.28.jpg"/>"><span class="mi-title">###</span>
</a></div>
</div>
<div>
&nbsp;
</div>

<div class="row">
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=63">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.29.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=64">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.30.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=65">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.31.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a class="homepageanchor" href="productDetail?pid=66">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.32.jpg"/>"><span class="mi-title">###</span>
</a></div>
</div>
<div>
&nbsp;
</div>

<div class="row">
<div class="col-sm-3"><a href="productDetail?pid=67">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.33.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a href="productDetail?pid=68">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.34.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a href="productDetail?pid=69">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.35.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div class="col-sm-3"><a href="productDetail?pid=70">
<img class="mi-img img-rounded img-responsive" alt="#" src="<c:url value="/resources/items/movie1.36.jpg"/>"><span class="mi-title">###</span>
</a></div>
<div>
&nbsp;
</div>

</div>
</div>
</div>

<div class="container" id="footer">
	<jsp:include page="footer.jsp"></jsp:include>
</div>

<script type="text/javascript">
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myTopToBtn").style.display = "block";
    } else {
        document.getElementById("myTopToBtn").style.display = "none";
    }
}
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>
</body>
</html>