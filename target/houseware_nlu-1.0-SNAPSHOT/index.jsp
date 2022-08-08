<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html class="no-js" lang="zxx">

<%@include file="head.jsp" %>
<%
    request.setAttribute("page-name", "index.jsp");
%>
<title>Trang chủ | NLU</title>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->
<!-- Begin Body Wrapper -->
<div class="body-wrapper">
    <!-- Begin Header Area -->
    <%@include file="home-header.jsp" %>
    <!-- Header Area End Here -->
    <!-- Begin Slider With Category Menu Area -->
    <div class="slider-with-banner">
        <div class="container">
            <div class="row">
                <!-- Begin Category Menu Area -->
                <div class="col-lg-3">
                    <!--Category Menu Start-->
                    <div class="category-menu">
                        <div class="category-heading">
                            <h2 class="categories-toggle"><span>Danh Mục</span></h2>
                        </div>
                        <div id="cate-toggle" class="category-menu-list">
                            <ul>
                                <li class="right-menu"><a>Gia Dụng Nhà Bếp</a>
                                    <ul class="cat-mega-menu">
                                        <li class="right-menu cat-mega-title">
                                            <ul>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=noi-com&pageN=1">Nồi
                                                        Cơm Điện</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=noi-ap-suat&pageN=1">Nồi
                                                        Áp Suất</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=nckd&pageN=1">Nồi
                                                        Chiên Không Dầu</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=bdst&pageN=1">Bình
                                                        Đun Siêu Tốc</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=btd&pageN=1">Bình
                                                        Thủy Điện</a></li>
                                            </ul>
                                        </li>
                                        <li class="right-menu cat-mega-title">
                                            <ul>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=bep-tu&pageN=1">Bếp
                                                        Từ</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=bhn&pageN=1">Bếp
                                                        Hồng Ngoại</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=bep-ga&pageN=1">Bếp
                                                        Gas</a></li>
                                            </ul>
                                        </li>
                                        <li class="right-menu cat-mega-title">

                                            <ul>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=lvs&pageN=1">Lò
                                                        Vi Sóng</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=lo-nuong&pageN=1">Lò
                                                        Nướng</a></li>

                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="right-menu"><a
                                        href="${pageContext.request.contextPath}/ProductList?category=msve&pageN=1">Máy
                                    Xay,Vắt,
                                    Ép</a>
                                    <ul class="cat-mega-menu cat-mega-menu-2">
                                        <li class="right-menu cat-mega-title">
                                            <ul>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=mxst&pageN=1">Máy
                                                        Xay Sinh Tố</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=metc&pageN=1">Máy
                                                        Ép Trái Cây</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=mvc&pageN=1">Máy
                                                        Vắt Cam</a></li>

                                            </ul>
                                        </li>
                                        <li class="right-menu cat-mega-title">
                                            <ul>

                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=mpcp&pageN=1">Máy
                                                        Pha Cà Phê</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=mxt&pageN=1">Máy
                                                        Xay Thịt</a></li>

                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="right-menu"><a>Dụng Cụ Nhà Bếp</a>
                                    <ul class="cat-mega-menu cat-mega-menu-2">
                                        <li class="right-menu cat-mega-title">
                                            <ul>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=xoong-noi&pageN=1">Xoong
                                                        Nồi</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=ccd&pageN=1">Chảo
                                                        Chống Dính</a></li>
                                            </ul>
                                        </li>
                                        <li class="right-menu cat-mega-title">
                                            <ul>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=dca&pageN=1">Dụng
                                                        Cụ Ăn</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="#giam-gia">Sản phẩm đang được giảm giá</a></li>
                                <li><a href="#noi-bat">Sản phẩm nổi bật</a></li>
                                <li><a href="#mua-nhieu">Sản phẩm mua nhiều</a></li>
                                <li><a href="${pageContext.request.contextPath}/ProductList?category=nckd&pageN=1">Nồi
                                    Chiên
                                    Không Dầu</a></li>
                                <li><a href="${pageContext.request.contextPath}/ProductList?category=ncmn&pageN=1">Nồi
                                    Cơm
                                    Mini</a></li>
                                <li class="rx-child"><a
                                        href="${pageContext.request.contextPath}/ProductList?category=mxst&pageN=1">Máy
                                    Xay Sinh
                                    Tố</a></li>
                                <li class="rx-child"><a
                                        href="${pageContext.request.contextPath}/ProductList?category=noi-ap-suat&pageN=1">Nồi
                                    Áp Suất</a></li>
                                <li class="rx-parent">
                                    <a class="rx-default">Xem Thêm</a>
                                    <a class="rx-show">Thu Gọn</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--Category Menu End-->
                </div>
                <!-- Category Menu Area End Here -->
                <!-- Begin Slider Area -->
                <div class="col-lg-9">
                    <div class="slider-area pt-sm-30 pt-xs-30">
                        <div class="slider-active owl-carousel">
                            <!-- Begin Single Slide Area -->
                            <div class="single-slide align-center-left animation-style-02 bg-4">
                                <div class="slider-progress"></div>
                                <div class="slider-content">
                                    <h5>Giảm Giá Kịch Sàn Lên Đến <span>50% </span> Tuần Này</h5>
                                    <h2>Mua Ngay Hôm Nay</h2>
                                    <h3>Giá Chỉ Từ <span>1.000.000đ</span></h3>
                                    <div class="default-btn slide-btn">
                                        <a class="links" href="${pageContext.request.contextPath}/">Mua Ngay</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Slide Area End Here -->
                            <!-- Begin Single Slide Area -->
                            <div class="single-slide align-center-left animation-style-01 bg-5">
                                <div class="slider-progress"></div>
                                <div class="slider-content">
                                    <h5>Xả Kho Giảm Giá</h5>
                                    <h2>Giá Cực Sốc</h2>
                                    <h3>Chỉ Từ <span>1.000.000đ</span></h3>
                                    <div class="default-btn slide-btn">
                                        <a class="links" href="${pageContext.request.contextPath}/">Mua Ngay</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Slide Area End Here -->
                            <!-- Begin Single Slide Area -->
                            <div class="single-slide align-center-left animation-style-02 bg-6">
                                <div class="slider-progress"></div>
                                <div class="slider-content">
                                    <h5>Thanh Toán Online Giảm Đến <span>300.000đ</span> Khi Thanh Toán</h5>
                                    <h2>Thanh Toán Online Tiện Lợi</h2>
                                    <div class="default-btn slide-btn">
                                        <a class="links" href="${pageContext.request.contextPath}/">Mua Ngay</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Slide Area End Here -->
                        </div>
                    </div>
                </div>
                <!-- Slider Area End Here -->
            </div>
        </div>
    </div>
    <!-- Slider With Category Menu Area End Here -->
    <!-- Begin Li's Static Banner Area -->
    <div class="li-static-banner pt-20 pt-sm-30 pt-xs-30">
        <div class="container">
            <div class="row">
                <!-- Begin Single Banner Area -->
                <div class="col-lg-4 col-md-4">
                    <div class="single-banner pb-xs-30">
                        <a>
                            <img loading="lazy" src="images/banner/bn1.jpg" alt="Li's Static Banner">
                        </a>
                    </div>
                </div>
                <!-- Single Banner Area End Here -->
                <!-- Begin Single Banner Area -->
                <div class="col-lg-4 col-md-4">
                    <div class="single-banner pb-xs-30">
                        <a>
                            <img loading="lazy" src="images/banner/bn2.jpg" alt="Li's Static Banner">
                        </a>
                    </div>
                </div>
                <!-- Single Banner Area End Here -->
                <!-- Begin Single Banner Area -->
                <div class="col-lg-4 col-md-4">
                    <div class="single-banner">
                        <a>
                            <img loading="lazy" src="images/banner/bn3.png" alt="Li's Static Banner">
                        </a>
                    </div>
                </div>
                <!-- Single Banner Area End Here -->
            </div>
        </div>
    </div>
    <!-- Li's Static Banner Area End Here -->
    <!-- Begin Li's Special Product Area -->
    <section class="product-area li-laptop-product Special-product pt-60 pb-45" id="giam-gia">
        <div class="container">
            <div class="row">
                <!-- Begin Li's Section Area -->
                <div class="col-lg-12">
                    <div class="li-section-title">
                        <h2>
                            <span>Sản phẩm đang được giảm giá</span>
                        </h2>
                    </div>
                    <div class="row">
                        <div class="special-product-active owl-carousel">
                            <jsp:useBean id="discountProducts" scope="request" type="java.util.List"/>
                            <c:forEach var="p" items="${discountProducts}">
                                <div class="col-lg-12">
                                    <!-- single-product-wrap start -->
                                    <div class="single-product-wrap">
                                        <div class="product-image">
                                            <a href="${pageContext.request.contextPath}/ProductDetails?pid=${p.getId_sanpham()}">
                                                <img loading="lazy"
                                                     src="${pageContext.request.contextPath}/img/${p.getImageMain()}"
                                                     alt="Li's Product Image">
                                            </a>
                                            <span class="sticker">New</span>
                                        </div>
                                        <div class="product_desc">
                                            <div class="product_desc_info">
                                                <div class="product-review">
                                                    <h5 class="manufacturer">
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=${p.getMa_loaisp()}&pageN=1">${p.getMa_loaisp()}</a>
                                                    </h5>
                                                    <div class="rating-box">
                                                        <ul class="rating">
                                                                ${p.getAvgRating()}
                                                        </ul>
                                                    </div>
                                                </div>
                                                <h4><a class="product_name"
                                                       href="${pageContext.request.contextPath}/ProductDetails?pid=${p.getId_sanpham()}">${p.getTen_sp()}</a>
                                                </h4>
                                                <div class="price-box">
                                                    <span class="new-price new-price-2">
                                                           <fmt:setLocale value="vi-VN"/>
                                                            <fmt:formatNumber
                                                                    value="${Math.round(p.getGia()*(1-p.rateDiscount))}"
                                                                    type="currency"/>
                                                    </span>
                                                    <span class="old-price">
                                                        <fmt:formatNumber value="${p.getGia()}" type="currency"/>
                                                    </span>
                                                    <span class="discount-percentage">-${Math.round(p.rateDiscount*100)}%</span>
                                                </div>
                                                <div class="countersection">
                                                    <div class="li-countdown"></div>
                                                </div>
                                            </div>
                                            <div class="add-actions">
                                                <ul class="add-actions-link">
                                                    <li class="add-cart active" pid="${p.getId_sanpham()}"
                                                        path="${pageContext.request.contextPath}/AddToCart">Thêm Vào Giỏ
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- single-product-wrap end -->
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!-- Li's Section Area End Here -->
            </div>
        </div>
    </section>
    <!-- Li's Special Product Area End Here -->
    <!-- Begin Li's Laptops Product | Home V2 Area -->
    <section class="product-area li-laptop-product li-laptop-product-2 pb-45" id="mua-nhieu">
        <div class="container">
            <div class="row">
                <!-- Begin Li's Section Area -->
                <div class="col-lg-12">
                    <div class="li-section-title">
                        <h2>
                            <span>Sản phẩm mua nhiều</span>
                        </h2>
                    </div>
                    <div class="li-banner-2 pt-15">
                        <div class="row">
                            <!-- Begin Single Banner Area -->
                            <div class="col-lg-6 col-md-6">
                                <div class="single-banner">
                                    <a>
                                        <img loading="lazy" src="images/banner/bn5.png" alt="Li's Static Banner">
                                    </a>
                                </div>
                            </div>
                            <!-- Single Banner Area End Here -->
                            <!-- Begin Single Banner Area -->
                            <div class="col-lg-6 col-md-6">
                                <div class="single-banner pt-xs-30">
                                    <a>
                                        <img loading="lazy" src="images/banner/bn6.png" alt="Li's Static Banner">
                                    </a>
                                </div>
                            </div>
                            <!-- Single Banner Area End Here -->
                        </div>
                    </div>
                    <div class="row">
                        <div class="product-active owl-carousel">
                            <jsp:useBean id="mostSoldProducts" scope="request" type="java.util.List"/>
                            <c:forEach var="p" items="${mostSoldProducts}">
                                <div class="col-lg-12">
                                    <!-- single-product-wrap start -->
                                    <div class="single-product-wrap">
                                        <div class="product-image">
                                            <a href="${pageContext.request.contextPath}/ProductDetails?pid=${p.getId_sanpham()}">
                                                <img loading="lazy"
                                                     src="${pageContext.request.contextPath}/img/${p.getImageMain()}"
                                                     alt="Li's Product Image">
                                            </a>
                                            <span class="sticker">New</span>
                                        </div>
                                        <div class="product_desc">
                                            <div class="product_desc_info">
                                                <div class="product-review">
                                                    <h5 class="manufacturer">
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=${p.getMa_loaisp()}&pageN=1">${p.getMa_loaisp()}</a>
                                                    </h5>
                                                    <div class="rating-box">
                                                        <ul class="rating">
                                                                ${p.getAvgRating()}
                                                        </ul>
                                                    </div>
                                                </div>
                                                <h4><a class="product_name"
                                                       href="${pageContext.request.contextPath}/ProductDetails?pid=${p.getId_sanpham()}">${p.getTen_sp()}</a>
                                                </h4>
                                                <div class="price-box">
                                                    <fmt:setLocale value="vi-VN"/>
                                                    <span class="new-price">
                                                    <fmt:formatNumber value="${p.getGia()}" type="currency"/>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="add-actions">
                                                <ul class="add-actions-link">
                                                    <li class="add-cart active" pid="${p.getId_sanpham()}"
                                                        path="${pageContext.request.contextPath}/AddToCart">Thêm Vào Giỏ
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- single-product-wrap end -->
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!-- Li's Section Area End Here -->
            </div>
        </div>
    </section>
    <div class="li-static-home">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- Begin Li's Static Home Image Area -->
                    <div class="li-static-home-image"></div>
                    <!-- Li's Static Home Image Area End Here -->
                    <!-- Begin Li's Static Home Content Area -->
                    <div class="li-static-home-content">
                        <p>Săn sale mỗi ngày</p>
                        <h2>Voucher cực xịn</h2>
                        <h2>Sale khủng mỗi ngày</h2>
                        <p class="schedule">
                            Giảm giá lên đến
                            <span>500.000đ</span>
                        </p>
                        <div class="default-btn">
                            <a href="${pageContext.request.contextPath}/" class="links">Mua Ngay</a>
                        </div>
                    </div>
                    <!-- Li's Static Home Content Area End Here -->
                </div>
            </div>
        </div>
    </div>
    <!-- Li's Static Home Area End Here -->
    <!-- Begin Li's Trending Product | Home V2 Area -->
    <section class="product-area li-trending-product li-trending-product-2 pt-60 pb-45" id="noi-bat">
        <div class="container">
            <div class="row">
                <!-- Begin Li's Tab Menu Area -->
                <div class="col-lg-12">
                    <div class="li-product-tab li-trending-product-tab">
                        <h2>
                            <span>Sản phẩm nổi bật</span>
                        </h2>
                    </div>
                    <!-- Begin Li's Tab Menu Content Area -->
                    <div class="tab-content li-tab-content li-trending-product-content">
                        <div id="home1" class="tab-pane show fade in active">
                            <div class="row">
                                <div class="product-active owl-carousel">
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/2.jpg"
                                                         alt="Li's Product Image">
                                                </a>
                                                <span class="sticker">New</span>
                                            </div>
                                            <div class="product_desc">
                                                <div class="product_desc_info">
                                                    <div class="product-review">
                                                        <h5 class="manufacturer">
                                                            <a href="shop-right-sidebar.html">Graphic Corner</a>
                                                        </h5>
                                                        <div class="rating-box">
                                                            <ul class="rating">
                                                                <li><i class="fa fa-star-o"></i></li>
                                                                <li><i class="fa fa-star-o"></i></li>
                                                                <li><i class="fa fa-star-o"></i></li>
                                                                <li class="no-star"><i class="fa fa-star-o"></i>
                                                                </li>
                                                                <li class="no-star"><i class="fa fa-star-o"></i>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <h4><a class="product_name"
                                                           href="product-details.jsp">Accusantium
                                                        dolorem1</a></h4>
                                                    <div class="price-box">
                                                        <span class="new-price">$46.80</span>
                                                    </div>
                                                </div>
                                                <div class="add-actions">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart active"><a href="#">Add to cart</a></li>
                                                        <li><a href="#" title="quick view" class="quick-view-btn"
                                                               data-toggle="modal"
                                                               data-target="#exampleModalCenter"><i
                                                                class="fa fa-eye"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- single-product-wrap end -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Tab Menu Content Area End Here -->
                </div>
                <!-- Tab Menu Area End Here -->
            </div>
        </div>
    </section>
    <!-- Li's Trending Product | Home V2 Area End Here -->
    <!-- Begin Footer Area -->
    <%@include file="client-footer.jsp" %>
</div>
<%@include file="libraries.jsp" %>
</body>

<!-- index-231:38-->

</html>