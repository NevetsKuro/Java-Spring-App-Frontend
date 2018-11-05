<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
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
  		height:30px;
  		border-radius: 40%;
  	}
  	.fa{
  		margin-bottom: 10px;
  	}
	#myInput{
		margin-bottom:-5px;
		margin-top:10px;
	    width: 230px;
	    height: 35px;
	    box-sizing: border-box;
	    border: 1px solid #gray;
	    border-radius: 4px;
	    font-size: 16px!important;
	    background-color: white;
	    background-position: 10px 10px;
	    background-repeat: no-repeat;
	    padding: 1px 10px 1px 10px;
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
			font-size: 25px;
		}
   </style>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" style="font-size: 16px;">
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
        	Boolean ses1 = request.isUserInRole("Role_ADMIN");
                boolean b1 = SecurityContextHolder.getContext().getAuthentication().getAuthorities().toString().contains("ADMIN");
        %>
        <li><a href="HomePage"><span class="glyphicon glyphicon-home"></span></a></li>
        <c:if test="<%=b1 %>">
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
        <form action="prodSearch" method="post">
        <input type="text" id="myInput" name="pname" placeholder="Search for movies.." required="required"/>
        <button id="searchbut" class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
        </form>
        </li>
        <c:if test="<%=b1 %>">
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
        <li><a href="goToLogin"><span class="signInButton"><span class="glyphicon glyphicon-log-in"></span> Log In</span></a></li>
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

</body>
</html>