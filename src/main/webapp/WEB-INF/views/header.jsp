<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
      <a class="navbar-brand" href="#">OrkutMovies</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="HomePage"><span class="glyphicon glyphicon-home"></span></a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin List<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="supplierAdminList">Supplier</a></li>
            <li><a href="productAdminList">Product</a></li>
            <li><a href="categoryAdminList">Category</a></li>
          </ul>
        </li>
        
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        <ul>
        <c:forEach var="catVal" items="${catList}">
        	<li><a href="${pageContext.request.contextPath}/prodCustList?cid=${catVal.cid}">${catVal.catname}</a></li>
        </c:forEach>
        </ul>
      	</li>
      	
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Supplier<span class="caret"></span></a>
        <ul>
        <c:forEach var="supVal" items="${supList}">
        	<li><a href="${pageContext.request.contextPath}/prodSupList?sid=${supVal.sid}">${supVal.supname} }</a></li>
        </c:forEach>
        </ul>
      	</li>
        <li><a href="#">Cart</a></li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="logIn"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      </ul>
    </div>
  </div>
</nav>

</body>
</html>