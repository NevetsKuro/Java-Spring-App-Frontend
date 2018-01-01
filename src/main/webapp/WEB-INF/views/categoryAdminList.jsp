<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table class="table table-hover" id="api" class="display" border="1">
<tr>
<td>Index</td>
<td>Category Id</td>
<td>Category Name</td>
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
</tr>
</c:forEach>


</table>

</body>
</html>