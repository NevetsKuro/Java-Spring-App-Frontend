<%-- 
    Document   : test
    Created on : 20 Nov, 2018, 2:31:34 PM
    Author     : wrtrg2
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Product List Page</title>

        <jsp:include page="links.jsp"/>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
                  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
                <![endif]-->

    </head>

    <body>

        <jsp:include page="header1.jsp"></jsp:include>

            <hr>
            <!-- section -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">

                        <table class="table table-responsive table-bordered">
                            <thead>
                                <tr>
                                    <th class="info">Index</th>
                                    <th>Product Id</th>
                                    <th>Product Name</th>
                                    <th>Product Description</th>
                                    <th>Product Released</th>
                                    <th>Price</th>
                                    <th>Time</th>
                                    <th>Posted on</th>
                                    <th>Poster</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:if test="${empty prodList}">
                                <tr align="center">
                                    <td colspan="10">The product list is empty!!</td>
                                </tr>
                            </c:if>
                            <c:forEach var="p" varStatus="st" items="${prodList}">
                                <tr>
                                    <td><c:out value="${st.count}"></c:out></td>
                                    <td><c:out value="${p.id}"></c:out></td>
                                    <td><c:out value="${p.name}"></c:out></td>
                                    <td ><c:out value="${p.description}"></c:out></td>
                                    <td><c:out value="${p.released }"></c:out></td>
                                    <td><c:out value="${p.price }"></c:out></td>
                                    <td><c:out value="${p.time }"></c:out></td>
                                    <td><c:out value="${p.proddate }"></c:out></td>
                                    <c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
                                    <td><img src="data:image/jpg;base64,${p.imgname}" width="80" height="50" alt="movie-image"/></td>
                                    <!--<td><img src=" <cc:.."/resources/items/..p.imgname}"..>.." height="50" width="50" ></td>-->
                                    <c:set var="id" value="${p.id}"/>
                                    <c:forEach var="il" items="${imageList}">
                                        <c:set var="rid" value="${il.id}"/>
                                        <c:if test="${id==rid}">
                                            <td><img src="data:image/jpg;base64,${il.base64str}" data-id="${rid}" width="80" height="50" alt="movie-image"/></td>
                                            </c:if>
                                        </c:forEach>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>


                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->

        <!-- FOOTER -->
        <jsp:include page="footer1.jsp"></jsp:include>
        <!-- /FOOTER -->

        <script src="/MyProjee/resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="/MyProjee/resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/MyProjee/resources/js/slick.min.js" type="text/javascript"></script>
        <script src="/MyProjee/resources/js/nouislider.min.js" type="text/javascript"></script>
        <script src="/MyProjee/resources/js/jquery.zoom.min.js" type="text/javascript"></script>
        <script src="/MyProjee/resources/js/main.js" type="text/javascript"></script>

    </body>

</html>
