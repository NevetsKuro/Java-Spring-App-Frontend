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
            <div class="section" style="margin-bottom: 200px;">
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
                                    <h3>Product Form</h3>
                                    <form method="post" action="saveProd" class="form-signin" enctype="multipart/form-data">

                                        <div class="col-md-6 col-xl-12">
                                            <div class="form-group">
                                                <label for="user_name">User Name:</label>
                                                <input type="text" class="form-control" id="user_name" name="user_name" placeholder="Enter Name">
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-xl-12"> 
                                            <div class="form-group" style="height: 62px;">
                                                <label for="user_gender">Gender:</label><br>
                                                <label class="radio-inline">
                                                    <input type="radio" name="user_gender" id="user_gender1" value="Male"> Male
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="user_gender" id="user_gender2" value="Female"> Female
                                                </label>
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xl-12">
                                            <div class="form-group">
                                                <label for="user_password">Password:</label>
                                                <input type="text" class="form-control" id="user_password" name="user_password" placeholder="Enter Password">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xl-12"> 
                                            <div class="form-group ">
                                                <label for="user_passwordc">Confirm Password:</label>
                                                <input type="text" class="form-control" id="user_passwordc" name="user_passwordc" placeholder="Enter Password Again">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xl-12"> 
                                            <div class="form-group">
                                                <label for="user_role">Role:</label>
                                                <input type="text" class="form-control" id="user_role" name="user_role" placeholder="Enter user's role(e.g.Role_ADMIN/Role_USER)">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xl-12"> 
                                            <div class="form-group">
                                                <label for="user_email">Email:</label>
                                                <input type="text" class="form-control" id="user_email" name="user_email" placeholder="Enter Email Id">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="user_address">Address:</label>
                                                <textarea  class="form-control" id="user_address" name="user_address" placeholder="Enter Personal Address"></textarea>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div id="supplier" class="tab-pane fade ">
                                    <h3>Supplier Form</h3>
                                    <br>
                                    <br>
                                    <form method="post" action="saveSup" class="form-signin">
                                        <span id="reauth-email" class="reauth-email"></span>

                                        <h4 class="input-title">Supplier Name</h4>
                                        <input class="form-control" type="text" name="sname" style="width: 40%" placeholder="Enter Supplier name" required/>

                                        <br>
                                        <button class="btn btn-default btn-primary" type="submit">Save</button>
                                        <button class="btn btn-default btn-warning" type="reset">Cancel</button>
                                        <br>
                                    </form>
                                </div>
                                <div id="category" class="tab-pane fade">
                                    <h3>Category Form</h3>
                                    <br>
                                    <br>
                                    <form method="post" action="saveCat" class="form-signin">
                                        <span id="reauth-email" class="reauth-email"></span>

                                        <h4 class="input-title">Category Name</h4>
                                        <input class="form-control" type="text" name="cname" style="width: 40%" placeholder="Enter category name" required/>

                                        <br>
                                        <button class="btn btn-default btn-primary" type="submit">Save</button>
                                        <button class="btn btn-default btn-warning" type="reset">Cancel</button>
                                        <br>
                                    </form>
                                </div>
                                <div id="product" class="tab-pane fade">
                                    <h3>Product Form</h3>
                                    <br>
                                    <br>
                                    <form method="post" action="saveProd" class="form-signin" enctype="multipart/form-data">
                                        <span id="reauth-email" class="reauth-email"></span>

                                        <div class="col-md-6 col-xl-12">
                                            <div class="form-group">
                                                <label for="pName">Movie Name</label>
                                                <input type="text" class="form-control" id="pName" name="pName" placeholder="Enter Name">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xl-12">
                                            <div class="form-group">
                                                <label for="pRating">Movie rating</label>
                                                <input type="text" class="form-control" id="pRating" name="pRating" placeholder="Enter Movie Rating">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xl-12">
                                            <div class="form-group">
                                                <label for="pDescription">Movie description</label>
                                                <input type="text" class="form-control" id="pDescription" name="pDescription" placeholder="Enter Description">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xl-12">
                                            <div class="form-group">
                                                <label for="pQuality">Movie quality</label>
                                                <input type="text" class="form-control" id="pQuality" name="pQuality" placeholder="Enter Quality">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xl-12">
                                            <div class="form-group">
                                                <label for="pReleased">Movie released Date</label>
                                                <input type="text" class="form-control" id="pReleased" name="pReleased" placeholder="Enter Released Date">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xl-12">
                                            <div class="form-group">
                                                <label for="pReleased">Movie Price</label>
                                                <input type="text" class="form-control" id="pPrice" name="pPrice" placeholder="Enter Price">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xl-12">
                                            <div class="form-group">
                                                <label for="pQuality">Movie Stock</label>
                                                <input type="number" class="form-control" id="pQuality" name="pQuality" placeholder="Enter Quality">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xl-12">
                                            <div class="form-group">
                                                <label for="pStock">Movie Time</label>
                                                <input type="number" class="form-control" id="pStock" name="pStock" placeholder="Enter Quality">
                                            </div>
                                        </div>

                                        <div class="col-md-6 col-xl-12">
                                            <div class="form-group">
                                                <label for="pFile">Movie Poster</label>
                                                <input type="file" class="form-control" id="pFile" name="pFile" placeholder="Enter Quality">
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
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
                                    </div>

                                    <div class="col-lg-12">
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
                                    </div>

                                    <br>
                                    <div class="col-md-12">
                                    <button class="btn btn-default btn-primary" type="submit">Save</button>
                                    <button class="btn btn-default btn-warning" type="reset">Cancel</button>
                                    </div>
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
