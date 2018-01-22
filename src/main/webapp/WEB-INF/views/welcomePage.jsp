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
  	*{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
	}
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
background-color:hsla(0, 0%, 0%, 0.3);
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
padding:10px;
border:0px solid white;
border-radius:10px; 
}
#overlay,#overlay2,#overlay3,#overlay4 {
    position: fixed;
    display: none;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0,0,0,0.5);
    cursor: pointer;
}
#overlay{
z-index: 2;
}
#overlay2{
z-index: 2;
}
#overlay3{
z-index: 2;
}
#overlay4{
z-index: 2;
}
#image{
    position: absolute;
    top: 10%;
    left: 10%;
    right: 10%;
    bottom: 10%;
    color: white;
}
#image .overlay-img{
	height: 100%;
	width: 100%;
}
.close{
	position: absolute;
	top:5%;
	left: 90%;
	padding:10px;
	color: black;
	background-color:white;
	border: 1px solid black;
	border-radius: 5px;
}
.info{
position:absolute;
top: 45%;
left:65%;
bottom:10%;
color:black;
font-weight:lighter;
padding:15px;
border-radius: 5px;
background: rgba(255,255,255,0.5);
}
.bold{
font-weight: bolder;
}
  </style>
</head>
<body>

<div id="overlay">
  <div id="image"><img src="<c:url value="/resources/items/moviee-overlay.jpg"></c:url>" alt="animation movie" class="overlay-img img-responsive">
  		<span class="close" onclick="off()">X</span>
  		<p class="info">Before she was<b>Wonder Woman</b>(Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that's raging in the outside world. </p>
  	</div>
</div>
<div id="overlay2">
  <div id="image"><img src="<c:url value="/resources/items/moviee-overlay2.jpg"></c:url>" alt="animation movie" class="overlay-img img-responsive">
  		<span class="close" onclick="off2()">X</span>
  		<p class="info"><b>Black Panther</b> is an upcoming American superhero film based on the Marvel Comics character of the same name, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures. It is intended to be the eighteenth film in the Marvel Cinematic Universe.</p>
  </div>
</div>
<div id="overlay3">
  <div id="image"><img src="<c:url value="/resources/items/moviee-overlay3.jpg"></c:url>" alt="animation movie" class="overlay-img img-responsive">
  		<span class="close" onclick="off3()">X</span>
  		<p class="info">Aron Ralston, a mountain climber, is on a hiking adventure in Utah when he gets trapped in a canyon. Soon, he takes desperate measures to survive and struggles for <b>127 hours</b> before he is rescued.</p>
  </div>
</div>
<div id="overlay4">
  <div id="image"><img src="<c:url value="/resources/items/moviee-overlay4.jpg"></c:url>" alt="animation movie" class="overlay-img img-responsive">
  		<span class="close" onclick="off4()">X</span>
  		<p class="info"> <b>Sherlock Holmes</b> is a fictional private detective created by British author Sir Arthur Conan Doyle. Known as a "consulting detective" in the stories, Holmes is known for his proficiency with observation, forensic science, and logical reasoning that borders on the fantastic, which he employs when investigating cases for a wide variety of clients, including Scotland Yard.</p>
  </div>
</div>


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
<p style="padding=0px;margin-bottom:0px; margin-left:30px;font-size:15px;font-weight: bold;display: block;">Select an image:</p>
<div class="col-xs-3"><a href="#" onclick="on()"><img src="<c:url value="/resources/items/moviee.jpg"></c:url>" alt="animation movie" class="inner-img img-responsive" onclick="closed()"></a></div>
<div class="col-xs-3"><a href="#" onclick="on2()"><img src="<c:url value="/resources/items/moviee2.jpg"></c:url>" alt="animation movie" class="inner-img img-responsive" onclick="closed()"></a></div>
<div class="col-xs-3"><a href="#" onclick="on3()"><img src="<c:url value="/resources/items/moviee3.jpg"></c:url>" alt="animation movie" class="inner-img img-responsive" onclick="closed()"></a></div>
<div class="col-xs-3"><a href="#" onclick="on4()"><img src="<c:url value="/resources/items/moviee4.jpg"></c:url>" alt="animation movie" class="inner-img img-responsive" onclick="closed()"></a></div>
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

function on() {
    document.getElementById("overlay").style.display = "block";
}

function off() {
    document.getElementById("overlay").style.display = "none";
}

function on2() {
    document.getElementById("overlay2").style.display = "block";
}

function off2() {
    document.getElementById("overlay2").style.display = "none";
}

function on3() {
    document.getElementById("overlay3").style.display = "block";
}

function off3() {
    document.getElementById("overlay3").style.display = "none";
}

function on4() {
    document.getElementById("overlay4").style.display = "block";
}

function off4() {
    document.getElementById("overlay4").style.display = "none";
}
</script>

</body>
</html>
