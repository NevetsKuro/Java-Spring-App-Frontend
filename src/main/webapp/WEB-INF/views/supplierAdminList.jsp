<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier List</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
th{
text-align: center;
border-left:1px solid #cccccc;
background-color: #f2f2f2;
}
#api{
text-align:center;
border-top:1px solid #cccccc;
background-color: #f2f2f2;
}
.btn{
box-shadow: 3px 3px 3px; 
}
#mainbody{
background-repeat: no-repeat;
background-position: center;
background-size: cover;
}
</style>
</head>
<body id="mainbody" background="<c:url value="/resources/items/wallpprs4.jpg"></c:url>" >

<jsp:include page="header.jsp"></jsp:include>

<div class="container table-responsive">
<h2>Supplier List</h2>
<hr/>
<table class="table table-hover" id="api">
<thead>
<tr>
<th class="info">Index</th>
<th>Id</th>
<th>Name</th>
<th class="danger">Action</th>
</tr>
</thead>
<tbody>
<c:if test="${empty supList}">
<tr align="center">
<td colspan="10">The supplier list is empty!!</td>
</tr>
</c:if>
<c:forEach var="sup" varStatus="st" items="${supList}">
<tr>
<td> <c:out value="${st.count }"></c:out></td>
<td> <c:out value="${sup.sid }"></c:out></td>
<td> <c:out value="${sup.supname}"></c:out></td>
<td class="span4">
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<a class="btn" role="button" href="${contextRoot}/Edit/${sup.sid}"><span class="glyphicon glyphicon-pencil" style="color:red"></span></a>
<a class="btn" role="button" href="/deleteSup/${sup.sid}"><span class="glyphicon glyphicon-remove" style="color:red"></span></a>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>