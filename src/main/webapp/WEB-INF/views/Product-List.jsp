<%-- 
    Document   : Product-List
    Created on : 21 Nov, 2018, 3:14:59 PM
    Author     : wrtrg2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

            <!-- section -->
            <div class="section">
                <!-- container -->
                <div class="container">


                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="section-title">
                                <h2 class="title">Latest Products</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                    <c:forEach var="prods" items="${prodList}" varStatus="i">
                        <!-- Product Single -->
                        <div class="col-md-3 col-sm-6 col-xs-6">
                            <div class="product product-single">
                                <div class="product-thumb">
                                    <c:if test="${prods.discount ne 0}">
                                    <div class="product-label">
                                        <span>New</span>
                                        <span class="sale">-${prods.discount}%</span>
                                    </div>
                                    </c:if>
                                    <button class="main-btn quick-view" data-id="${prods.id}"><i class="fa fa-search-plus"></i> Quick view</button>
                                    <img src="data:image/jpg;base64,${prods.imgname}" alt="">
                                </div>
                                <div class="product-body">
                                    <h3 class="product-price"><span>$</span> ${prods.price}</h3>
                                    <div class="product-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o empty"></i>
                                    </div>
                                    <h2 class="product-name"><a href="#">${prods.name}</a></h2>
                                    <div class="product-btns">
                                        <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                        <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                                        <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /Product Single -->
                    <c:if test="${i.count + 1 % 4 == 0} ">
                            </div>
                        <c:if test="${prodList.size()-1 != i.count}">
                            <div class="row">
                        </c:if>
                    </c:if>
                    </c:forEach>
                        
                        <!-- Product Single -->
<!--                        <div class="col-md-3 col-sm-6 col-xs-6">
                            <div class="product product-single">
                                <div class="product-thumb">
                                    <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
                                    <img src="/MyProjee/resources/img/product01.jpg" alt="">
                                </div>
                                <div class="product-body">
                                    <h3 class="product-price">$32.50</h3>
                                    <div class="product-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o empty"></i>
                                    </div>
                                    <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                    <div class="product-btns">
                                        <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                        <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                                        <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>-->
                        <!-- /Product Single -->

                        <!-- Product Single -->
                        <!--<div class="col-md-3 col-sm-6 col-xs-6">
                            <div class="product product-single">
                                <div class="product-thumb">
                                    <div class="product-label">
                                        <span>New</span>
                                        <span class="sale">-20%</span>
                                    </div>
                                    <button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
                                    <img src="/MyProjee/resources/img/product02.jpg" alt="">
                                </div>
                                <div class="product-body">
                                    <h3 class="product-price">$32.50 <del class="product-old-price">$45.00</del></h3>
                                    <div class="product-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o empty"></i>
                                    </div>
                                    <h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
                                    <div class="product-btns">
                                        <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                        <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                                        <button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                                    </div>
                                </div>
                            </div>
                        </div>-->
                        <!-- /Product Single -->
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /section -->
            </div>
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

