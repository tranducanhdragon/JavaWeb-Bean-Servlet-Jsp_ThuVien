<%-- 
    Document   : checkout
    Created on : Sep 29, 2020, 10:40:45 AM
    Author     : DucAnhTran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.GioHang" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <jsp:include page="header.jsp"></jsp:include>
    <link href="css/checkout.css" rel="stylesheet" type="text/css"/>
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
                            <a href="shop.jsp">Thư Viện</a>
                        </li>
                        <li class="btn btn4">
                            <a href="checkout.jsp">Checkout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--//breadcrumbs ends here-->
        <!--checkout-->
        <div class="innerf-pages section">
            <div class="container">
                <div class="privacy about">
                    <h4 class="rad-txt">
                        <span class="abtxt1">review</span>
                        <span class="abtext">your order</span>
                    </h4>

                    <div class="checkout-right">
                        <h4>Giỏ hàng của bạn:
                            <span></span>
                        </h4>
                        <table class="timetable_sub table-responsive">
                            <thead>
                                <tr>
                                    <th>Mã</th>
                                    <th>Ảnh</th>
                                    <th>Số Lượng</th>
                                    <th>Tên Sách</th>

                                    <th>Remove</th>
                                </tr>
                            </thead>
                        
                            <tbody>
                                <% GioHang gh = (GioHang)request.getAttribute("giohang");  %>
                                <%for(int i = 0; i < gh.soSach(); i++){%>
                                <tr class="rem1">
                                    <td class="invert"><%= gh.LaySach(i).getMaSach() %></td>
                                    <td class="invert-image">
                                        <a href="single_product.jsp">
                                            <img src='<%="images/"+gh.LaySach(i).getAnhDaiDien()%>' alt=" " class="img-responsive">
                                        </a>
                                    </td>
                                    <td class="invert">
                                        <div class="quantity">
                                            <div class="quantity-select">
                                                <div class="entry value-minus">&nbsp;</div>
                                                <div class="entry value">
                                                    <span><%= gh.LaySach(i).getSoluong() %></span>
                                                </div>
                                                <div class="entry value-plus active">&nbsp;</div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="invert"><%= gh.LaySach(i).getTenSach() %></td>

                                    <td class="invert">
                                        <div class="rem">
                                            <div class="close1"> <a href="ControllerDeleteSachByIDGioHang?maSach=<%= gh.LaySach(i).getMaSach() %>">Xóa</a></div>
                                        </div>

                                    </td>
                                </tr>
                                <% } %>
                            </tbody>
                        
                        </table>
                    </div>
                    <div class="checkout-left">
                        <div class="col-md-4 checkout-left-basket">
                            <h4>Continue to basket</h4>
                            <ul>
                                <li>Be Creative
                                    <i>-</i>
                                    <span>$100.00 </span>
                                </li>
                                <li>Work From Home
                                    <i>-</i>
                                    <span>$80.00 </span>
                                </li>
                                <li>E-Commerce
                                    <i>-</i>
                                    <span>$120.00 </span>
                                </li>
                                <li>Total Service Charges
                                    <i>-</i>
                                    <span>$55.00</span>
                                </li>
                                <li>Total
                                    <i>-</i>
                                    <span>$355.00</span>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-8 address_form">
                            <h4>Phiếu Mượn</h4>
                            <form action="ControllerThanhToan" method="post" class="creditly-card-form shopf-sear-headinfo_form">
                                <div class="creditly-wrapper wrapper">
                                    <div class="information-wrapper">
                                        <div class="first-row form-group">
                                            
                                            <div class="controls">
                                                <label class="control-label">Họ Tên: </label>
                                                <input class="billing-address-name form-control" type="text" name="name" placeholder="Họ Tên">
                                            </div>
                                            <div class="controls">
                                                <label class="control-label">Mã Thẻ Thư Viện: </label>
                                                <input class="billing-address-name form-control" type="text" name="idthe" placeholder="Mã Thẻ">
                                            </div>
                                            <div class="card_number_grids">
                                                <div class="card_number_grid_left">
                                                    <div class="controls">
                                                        <label class="control-label">Số Điện Thoại:</label>
                                                        <input class="form-control" type="text" name="phone" placeholder="Số Điện Thoại">
                                                    </div>
                                                </div>
                                                <div class="clear"> </div>
                                            </div>
                                            <!--
                                            <div class="controls">
                                                <label class="control-label">Town/City: </label>
                                                <input class="form-control" type="text" placeholder="Town/City">
                                            </div>
                                            -->
                                        </div>
                                        <button class="submit check_out" type="submit">Gửi</button>
                                    </div>
                                </div>
                            </form>

                        </div>

                        <div class="clearfix"> </div>

                    </div>

                </div>

            </div>
        </div>
        <!--//checkout-->
        <!-- footer -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- //footer -->
        
    </div>
    <!-- //home -->
    <%--<jsp:include page="scriptpage.jsp"></jsp:include>--%>
</body>

</html>