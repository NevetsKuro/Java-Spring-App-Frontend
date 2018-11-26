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

        <title>Testing Page</title>

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
                        <!-- banner -->
                        <div class="col-md-3">
                            <ul class="nav nav-tabs nav-stacked">
                                <li class="active"><a data-toggle="tab" href="#users">Users</a></li>
                                <li><a data-toggle="tab" href="#supplier">Supplier</a></li>
                                <li><a data-toggle="tab" href="#category">Category</a></li>
                                <li><a data-toggle="tab" href="#product">Product</a></li>
                            </ul>
                        </div>

                        <div class="col-md-9" style="min-height: 330px">
                            <div class="tab-content">
                                <div id="users" class="tab-pane fade in active">
                                    <h3>User Form</h3>
                                    <p>.</p>
                                </div>
                                <div id="supplier" class="tab-pane fade">

                                    <form method="post" action="saveSup" class="form-signin">
                                        <span id="reauth-email" class="reauth-email"></span>

                                        <h4 class="input-title">Supplier Name</h4>
                                        <input class="form-control" type="text" name="sname" required/>

                                        <br>
                                        <button class="btn btn-default btn-primary" type="submit">Save</button>
                                        <button class="btn btn-default btn-warning" type="reset">Cancel</button>
                                        <br>
                                    </form>
                                </div>
                                <div id="category" class="tab-pane fade">
                                    <h3>Category Form</h3>
                                    <form method="post" action="saveCat" class="form-signin">
                                        <span id="reauth-email" class="reauth-email"></span>

                                        <h4 class="input-title">Category Name</h4>
                                        <input class="form-control" type="text" name="cname" required/>

                                        <br>
                                        <button class="btn btn-default btn-primary" type="submit">Save</button>
                                        <button class="btn btn-default btn-warning" type="reset">Cancel</button>
                                        <br>
                                    </form>
                                </div>
                                <div id="product" class="tab-pane fade">
                                    <h3>Product Form</h3>
                                    <form method="post" action="saveProd" class="form-signin" enctype="multipart/form-data">
                                        <span id="reauth-email" class="reauth-email"></span>

                                        <div class="form-group">
                                            <label for="pName">Movie Name</label>
                                            <input type="text" class="form-control" id="pName" name="pName" placeholder="Enter Name">
                                        </div>

                                        <div class="form-group">
                                            <label for="pRating">Movie rating</label>
                                            <input type="text" class="form-control" id="pRating" name="pRating" placeholder="Enter Movie Rating">
                                        </div>

                                        <div class="form-group">
                                            <label for="pDescription">Movie description</label>
                                            <input type="text" class="form-control" id="pDescription" name="pDescription" placeholder="Enter Description">
                                        </div>

                                        <div class="form-group">
                                            <label for="pQuality">Movie quality</label>
                                            <input type="text" class="form-control" id="pQuality" name="pQuality" placeholder="Enter Quality">
                                        </div>

                                        <div class="form-group">
                                            <label for="pReleased">Movie released Date</label>
                                            <input type="text" class="form-control" id="pReleased" name="pReleased" placeholder="Enter Released Date">
                                        </div>

                                        <div class="form-group">
                                            <label for="pReleased">Movie Price</label>
                                            <input type="text" class="form-control" id="pPrice" name="pPrice" placeholder="Enter Price">
                                        </div>

                                        <div class="form-group">
                                            <label for="pQuality">Movie Stock</label>
                                            <input type="number" class="form-control" id="pQuality" name="pQuality" placeholder="Enter Quality">
                                        </div>

                                        <div class="form-group">
                                            <label for="pStock">Movie Time</label>
                                            <input type="number" class="form-control" id="pStock" name="pStock" placeholder="Enter Quality">
                                        </div>

                                        <div class="form-group">
                                            <label for="pFile">Movie Poster</label>
                                            <input type="file" class="form-control" id="pFile" name="pFile" placeholder="Enter Quality">
                                        </div>

                                        <div class="form-group">
                                            <table>
                                                <tr>
                                                    <td><label>Select Supplier:&nbsp;&nbsp;&nbsp;</label></td>
                                                    <td>
                                                        <select class="form-control" name="pSupplier" required>
                                                            <option value="">---Select Supplier---</option>
                                                        <c:forEach items="${supList}" var="sup">
                                                            <option value="${sup.sid}">${sup.sid}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>

                                    <div class="form-group">
                                        <table>
                                            <tr>
                                                <td><label>Select Category:&nbsp;&nbsp;&nbsp;</label></td>
                                                <td>
                                                    <select class="form-control" name="pCategory" required>
                                                        <option value="">---Select Category---</option>
                                                        <c:forEach items="${catList}" var="cat">
                                                            <option value="${cat.cid}">${cat.cid}</option>
                                                        </c:forEach>
                                                    </select>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>

                                    <br>
                                    <button class="btn btn-default btn-primary" type="submit">Save</button>
                                    <button class="btn btn-default btn-warning" type="reset">Cancel</button>
                                    <br>
                                </form>
                            </div>
                        </div>
                    </div>
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
