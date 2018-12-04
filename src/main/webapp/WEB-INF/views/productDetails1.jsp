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

            <div class="section">
                <div class="container">

                    <div class="col-lg-12">
                        <p class="lead">Information.</p>
                        
                        <div id="productMain" class="row">
                            <div class="col-md-6 col-xl-12">
                                <img src="data:image/jpg;base64,${prod.imgname}" alt="" class="img-fluid">
                            </div>
                            <div class="col-md-6 col-xl-12">
                                <div class="box">
                                    <form>
                                        
                                    <label>Price: </label><span class="price" style="text-align: center;font-size: 3.5rem;margin: 15px 0;color: #555;">$124.00</span>
                                    <br>
                                    <br>
                                    <br>
                                    <ul style="font-size: large;font-family: monospace;">
                                        <li>Movie details:</li>
                                        <li>Movie-Name: ${prod.name}</li>
                                        <li>Amount: ${prod.price}</li>
                                        <li>Provider: ${prod.supplier.supname}</li>
                                        <li>Quantity: <input type="number" name="pQty" form="f1" max="${prod.stock}" required/></li>
                                    </ul>
                                        <br>
                                    <br>
                                    <br>
                                    <br>
                                        <p>
                                            <button type="submit" class="btn btn-template-outlined"><i class="fa fa-shopping-cart"></i> Add to cart</button>
                                            <button data-toggle="tooltip" data-placement="top" title="" class="btn btn-ghost" data-original-title="Add to wishlist"><i class="fa fa-heart-o"></i></button>
                                        </p>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div id="details" class="box mb-4 mt-4">
                        <p></p>
                        <h4>Product description</h4>
                        <p>${prod.description}</p>
                        <h4>Released on:</h4>
                        <ul>
                            <li>${prod.released}</li>
                        </ul>
                        <h4>Quality</h4>
                        <ul>
                            <li>${prod.quality}</li>
                        </ul>
                        <blockquote class="blockquote">
                            <p class="mb-0"><em>“Don’t ever let somebody tell you you can’t do something, not even me. Alright? You dream, you gotta protect it. People can’t do something themselves, they wanna tell you you can’t do it. If you want something, go get it. Period.”

– Chris Gardner, from The Pursuit of Happyness</em></p>
                        </blockquote>
                    </div>
                    <div id="product-social" class="box social text-center mb-5 mt-5">
                        <h4 class="heading-light">Show it to your friends</h4>
                        <ul class="social list-inline">
                            <li class="list-inline-item"><a href="#" data-animate-hover="pulse" class="external facebook"><i class="fa fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="#" data-animate-hover="pulse" class="external gplus"><i class="fa fa-google-plus"></i></a></li>
                            <li class="list-inline-item"><a href="#" data-animate-hover="pulse" class="external twitter"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" data-animate-hover="pulse" class="email"><i class="fa fa-envelope"></i></a></li>
                        </ul>
                    </div>

                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="box text-uppercase mt-0 mb-small">
                                <h3>You may also like these products</h3>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="product">
                                <div class="image"><a href="#"><img src="https://d19m59y37dris4.cloudfront.net/universal/2-0-1/img/product2.jpg" alt="" class="img-fluid image1"></a></div>
                                <div class="text">
                                    <h3 class="h5"><a href="shop-detail.html">Fur coat</a></h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="product">
                                <div class="image"><a href="#"><img src="https://d19m59y37dris4.cloudfront.net/universal/2-0-1/img/product3.jpg" alt="" class="img-fluid image1"></a></div>
                                <div class="text">
                                    <h3 class="h5"><a href="shop-detail.html">Fur coat</a></h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="product">
                                <div class="image"><a href="#"><img src="https://d19m59y37dris4.cloudfront.net/universal/2-0-1/img/product1.jpg" alt="" class="img-fluid image1"></a></div>
                                <div class="text">
                                    <h3 class="h5"><a href="shop-detail.html">Fur coat</a></h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="box text-uppercase mt-0 mb-small">
                                <h3>Products viewed recently</h3>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="product">
                                <div class="image"><a href="#"><img src="https://d19m59y37dris4.cloudfront.net/universal/2-0-1/img/product3.jpg" alt="" class="img-fluid image1"></a></div>
                                <div class="text">
                                    <h3 class="h5"><a href="shop-detail.html">Fur coat</a></h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="product">
                                <div class="image"><a href="#"><img src="https://d19m59y37dris4.cloudfront.net/universal/2-0-1/img/product1.jpg" alt="" class="img-fluid image1"></a></div>
                                <div class="text">
                                    <h3 class="h5"><a href="shop-detail.html">Fur coat</a></h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="product">
                                <div class="image"><a href="#"><img src="https://d19m59y37dris4.cloudfront.net/universal/2-0-1/img/product2.jpg" alt="" class="img-fluid image1"></a></div>
                                <div class="text">
                                    <h3 class="h5"><a href="shop-detail.html">Fur coat</a></h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
