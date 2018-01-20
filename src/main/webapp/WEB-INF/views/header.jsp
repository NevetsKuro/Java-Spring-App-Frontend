<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Insert title here</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style type="text/css">
/*   	search  	 */
  	#myli>a:hover{
  	text-decoration: none;
  	color: black;  
  	}
  	#myli{
  	list-style-type:none;
  	margin:0px;
  	padding: 0px; 
  	}
  	#searchbut{
  		height:40px;
  	}
	#myInput{
		margin-bottom:-5px;
		margin-top:5px;
	    width: 230px;
	    height: 40px;
	    box-sizing: border-box;
	    border: 1px solid #gray;
	    border-radius: 4px;
	    font-size: 16px!important;
	    background-color: white;
	    background-position: 10px 10px;
	    background-repeat: no-repeat;
	    padding: 1px 10px 1px 10px;
	    }
	    .dropdwn {
		    position: relative;
		    display: inline-block;
		}
	    #dropdown-content {
	    	display: none;
	        position: absolute;
		    z-index: 1;
		}
		#myUL{
			list-style-type:none;
			background: #ff9999;
			width:230px;
		}
/* 		other buttons	 */
		.userDisabledButton,.logoutButton, .loginButton, .signInButtton{
			border: 1px solid #cccccc;
			border-radius:3px; 
			padding: 7.5px;
		}
		.loginButton:hover, .signInButtton:hover{
			border: 1px solid #cccccc;
			background-color:#cccccc;
			border-radius:3px;  
		}
		.active1{
			color:white;
		}
   </style>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <span class="navbar-brand"><i class="active1"> TokeiMovies</i></span>
    </div>
    
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <%
        	Boolean ses1 = request.isUserInRole("ROLE_ADMIN");
        %>
        <li><a href="HomePage"><span class="glyphicon glyphicon-home"></span></a></li>
        <c:if test="<%=ses1 %>">
        <li><a href="goAEntry">Admin</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin List<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="supplierList">Supplier</a></li>
            <li><a href="productList">Product</a></li>
            <li><a href="categoryList">Category</a></li>
          </ul>
        </li>
        </c:if>
        <li>
        <form>
        <div class="dropdwn">
        <div class="drp-btn">
        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.."/>
        <button id="searchbut" type="submit" disabled="disabled"><i class="fa fa-search"></i></button>
		</div>
		<div id="dropdown-content">
		<ul id="myUL" >
		  <li id="myli"><a href="productDetail?pid=4">American made</a></li>
		  <li id="myli"><a href="productDetail?pid=2">Doctor Strange</a></li>
		
		  <li id="myli"><a href="productDetail?pid=5">Flatliners</a></li>
		  <li id="myli"><a href="productDetail?pid=8">Into the deep</a></li>
		
		  <li id="myli"><a href="productDetail?pid=2">Deadpool</a></li>
		  <li id="myli"><a href="#">Christina</a></li>
		  <li id="myli"><a href="#">Cindy</a></li>
		</ul>
		</div>
		</div>
        </form>
        </li>
        <c:if test="<%=ses1 %>">
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        <ul class="dropdown-menu">
        <c:forEach var="catVal" items="${catList}">
        	<li><a href="${pageContext.request.contextPath}/prodCatList?cid=${catVal.cid}">${catVal.catname}</a></li>
        </c:forEach>
        </ul>
      	</li>
      	
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Supplier<span class="caret"></span></a>
        <ul class="dropdown-menu">
        <c:forEach var="supVal" items="${supList}">
        	<li><a href="${pageContext.request.contextPath}/prodSupList?sid=${supVal.sid}">${supVal.supname}</a></li>
        </c:forEach>
        </ul>
      	</li>
        </c:if>
        <li><a href="showCart"><i class="glyphicon glyphicon-shopping-cart"></i> Cart</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      <c:if test="${pageContext.request.userPrincipal.name==null}">
        <li><a href="Register"><span class="loginButton"><span class="glyphicon glyphicon-user"></span> Sign Up</span></a></li>
        <li><a href="goToLogin"><span class="signInButton"><span class="glyphicon glyphicon-log-in"></span>Log In</span></a></li>
      </c:if>
      
      <c:if test="${pageContext.request.userPrincipal.name!=null}">
        <li class="userDisabledButton" style="padding:5px;margin:9px;color:#9d9d9d;">
        Welcome: <c:out value="${pageContext.request.userPrincipal.name}"></c:out></li>
        <li class=""><a href="${pageContext.request.contextPath}/logout"><span class="logoutButton"><i class="glyphicon glyphicon-log-out"></i> Logout</span></a></li>
      </c:if>
      
      </ul>
    </div>
  </div>
</nav>
<br>
<br>
<br>
<br>
<br>
<br>

<!-- function for search  -->
   <script type="text/javascript">
   function myFunction() {
       var input, filter, ul, li, a, i;
       input = document.getElementById("myInput");
       filter = input.value.toUpperCase();
       ul = document.getElementById("myUL");
       li = ul.getElementsByTagName("li");
	   cl= document.getElementById("dropdown-content");
	   
       for (i = 0; i < li.length; i++) {
    	   a = li[i].getElementsByTagName("a")[0];
           if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
        	   cl.style.display="block";
           } else {
        	   li[i].style.display = "none";
           }
       }
   }
   function closelist(){
	   document.getElementById("myUL").style.display = "none";
	   document.getElementById("myInput").value="";
   }
   function showlist(){
	   document.getElementById("myUL").style.display = "";
   }
   </script>

</body>
</html>