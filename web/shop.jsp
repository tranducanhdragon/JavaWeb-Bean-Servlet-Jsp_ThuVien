<%-- 
    Document   : shop
    Created on : Sep 29, 2020, 10:36:23 AM
    Author     : DucAnhTran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="Model.Sach" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:useBean id="liSach" class="Model.Sach" scope="request"/>
    <style>
        img {
            float: left;
            width: 50px;
            height: 50px;
            object-fit: cover;
        }
    </style>
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
							<a href="shop.jsp">product catalogue</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--//breadcrumbs ends here-->
		<!-- Shop -->
		<div class="innerf-pages section">
			<div class="container-cart">
				<!-- product left -->
				<div class="side-bar col-md-3">
					<!--preference -->
					<!-- // preference -->
					<div class="search-hotel">
						<h3 class="shopf-sear-headits-sear-head">
							<span>author</span> in focus</h3>
						<form action="#" method="post">
							<input type="search" placeholder="search here" name="search" required="">
							<input type="submit" value="Search">
						</form>
					</div>
					<!-- price range -->
					<div class="range">
						<h3 class="shopf-sear-headits-sear-head">
							<span>Price</span> range</h3>
						<ul class="dropdown-menu6">
							<li>

								<div id="slider-range"></div>
								<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
							</li>
						</ul>
					</div>

				</div>
				<!-- //product left -->
				<!-- product right -->
				<div class="left-ads-display col-md-9">
					<div class="wrapper_top_shop">
						<!-- product-sec1 -->
						<div class="product-sec1">
                                                    <%List<Sach> sa_li = (List<Sach>)request.getAttribute("Sach");%>
							<!-- row1-->
                                                        <%for(Sach s:sa_li){%>
							<div class="col-md-3 product-men">
								<div class="product-chr-info chr">
									<div class="thumbnail">
                                                                            <a href="ControllerChiTietSach?MaSach=<%= s.getMaSach() %>" />
                                                                                <img src='<%="images/"+s.getAnhDaiDien()%>' alt="">
                                                                            </a>
									</div>
									<div class="caption">
										<h4><%= s.getTenSach()%></h4>
										<p></p>
										<form action="ControllerGioHang" method="post">
											<input type="hidden" name="cmd" value="_cart">
											<input type="hidden" name="add" value="1">
											<input type="hidden" name="chr_item" value='<%= s.getTenSach() %>'>
                                                                                        <input type="hidden" name="maSach" value='<%= s.getMaSach() %>'>
											<input type="hidden" name="amount" value="100.00">
											<button type="submit" class="chr-cart pchr-cart">Thêm vào giỏ
												<i class="fa fa-cart-plus" aria-hidden="true"></i>
											</button>
											<a href="#" data-toggle="modal" data-target="#myModal1"></a>
										</form>
									</div>
								</div>
							</div>
                                                        <%}%>
							
							<div class="clearfix"></div>

						</div>

						<!-- //product-sec1 -->
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>

			</div>
		</div>
		<!--// Shop -->
 <!-- footer -->
 <jsp:include page="footer.jsp"></jsp:include>
<!-- //footer -->
</div>
<!-- //home -->
	<!-- js -->
        <%--<jsp:include page="scriptpage.jsp"></jsp:include>--%>
</body>

</html>