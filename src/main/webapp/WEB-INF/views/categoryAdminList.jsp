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

<jsp:include page="header.jsp"></jsp:include>

<div class="container">
<table class="table table-hover" id="api" class="display" border="1">
<tr>
<td>Index</td>
<td>Category Id</td>
<td>Category Name</td>
<td>Action</td>
</tr>

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
<a class="btn" role="button" href="${contextRoot}/Edit?sid=${cat.cid}"><span class="glyphicon glyphicon-pencil" style="color:red"></span></a>
<a class="btn" role="button" href="/deleteCat/${cat.cid}"><span class="glyphicon glyphicon-remove" style="color:red"></span></a>
</td>
</tr>
</c:forEach>


</table>
</div>
</body>
</html>