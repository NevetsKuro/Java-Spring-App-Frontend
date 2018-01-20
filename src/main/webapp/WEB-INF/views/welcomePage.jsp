<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome!</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <script>
  $(document).ready(function(){
	    // Activate Carousel
	    $("#myCarousel").carousel({interval: 1000});
  });
  </script>
  <style type="text/css">
  	#MyCarousel{
  		width:100%;
  		height:100%;
  		position:fixed;
    	display:block;
    	z-index:-1;
  	}
  	body {
	  min-height : 100%;
	  min-width : 100%;
	  background-size:100% 100%;
	  background-repeat:no-repeat;
	  overflow-y: hidden;
	  overflow-x: hidden;
	 }
  	
  	.top{
  		position: absolute;
    	top: 10px;
    	left: 40%;
  	}
  	.top2{
  		position:absolute;
  		top:10px;
  		left:50%;
  	}
  	.bottom-left{
  		position:absolute;
  		top:70%;
  		left:70%;
  	}
  	.btntrans{
    	background-color: transparent;
    	color:white;
  	}
  	.carousel-caption{
  		bottom:20%;
  	}
/*   	bottom Bar	 */  	
#bottom{
width:100%;
position:absolute;
bottom:1px;
border:1px solid black;
display:none;
background-color:hsla(0, 100%, 70%, 0.3);
z-index:-1;
height:140px;
}
#btn{
opacity:0.5;
background:linear-gradient(white,black);
height:50px;
position:absolute;
bottom:0px;
width:100%;
z-index:-1;
border:0px;
color:red;
}
.inner-img{
padding:20px;
} 	
  </style>
</head>
<body>
<div id="MyCarousel" onclick="closed()">
<div class="fluid-container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    
    
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
	
	  <div class="item active">
        <img class="img" src="<c:url value="/resources/w-movies.jpg"/>" alt="movie 1 image" style="width:100%;">
        <div class="carousel-caption">
          <p>Discover new ways to watch TV shows and movies online from various streaming apps and websites, in one place.</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </div>
      </div>
  	
  	<div class="item">
        <img src="<c:url value="/resources/w-movies2.jpg"/>" alt="movie 2 image" style="width:100%;">
        <div class="carousel-caption">
          <p>Browse the latest movies and episodes.</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </div>
      </div>
      
      <div class="item">
        <img src="<c:url value="/resources/w-movies3.jpg"/>" alt="movie 3 image" style="width:100%;">
        <div class="carousel-caption">
          <p>Bookmark Your choices.</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </div>
      </div>
      
      <div class="item">
        <img src="<c:url value="/resources/w-movies4.jpg"/>" alt="movies 4 image" style="width:100%;">
        <div class="carousel-caption">
          <p>Horror is my favourite.What is yours?</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </div>
      </div>
    </div>
	
	<div class="top">
		<a href="Register"><button class="btntrans btn btn-default" type="button">Register</button></a>
  	</div>
  	
	<div class="top2">
		<a href="goToLogin"><button class="btntrans btn btn-default" type="button">Login</button></a>
  	</div>
    
  </div>
  
  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
</div>
<button id="btn" onclick="show()"><span class="glyphicon glyphicon-triangle-top"></span></button>
<div id="bottom">
<div class="col-xs-3"><a href="#"><img src="<c:url value="/resources/items/moviee.jpg"></c:url>" alt="animation movie" class="inner-img img-responsive" onclick="closed()"></a></div>
<div class="col-xs-3"><a href="#"><img src="<c:url value="/resources/items/moviee2.jpg"></c:url>" alt="animation movie" class="inner-img img-responsive" onclick="closed()"></a></div>
<div class="col-xs-3"><a href="#"><img src="<c:url value="/resources/items/moviee3.jpg"></c:url>" alt="animation movie" class="inner-img img-responsive" onclick="closed()"></a></div>
<div class="col-xs-3"><a href="#"><img src="<c:url value="/resources/items/moviee4.jpg"></c:url>" alt="animation movie" class="inner-img img-responsive" onclick="closed()"></a></div>
</div>
<script>
function show(){
	document.getElementById("btn").style.display = "none";
	document.getElementById("bottom").style.display = "block";
}
function closed(){
	document.getElementById("btn").style.display = "block";
	document.getElementById("bottom").style.display = "none";
}
</script>

</body>
</html>
