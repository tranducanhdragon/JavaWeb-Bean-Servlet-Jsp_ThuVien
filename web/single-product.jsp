<%-- 
    Document   : single-product
    Created on : Sep 29, 2020, 10:37:25 AM
    Author     : DucAnhTran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.SachView" %>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <jsp:include page="header.jsp"></jsp:include>
    </head>


        <body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
            <div id="home">
                <!-- header -->
                <!-- navbar -->
            <jsp:include page="navbar.jsp"></jsp:include>
                <!-- //navbar ends here -->
                <!-- banner -->
                <div class="banner-bg-inner">
                    <!-- banner-text -->
                    <div class="banner-text-inner">
                        <div class="container">
                            <h2 class="title-inner">
                                world of reading
                            </h2>

                        </div>
                    </div>
                    <!-- //banner-text -->
                </div>
                <!-- //banner -->
                <!-- breadcrumbs -->
                <div class="crumbs text-center">
                    <div class="container">
                        <div class="row">
                            <ul class="btn-group btn-breadcrumb bc-list">
                                <li class="btn btn1">
                                    <a href="index.jsp">
                                        <i class="glyphicon glyphicon-home"></i>
                                    </a>
                                </li>
                                <li class="btn btn2">
                                    <a href="shop.jsp">Product Catalogue</a>
                                </li>
                                <li class="btn btn3">
                                    <a href="single_product.jsp">Single product</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--//breadcrumbs ends here-->
                <!-- Single -->
                <div class="innerf-pages section">
                    <div class="container">
                        <div class="col-md-4 single-right-left ">
                            <% SachView sv = (SachView)request.getAttribute("ChiTietSachView"); %>
                            <div class="grid images_3_of_2">
                                <div class="flexslider1">
                                    <ul class="slides">
                                        <li data-thumb="images/s1.jpg">
                                            <div class="thumb-image">
                                                <img src='<%="images/"+sv.getAnhDaiDien()%>' data-imagezoom="true" alt=" " class="img-responsive"> </div>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            
                        </div>
                        <div class="col-md-8 single-right-left simpleCart_shelfItem">
                            <h3>
                                <%= sv.getTenSach() %>
                            </h3>
                            <p>by
                                <a href="#"><%= sv.getTenTacGia() %></a>
                            </p>
                            
                            <div class="desc_single">
                                <h5>Mô tả</h5>
                                <p>
                                    Thể Loại: <%= sv.getTenTheLoai() %>
                                    <br/>
                                    Nhà xuất bản: <%= sv.getTenNXB() %>
                                </p>
                            </div>
                            
                            <div class="clearfix"></div>
                            <div class="description">
                                <h5>Check delivery, payment options and charges at your location</h5>
                                <form action="#" method="post">
                                    <input type="text" value="Enter pincode" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Enter pincode';
                                            }"
                                           required="">
                                    <input type="submit" value="Check">
                                </form>
                            </div>
                            <div class="occasion-cart">
                                <div class="chr single-item single_page_b">
                                    <form action="ControllerGioHang" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1">
                                        <input type="hidden" name="chr_item" value="Single book">
                                        <input type="hidden" name="amount" value="100.00">
                                        <button type="submit" class="chr-cart pchr-cart">
                                            <i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                        <a href="#" data-toggle="modal" data-target="#myModal1"></a>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <!-- /new_arrivals -->
                <div class="section singlep_btm">
                    <div class="container">
                        <div class="new_arrivals">
                            <h4 class="rad-txt">
                                <span class="abtxt1">featured</span>
                                <span class="abtext"> products</span>
                            </h4>
                            <!-- row3 -->
                            <div class="col-md-3 product-men">
                                <div class="product-chr-info chr">
                                    <div class="thumbnail">
                                        <a href="single_product.jsp">
                                            <img src="images/lib7.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="caption">
                                        <h4>Marketing</h4>
                                        <p>Scott Harris</p>
                                        <div class="matrlf-mid">
                                            <ul class="rating">
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star gray-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star gray-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <ul class="price-list">
                                                <li>$ 180.00</li>
                                                <li>
                                                    $220.00
                                                </li>
                                            </ul>

                                            <div class="clearfix"> </div>
                                        </div>
                                        <form action="#" method="post">
                                            <input type="hidden" name="cmd" value="_cart">
                                            <input type="hidden" name="add" value="1">
                                            <input type="hidden" name="chr_item" value="Book1">
                                            <input type="hidden" name="amount" value="180.00">
                                            <button type="submit" class="chr-cart pchr-cart">Add to cart
                                                <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                            </button>
                                            <a href="#" data-toggle="modal" data-target="#myModal1"></a>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 product-men">
                                <div class="product-chr-info chr">
                                    <div class="thumbnail">
                                        <a href="single_product.jsp">
                                            <img src="images/lib1.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="caption">
                                        <h4>online business</h4>
                                        <p>Scott Harris</p>
                                        <div class="matrlf-mid">
                                            <ul class="rating">
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <ul class="price-list">
                                                <li>$ 330.00</li>
                                                <li>
                                                    $560.00
                                                </li>
                                            </ul>

                                            <div class="clearfix"> </div>
                                        </div>
                                        <form action="#" method="post">
                                            <input type="hidden" name="cmd" value="_cart">
                                            <input type="hidden" name="add" value="1">
                                            <input type="hidden" name="chr_item" value="Book2">
                                            <input type="hidden" name="amount" value="330.00">
                                            <button type="submit" class="chr-cart pchr-cart">Add to cart
                                                <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                            </button>
                                            <a href="#" data-toggle="modal" data-target="#myModal1"></a>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 product-men">
                                <div class="product-chr-info chr">
                                    <div class="thumbnail">
                                        <a href="single_product.jsp">
                                            <img src="images/lib2.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="caption">
                                        <h4>kids</h4>
                                        <p>Cordebard</p>
                                        <div class="matrlf-mid">
                                            <ul class="rating">
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star gray-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <ul class="price-list">
                                                <li>$ 280.00</li>
                                                <li>
                                                    $500.00
                                                </li>
                                            </ul>

                                            <div class="clearfix"> </div>
                                        </div>
                                        <form action="#" method="post">
                                            <input type="hidden" name="cmd" value="_cart">
                                            <input type="hidden" name="add" value="1">
                                            <input type="hidden" name="chr_item" value="Book3">
                                            <input type="hidden" name="amount" value="280.00">
                                            <button type="submit" class="chr-cart pchr-cart">Add to cart
                                                <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                            </button>
                                            <a href="#" data-toggle="modal" data-target="#myModal1"></a>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 product-men">
                                <div class="product-chr-info chr">
                                    <div class="thumbnail">
                                        <a href="single_product.jsp">
                                            <img src="images/lib3.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="caption">
                                        <h4>work from home</h4>
                                        <p>Cordebard</p>
                                        <div class="matrlf-mid">
                                            <ul class="rating">
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <span class="fa fa-star yellow-star" aria-hidden="true"></span>
                                                    </a>
                                                </li>
                                            </ul>
                                            <ul class="price-list">
                                                <li>$ 140.00</li>
                                                <li>
                                                    $200.00
                                                </li>
                                            </ul>

                                            <div class="clearfix"> </div>
                                        </div>
                                        <form action="#" method="post">
                                            <input type="hidden" name="cmd" value="_cart">
                                            <input type="hidden" name="add" value="1">
                                            <input type="hidden" name="chr_item" value="Book4">
                                            <input type="hidden" name="amount" value="140.00">
                                            <button type="submit" class="chr-cart pchr-cart">Add to cart
                                                <i class="fa fa-cart-plus" aria-hidden="true"></i>
                                            </button>
                                            <a href="#" data-toggle="modal" data-target="#myModal1"></a>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- //row3 -->
                            <div class="clearfix"></div>
                        </div>
                        <!--//new_arrivals-->
                        <div class="clearfix"></div>

                    </div>
                </div>
                <!--// Single -->
                <!-- footer -->
            <jsp:include page="footer.jsp"></jsp:include>
                <!-- //footer -->

            </div>
            <!-- //home -->
            <!-- Common js -->
            <%--<jsp:include page="scriptpage.jsp"></jsp:include>--%>

    </body>

</html>
