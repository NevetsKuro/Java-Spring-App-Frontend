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
        
        <li><a href="#">Cart</a></li>
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

</body>
</html>