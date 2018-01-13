<%-- <%@ page language="j	ava" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style type="text/css">
  	#searchbut{
  		height:40px;
  	}
	input[type=text] {
		margin-bottom:-5px;
		margin-top:5px;
	    width: 230px;
	    height: 40px;
	    box-sizing: border-box;
	    border: 1px solid #gray;
	    border-radius: 4px;
	    font-size: 16px;
	    background-color: white;
	    background-position: 10px 10px;
	    background-repeat: no-repeat;
	    padding: 1px 10px 1px 10px;
	    }
	    }
	    .dropdwn {
		    position: relative;
		    display: inline-block;
		}
	    .dropdown-content {
	    	display: none;
	    	list-style-type:none;
		    position: absolute;
		    z-index: 1;
		}
   </style>

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand active" href="Home">OrkutMovies</a>
    </div>
    
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <%	
        	Boolean ses1 = request.isUserInRole("ROLE_ADMIN");
         %>
        <li><a href="HomePage"><span class="glyphicon glyphicon-home"></span></a></li>
        <c:if test="<%=ses1 %>">
        <li><a href="goAEntry">Admin</a></li>
        </c:if>
        <li class="dropdown">         
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin List<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="supplierList">Supplier</a></li>
            <li><a href="productList">Product</a></li>
            <li><a href="categoryList">Category</a></li>
          </ul>
        </li>
        <li>
        <form>
        <div class="dropdwn">
        <div class="drp-btn">
        <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.."/>
        <button id="searchbut" type="submit" ><i class="fa fa-search"></i></button>
		</div>
		<div class="dropdown-content">
		<ul id="myUL" >
		  <li><a href="productDetail?pid=4">American made</a></li>
		  <li><a href="productDetail?pid=2">Doctor Strange</a></li>
		
		  <li><a href="productDetail?pid=5">Flatliners</a></li>
		  <li><a href="productDetail?pid=8">Into the deep</a></li>
		
		  <li><a href="productDetail?pid=1">Calvin</a></li>
		  <li><a href="#">Christina</a></li>
		  <li><a href="#">Cindy</a></li>
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
        <li><a href="#"><i class="fa fa-cart"></i>Cart</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      <c:if test="${pageContext.request.userPrincipal.name==null}">
        <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="goToLogin"><span class="glyphicon glyphicon-log-in"></span> Log In</a></li>
      </c:if>
      
      <c:if test="${pageContext.request.userPrincipal.name!=null}">
        <li style="padding-top:14px;color:#9d9d9d;">
        Welcome: ${pageContext.request.userPrincipal.name}</li>
        <li><a href="${pageContext.request.contextPath}/logout"> Logout</a></li>
      </c:if>
      
      </ul>
    </div>
  </div>
</nav>

<!-- function for search  -->
   <script type="text/javascript">
   function myFunction() {
       var input, filter, ul, li, a, i;
       input = document.getElementById("myInput");
       filter = input.value.toUpperCase();
       ul = document.getElementById("myUL");
       li = ul.getElementsByTagName("li");
	   cl= document.getElementsByClassName("dropdwn-content");
	   
       for (i = 0; i < li.length; i++) {
    	   a = li[i].getElementsByTagName("a")[0];
           if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
        	   cl.setAttribute('style', 'display:block !important');
        	   li[i].style.display = "";
           } else {
        	   li[i].style.display = "none";
           }
       }
   }
   </script>


</body>
</html>