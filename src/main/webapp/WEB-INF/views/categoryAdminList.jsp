<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Category Table</title>
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
border-top:1px solid #cccccc;
text-align: center;
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
*{
	font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
}
</style>
</head>
<body id="mainbody" background="<c:url value="/resources/items/wallpprs4.jpg"></c:url>">
<jsp:include page="header.jsp"></jsp:include>
<br>
<div class="container table-responsive">
<h2>Category List</h2>
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
<c:if test="empty catList">
<tr align="center">
<td colspan="10">The category list is empty!!</td>
</tr>
</c:if>
<c:forEach var="cat" varStatus="st" items="${catList}">
<tr>
<td> <c:out value="${st.count }"></c:out></td>
<td> <c:out value="${cat.cid }"></c:out></td>
<td> <c:out value="${cat.catname}"></c:out></td>
<td class="span4">
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<a class="btn" role="button" href="deleteCat/${cat.cid}"><span class="glyphicon glyphicon-remove" style="color:red"></span></a>
</td>
</tr>
</c:forEach>

</tbody>
</table>
</div>
</body>
</html>