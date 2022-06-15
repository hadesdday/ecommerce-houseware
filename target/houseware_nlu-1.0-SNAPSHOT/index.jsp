<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html class="no-js" lang="zxx">

<%@include file="head.jsp" %>
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
                            <h2 class="categories-toggle"><span>categories</span></h2>
                        </div>
                        <div id="cate-toggle" class="category-menu-list">
                            <ul>
                                <li class="right-menu"><a href="gia-dung-nha-bep.html">Gia dụng nhà bếp</a>
                                    <ul class="cat-mega-menu">
                                        <li class="right-menu cat-mega-title">

                                            <ul>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=noi-com">Nồi
                                                        cơm điện</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=noi-ap-suat">Nồi
                                                        áp suất</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=nckd">Nồi
                                                        chiên không dầu</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=bdst">Bình
                                                        đun siêu tốc</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=btd">Bình
                                                        thủy điện</a></li>
                                            </ul>
                                        </li>
                                        <li class="right-menu cat-mega-title">

                                            <ul>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=bep-tu">Bếp
                                                        từ</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=bhn">Bếp
                                                        hồng ngoại</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=bep-ga">Bếp
                                                        gas</a></li>

                                            </ul>
                                        </li>
                                        <li class="right-menu cat-mega-title">

                                            <ul>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=lvs">Lò
                                                        vi sóng</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=lo-nuong">Lò
                                                        nướng</a></li>

                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="right-menu"><a
                                        href="${pageContext.request.contextPath}/ProductList?category=msve">Máy xay,vắt,
                                    ép</a>
                                    <ul class="cat-mega-menu cat-mega-menu-2">
                                        <li class="right-menu cat-mega-title">
                                            <ul>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=mxst">Máy
                                                        xay sinh tố</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=metc">Máy
                                                        ép trái cây</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=mvc">Máy
                                                        vắt cam</a></li>

                                            </ul>
                                        </li>
                                        <li class="right-menu cat-mega-title">
                                            <ul>

                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=mpcp">Máy
                                                        pha cà phê</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=mxt">Máy
                                                        xay thịt</a></li>

                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="right-menu"><a href="dung-cu-nha-bep.html">Dụng cụ nhà bếp</a>
                                    <ul class="cat-mega-menu cat-mega-menu-2">
                                        <li class="right-menu cat-mega-title">

                                            <ul>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=xoong-noi">Xoong
                                                        nồi</a></li>
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/ProductList?category=ccd">Chảo
                                                        chống dính</a></li>
                                            </ul>
                                        </li>
                                        <li class="right-menu cat-mega-title">
                                            <ul>
                                                <li><a href="${pageContext.request.contextPath}/ProductList?category=dca">Dụng cụ ăn</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="san-pham-giam-gia.html">Sản phẩm đang được giảm giá</a></li>
                                <li><a href="san-pham-noi-bat.html">Sản phẩm nổi bật</a></li>
                                <li><a href="san-pham-mua-nhieu.html">Sản phẩm mua nhiều</a></li>
                                <li><a href="${pageContext.request.contextPath}/ProductList?category=nckd">Nồi chiên
                                    không dầu</a></li>
                                <li><a href="${pageContext.request.contextPath}/ProductList?category=ncmn">Nồi cơm
                                    mini</a></li>
                                <li class="rx-child"><a
                                        href="${pageContext.request.contextPath}/ProductList?category=mxst">Máy xay sinh
                                    tố</a></li>
                                <li class="rx-child"><a
                                        href="${pageContext.request.contextPath}/ProductList?category=noi-ap-suat">Nồi
                                    áp suất</a></li>
                                <li class="rx-parent">
                                    <a class="rx-default">More Categories</a>
                                    <a class="rx-show">Less Categories</a>
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
                                    <h5>Sale Offer <span>-20% Off</span> This Week</h5>
                                    <h2>Chamcham Galaxy S9 | S9+</h2>
                                    <h3>Starting at <span>$589.00</span></h3>
                                    <div class="default-btn slide-btn">
                                        <a class="links" href="danh-muc-san-pham.html">Shopping Now</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Slide Area End Here -->
                            <!-- Begin Single Slide Area -->
                            <div class="single-slide align-center-left animation-style-01 bg-5">
                                <div class="slider-progress"></div>
                                <div class="slider-content">
                                    <h5>Sale Offer <span>Black Friday</span> This Week</h5>
                                    <h2>Work Desk Surface Studio 2018</h2>
                                    <h3>Starting at <span>$1599.00</span></h3>
                                    <div class="default-btn slide-btn">
                                        <a class="links" href="danh-muc-san-pham.html">Shopping Now</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Slide Area End Here -->
                            <!-- Begin Single Slide Area -->
                            <div class="single-slide align-center-left animation-style-02 bg-6">
                                <div class="slider-progress"></div>
                                <div class="slider-content">
                                    <h5>Sale Offer <span>-10% Off</span> This Week</h5>
                                    <h2>Phantom 4 Pro+ Obsidian</h2>
                                    <h3>Starting at <span>$809.00</span></h3>
                                    <div class="default-btn slide-btn">
                                        <a class="links" href="danh-muc-san-pham.html">Shopping Now</a>
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
                        <a href="#">
                            <img loading="lazy" src="images/banner/1_3.jpg" alt="Li's Static Banner">
                        </a>
                    </div>
                </div>
                <!-- Single Banner Area End Here -->
                <!-- Begin Single Banner Area -->
                <div class="col-lg-4 col-md-4">
                    <div class="single-banner pb-xs-30">
                        <a href="#">
                            <img loading="lazy" src="images/banner/1_4.jpg" alt="Li's Static Banner">
                        </a>
                    </div>
                </div>
                <!-- Single Banner Area End Here -->
                <!-- Begin Single Banner Area -->
                <div class="col-lg-4 col-md-4">
                    <div class="single-banner">
                        <a href="#">
                            <img loading="lazy" src="images/banner/1_5.jpg" alt="Li's Static Banner">
                        </a>
                    </div>
                </div>
                <!-- Single Banner Area End Here -->
            </div>
        </div>
    </div>
    <!-- Li's Static Banner Area End Here -->
    <!-- Begin Li's Special Product Area -->
    <section class="product-area li-laptop-product Special-product pt-60 pb-45">
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
                                            <a href="product-details.jsp">
                                                <img loading="lazy" src="data:image/jpg;base64,${p.getImageMain()}"
                                                     alt="Li's Product Image">
                                            </a>
                                            <span class="sticker">New</span>
                                        </div>
                                        <div class="product_desc">
                                            <div class="product_desc_info">
                                                <div class="product-review">
                                                    <h5 class="manufacturer">
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=${p.getMa_loaisp()}">${p.getMa_loaisp()}</a>
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
                                                        path="${pageContext.request.contextPath}/AddToCart">Add to cart
                                                    </li>
                                                    <li><a href="#" title="quick view" class="quick-view-btn"
                                                           data-toggle="modal" data-target="#exampleModalCenter"><i
                                                            class="fa fa-eye"></i></a></li>
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
    <section class="product-area li-laptop-product li-laptop-product-2 pb-45">
        <div class="container">
            <div class="row">
                <!-- Begin Li's Section Area -->
                <div class="col-lg-12">
                    <div class="li-section-title">
                        <h2>
                            <span>Sản phẩm mua nhiều</span>
                        </h2>
                        <ul class="li-sub-category-list">
                            <li class="active"><a href="shop-left-sidebar.html">Gia dụng nhà bếp</a></li>
                            <li><a href="shop-left-sidebar.html">Máy xay vắt ép</a></li>
                            <li><a href="shop-left-sidebar.html">Dụng cụ gia đình</a></li>
                        </ul>
                    </div>
                    <div class="li-banner-2 pt-15">
                        <div class="row">
                            <!-- Begin Single Banner Area -->
                            <div class="col-lg-6 col-md-6">
                                <div class="single-banner">
                                    <a href="#">
                                        <img loading="lazy" src="images/banner/2_1.jpg" alt="Li's Static Banner">
                                    </a>
                                </div>
                            </div>
                            <!-- Single Banner Area End Here -->
                            <!-- Begin Single Banner Area -->
                            <div class="col-lg-6 col-md-6">
                                <div class="single-banner pt-xs-30">
                                    <a href="#">
                                        <img loading="lazy" src="images/banner/2_2.jpg" alt="Li's Static Banner">
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
                                            <a href="product-details.jsp">
                                                <img loading="lazy" src="data:image/jpg;base64,${p.getImageMain()}"
                                                     alt="Li's Product Image">
                                            </a>
                                            <span class="sticker">New</span>
                                        </div>
                                        <div class="product_desc">
                                            <div class="product_desc_info">
                                                <div class="product-review">
                                                    <h5 class="manufacturer">
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=${p.getMa_loaisp()}">${p.getMa_loaisp()}</a>
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
                                                        path="${pageContext.request.contextPath}/AddToCart"> Add to cart
                                                    </li>
                                                    <li><a href="#" title="quick view" class="quick-view-btn"
                                                           data-toggle="modal" data-target="#exampleModalCenter"><i
                                                            class="fa fa-eye"></i></a></li>
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
    <!-- Li's Laptops Product | Home V2 Area End Here -->
    <!-- Begin Li's TV & Audio Product Area -->

    <!-- Li's TV & Audio Product Area End Here -->
    <!-- Begin Li's Smart Phone Product Area -->

    <!-- Li's Smart Phone Product Area End Here -->
    <!-- Begin Li's Static Home Area -->
    <div class="li-static-home">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- Begin Li's Static Home Image Area -->
                    <div class="li-static-home-image"></div>
                    <!-- Li's Static Home Image Area End Here -->
                    <!-- Begin Li's Static Home Content Area -->
                    <div class="li-static-home-content">
                        <p>Sale Offer<span>-20% Off</span>This Week</p>
                        <h2>Featured Product</h2>
                        <h2>Meito Accessories 2018</h2>
                        <p class="schedule">
                            Starting at
                            <span> $1209.00</span>
                        </p>
                        <div class="default-btn">
                            <a href="shop-left-sidebar.html" class="links">Shopping Now</a>
                        </div>
                    </div>
                    <!-- Li's Static Home Content Area End Here -->
                </div>
            </div>
        </div>
    </div>
    <!-- Li's Static Home Area End Here -->
    <!-- Begin Li's Trending Product | Home V2 Area -->
    <section class="product-area li-trending-product li-trending-product-2 pt-60 pb-45">
        <div class="container">
            <div class="row">
                <!-- Begin Li's Tab Menu Area -->
                <div class="col-lg-12">
                    <div class="li-product-tab li-trending-product-tab">
                        <h2>
                            <span>Sản phẩm nổi bật</span>
                        </h2>
                        <ul class="nav li-product-menu li-trending-product-menu">
                            <li class="active"><a href="gia-dung-nha-bep.html">Gia dụng nhà bếp</a></li>
                            <li><a href="may-xay-vat-ep.html">Máy xay vắt ép</a></li>
                            <li><a href="dung-cu-nha-bep.html">Dụng cụ nhà bếp</a></li>
                        </ul>
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
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/4.jpg"
                                                         alt="Li's Product Image">
                                                </a>
                                                <span class="sticker">New</span>
                                            </div>
                                            <div class="product_desc">
                                                <div class="product_desc_info">
                                                    <div class="product-review">
                                                        <h5 class="manufacturer">
                                                            <a href="shop-right-sidebar.html">Studio Design</a>
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
                                                    <h4><a class="product_name" href="product-details.jsp">Mug Today
                                                        is a
                                                        good day</a></h4>
                                                    <div class="price-box">
                                                        <span class="new-price new-price-2">$71.80</span>
                                                        <span class="old-price">$77.22</span>
                                                        <span class="discount-percentage">-7%</span>
                                                    </div>
                                                </div>
                                                <div class="add-actions">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart active"><a href="#">Add to cart</a></li>
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/6.jpg"
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
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/8.jpg"
                                                         alt="Li's Product Image">
                                                </a>
                                                <span class="sticker">New</span>
                                            </div>
                                            <div class="product_desc">
                                                <div class="product_desc_info">
                                                    <div class="product-review">
                                                        <h5 class="manufacturer">
                                                            <a href="shop-right-sidebar.html">Studio Design</a>
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
                                                    <h4><a class="product_name" href="product-details.jsp">Mug Today
                                                        is a
                                                        good day</a></h4>
                                                    <div class="price-box">
                                                        <span class="new-price new-price-2">$71.80</span>
                                                        <span class="old-price">$77.22</span>
                                                        <span class="discount-percentage">-7%</span>
                                                    </div>
                                                </div>
                                                <div class="add-actions">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart active"><a href="#">Add to cart</a></li>
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/10.jpg"
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
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/12.jpg"
                                                         alt="Li's Product Image">
                                                </a>
                                                <span class="sticker">New</span>
                                            </div>
                                            <div class="product_desc">
                                                <div class="product_desc_info">
                                                    <div class="product-review">
                                                        <h5 class="manufacturer">
                                                            <a href="shop-right-sidebar.html">Studio Design</a>
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
                                                    <h4><a class="product_name" href="product-details.jsp">Mug Today
                                                        is a
                                                        good day</a></h4>
                                                    <div class="price-box">
                                                        <span class="new-price new-price-2">$71.80</span>
                                                        <span class="old-price">$77.22</span>
                                                        <span class="discount-percentage">-7%</span>
                                                    </div>
                                                </div>
                                                <div class="add-actions">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart active"><a href="#">Add to cart</a></li>
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                        <div id="home2" class="tab-pane fade">
                            <div class="row">
                                <div class="product-active owl-carousel">
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/11.jpg"
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
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/7.jpg"
                                                         alt="Li's Product Image">
                                                </a>
                                                <span class="sticker">New</span>
                                            </div>
                                            <div class="product_desc">
                                                <div class="product_desc_info">
                                                    <div class="product-review">
                                                        <h5 class="manufacturer">
                                                            <a href="shop-right-sidebar.html">Studio Design</a>
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
                                                    <h4><a class="product_name" href="product-details.jsp">Mug Today
                                                        is a
                                                        good day</a></h4>
                                                    <div class="price-box">
                                                        <span class="new-price new-price-2">$71.80</span>
                                                        <span class="old-price">$77.22</span>
                                                        <span class="discount-percentage">-7%</span>
                                                    </div>
                                                </div>
                                                <div class="add-actions">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart active"><a href="#">Add to cart</a></li>
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/9.jpg"
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
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/5.jpg"
                                                         alt="Li's Product Image">
                                                </a>
                                                <span class="sticker">New</span>
                                            </div>
                                            <div class="product_desc">
                                                <div class="product_desc_info">
                                                    <div class="product-review">
                                                        <h5 class="manufacturer">
                                                            <a href="shop-right-sidebar.html">Studio Design</a>
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
                                                    <h4><a class="product_name" href="product-details.jsp">Mug Today
                                                        is a
                                                        good day</a></h4>
                                                    <div class="price-box">
                                                        <span class="new-price new-price-2">$71.80</span>
                                                        <span class="old-price">$77.22</span>
                                                        <span class="discount-percentage">-7%</span>
                                                    </div>
                                                </div>
                                                <div class="add-actions">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart active"><a href="#">Add to cart</a></li>
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/7.jpg"
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
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/5.jpg"
                                                         alt="Li's Product Image">
                                                </a>
                                                <span class="sticker">New</span>
                                            </div>
                                            <div class="product_desc">
                                                <div class="product_desc_info">
                                                    <div class="product-review">
                                                        <h5 class="manufacturer">
                                                            <a href="shop-right-sidebar.html">Studio Design</a>
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
                                                    <h4><a class="product_name" href="product-details.jsp">Mug Today
                                                        is a
                                                        good day</a></h4>
                                                    <div class="price-box">
                                                        <span class="new-price new-price-2">$71.80</span>
                                                        <span class="old-price">$77.22</span>
                                                        <span class="discount-percentage">-7%</span>
                                                    </div>
                                                </div>
                                                <div class="add-actions">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart active"><a href="#">Add to cart</a></li>
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                        <div id="home3" class="tab-pane fade">
                            <div class="row">
                                <div class="product-active owl-carousel">
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/3.jpg"
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
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/7.jpg"
                                                         alt="Li's Product Image">
                                                </a>
                                                <span class="sticker">New</span>
                                            </div>
                                            <div class="product_desc">
                                                <div class="product_desc_info">
                                                    <div class="product-review">
                                                        <h5 class="manufacturer">
                                                            <a href="shop-right-sidebar.html">Studio Design</a>
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
                                                    <h4><a class="product_name" href="product-details.jsp">Mug Today
                                                        is a
                                                        good day</a></h4>
                                                    <div class="price-box">
                                                        <span class="new-price new-price-2">$71.80</span>
                                                        <span class="old-price">$77.22</span>
                                                        <span class="discount-percentage">-7%</span>
                                                    </div>
                                                </div>
                                                <div class="add-actions">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart active"><a href="#">Add to cart</a></li>
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/9.jpg"
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
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/1.jpg"
                                                         alt="Li's Product Image">
                                                </a>
                                                <span class="sticker">New</span>
                                            </div>
                                            <div class="product_desc">
                                                <div class="product_desc_info">
                                                    <div class="product-review">
                                                        <h5 class="manufacturer">
                                                            <a href="shop-right-sidebar.html">Studio Design</a>
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
                                                    <h4><a class="product_name" href="product-details.jsp">Mug Today
                                                        is a
                                                        good day</a></h4>
                                                    <div class="price-box">
                                                        <span class="new-price new-price-2">$71.80</span>
                                                        <span class="old-price">$77.22</span>
                                                        <span class="discount-percentage">-7%</span>
                                                    </div>
                                                </div>
                                                <div class="add-actions">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart active"><a href="#">Add to cart</a></li>
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/11.jpg"
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
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy" src="images/product/large-size/9.jpg"
                                                         alt="Li's Product Image">
                                                </a>
                                                <span class="sticker">New</span>
                                            </div>
                                            <div class="product_desc">
                                                <div class="product_desc_info">
                                                    <div class="product-review">
                                                        <h5 class="manufacturer">
                                                            <a href="shop-right-sidebar.html">Studio Design</a>
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
                                                    <h4><a class="product_name" href="product-details.jsp">Mug Today
                                                        is a
                                                        good day</a></h4>
                                                    <div class="price-box">
                                                        <span class="new-price new-price-2">$71.80</span>
                                                        <span class="old-price">$77.22</span>
                                                        <span class="discount-percentage">-7%</span>
                                                    </div>
                                                </div>
                                                <div class="add-actions">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart active"><a href="#">Add to cart</a></li>
                                                        <li><a class="links-details" href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i></a></li>
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
    <div class="footer">
        <!-- Begin Footer Static Top Area -->
        <div class="footer-static-top">
            <div class="container">
                <!-- Begin Footer Shipping Area -->
                <div class="footer-shipping pt-60 pb-55 pb-xs-25">
                    <div class="row">
                        <!-- Begin Li's Shipping Inner Box Area -->
                        <div class="col-lg-3 col-md-6 col-sm-6 pb-sm-55 pb-xs-55">
                            <div class="li-shipping-inner-box">
                                <div class="shipping-icon">
                                    <img loading="lazy" src="images/shipping-icon/1.png" alt="Shipping Icon">
                                </div>
                                <div class="shipping-text">
                                    <h2>Miễn phí vận chuyển</h2>
                                    <p>Miễn phí giao hàng trên mọi miền của tổ quốc khắp mọi miền trên tổ quốc</p>
                                </div>
                            </div>
                        </div>
                        <!-- Li's Shipping Inner Box Area End Here -->
                        <!-- Begin Li's Shipping Inner Box Area -->
                        <div class="col-lg-3 col-md-6 col-sm-6 pb-sm-55 pb-xs-55">
                            <div class="li-shipping-inner-box">
                                <div class="shipping-icon">
                                    <img loading="lazy" src="images/shipping-icon/2.png" alt="Shipping Icon">
                                </div>
                                <div class="shipping-text">
                                    <h2>Phương thức thanh toán an toàn</h2>
                                    <p>Thanh toán với phương thức thanh toán phổ biến nhất và an toàn nhất.</p>
                                </div>
                            </div>
                        </div>
                        <!-- Li's Shipping Inner Box Area End Here -->
                        <!-- Begin Li's Shipping Inner Box Area -->
                        <div class="col-lg-3 col-md-6 col-sm-6 pb-xs-30">
                            <div class="li-shipping-inner-box">
                                <div class="shipping-icon">
                                    <img loading="lazy" src="images/shipping-icon/3.png" alt="Shipping Icon">
                                </div>
                                <div class="shipping-text">
                                    <h2>Mua hàng với trải nghiệm tốt nhất</h2>
                                    <p>Chúng tôi đảm bảo an toàn tuyệt đối cho quý khách từ khâu mua hàng cho đến
                                        khâu vận chuyển.</p>
                                </div>
                            </div>
                        </div>
                        <!-- Li's Shipping Inner Box Area End Here -->
                        <!-- Begin Li's Shipping Inner Box Area -->
                        <div class="col-lg-3 col-md-6 col-sm-6 pb-xs-30">
                            <div class="li-shipping-inner-box">
                                <div class="shipping-icon">
                                    <img loading="lazy" src="images/shipping-icon/4.png" alt="Shipping Icon">
                                </div>
                                <div class="shipping-text">
                                    <h2>Trung tâm hỗ trợ 24/7</h2>
                                    <p>Đội ngũ chuyên gia hỗ trợ nhiệt tình</p>
                                </div>
                            </div>
                        </div>
                        <!-- Li's Shipping Inner Box Area End Here -->
                    </div>
                </div>
                <!-- Footer Shipping Area End Here -->
            </div>
        </div>
        <!-- Footer Static Top Area End Here -->
        <!-- Begin Footer Static Middle Area -->
        <div class="footer-static-middle">
            <div class="container">
                <div class="footer-logo-wrap pt-50 pb-35">
                    <div class="row">
                        <!-- Begin Footer Logo Area -->
                        <div class="col-lg-4 col-md-6">
                            <div class="footer-logo">
                                <img loading="lazy" src="images/menu/logo/1.jpg" alt="Footer Logo">
                                <p class="info">
                                    Chúng tôi có sản phẩm tốt nhất cho ngôi nhà của bạn.
                                </p>
                            </div>
                            <ul class="des">
                                <li>
                                    <span>Địa chỉ: </span>
                                    Khu Phố 6, Phường Linh Trung, TP. Thủ Đức, TP. Hồ Chí Minh
                                </li>
                                <li>
                                    <span>Số điện thoại: </span>
                                    <a href="#">012345678</a>
                                </li>
                                <li>
                                    <span>Email: </span>
                                    <a href="">info@gmail.com</a>
                                </li>
                            </ul>
                        </div>
                        <!-- Footer Logo Area End Here -->
                        <!-- Begin Footer Block Area -->
                        <div class="col-lg-2 col-md-3 col-sm-6">
                            <div class="footer-block">
                                <h3 class="footer-block-title">Sản phẩm</h3>
                                <ul>
                                    <li><a href="san-pham-giam-gia.html">Giảm giá</a></li>
                                    <li><a href="san-pham-mua-nhieu.html">Sản phẩm mua nhiều</a></li>
                                    <li><a href="san-pham-noi-bat.html">Sản phẩm nổi bật</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- Footer Block Area End Here -->
                        <!-- Begin Footer Block Area -->
                        <div class="col-lg-2 col-md-3 col-sm-6">
                            <div class="footer-block">
                                <h3 class="footer-block-title">Về công ty</h3>
                                <ul>

                                    <li><a href="faq.html">FAQs</a></li>
                                    <li><a href="about-us.html">Về chúng tôi</a></li>
                                    <li><a href="contact.html">Liên hệ</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- Footer Block Area End Here -->
                        <!-- Begin Footer Block Area -->
                        <div class="col-lg-4">
                            <div class="footer-block">
                                <h3 class="footer-block-title">Follow Us</h3>
                                <ul class="social-link">
                                    <li class="twitter">
                                        <a href="https://twitter.com/" data-toggle="tooltip" target="_blank"
                                           title="Twitter">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li class="rss">
                                        <a href="https://rss.com/" data-toggle="tooltip" target="_blank"
                                           title="RSS">
                                            <i class="fa fa-rss"></i>
                                        </a>
                                    </li>
                                    <li class="google-plus">
                                        <a href="https://www.plus.google.com/discover" data-toggle="tooltip"
                                           target="_blank" title="Google +">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                    </li>
                                    <li class="facebook">
                                        <a href="https://www.facebook.com/" data-toggle="tooltip" target="_blank"
                                           title="Facebook">
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                    </li>
                                    <li class="youtube">
                                        <a href="https://www.youtube.com/" data-toggle="tooltip" target="_blank"
                                           title="Youtube">
                                            <i class="fa fa-youtube"></i>
                                        </a>
                                    </li>
                                    <li class="instagram">
                                        <a href="https://www.instagram.com/" data-toggle="tooltip" target="_blank"
                                           title="Instagram">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- Begin Footer Newsletter Area -->
                            <div class="footer-newsletter">
                                <h4>Đăng kí để nhận thêm nhiều ưu đãi</h4>
                                <form action="#" method="post" id="mc-embedded-subscribe-form"
                                      name="mc-embedded-subscribe-form" class="footer-subscribe-form validate"
                                      target="_blank" novalidate>
                                    <div id="mc_embed_signup_scroll">
                                        <div id="mc-form" class="mc-form subscribe-form form-group">
                                            <input id="mc-email" type="email" autocomplete="off"
                                                   placeholder="Nhập email của bạn"/>
                                            <button class="btn" id="mc-submit">Đăng kí</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- Footer Newsletter Area End Here -->
                        </div>
                        <!-- Footer Block Area End Here -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Static Middle Area End Here -->
        <!-- Begin Footer Static Bottom Area -->
        <div class="footer-static-bottom pt-55 pb-55">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Begin Footer Payment Area -->
                        <div class="copyright text-center">
                            <a href="#">
                                <img loading="lazy" src="images/payment/1.png" alt="">
                            </a>
                        </div>
                        <!-- Footer Payment Area End Here -->
                        <!-- Begin Copyright Area -->
                        <div class="copyright text-center pt-25">
                            <span>© 2021 Group 24. Tất cả các quyền được bảo lưu.</span>
                        </div>
                        <!-- Copyright Area End Here -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Static Bottom Area End Here -->
    </div>
</div>
<!-- Body Wrapper End Here -->
<!-- jQuery-V1.12.4 -->
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<!-- Popper js -->
<script src="js/vendor/popper.min.js"></script>
<!-- Bootstrap V4.1.3 Fremwork js -->
<script src="js/bootstrap.min.js"></script>
<!-- Ajax Mail js -->
<script src="js/ajax-mail.js"></script>
<!-- Meanmenu js -->
<script src="js/jquery.meanmenu.min.js"></script>
<!-- Wow.min js -->
<script src="js/wow.min.js"></script>
<!-- Slick Carousel js -->
<script src="js/slick.min.js"></script>
<!-- Owl Carousel-2 js -->
<script src="js/owl.carousel.min.js"></script>
<!-- Magnific popup js -->
<script src="js/jquery.magnific-popup.min.js"></script>
<!-- Isotope js -->
<script src="js/isotope.pkgd.min.js"></script>
<!-- Imagesloaded js -->
<script src="js/imagesloaded.pkgd.min.js"></script>
<!-- Mixitup js -->
<script src="js/jquery.mixitup.min.js"></script>
<!-- Countdown -->
<script src="js/jquery.countdown.min.js"></script>
<!-- Counterup -->
<script src="js/jquery.counterup.min.js"></script>
<!-- Waypoints -->
<script src="js/waypoints.min.js"></script>
<!-- Barrating -->
<script src="js/jquery.barrating.min.js"></script>
<!-- Jquery-ui -->
<script src="js/jquery-ui.min.js"></script>
<!-- Venobox -->
<script src="js/venobox.min.js"></script>
<!-- Nice Select js -->
<script src="js/jquery.nice-select.min.js"></script>
<!-- ScrollUp js -->
<script src="js/scrollUp.min.js"></script>
<!-- Main/Activator js -->
<script src="js/main.js"></script>
</body>

<!-- index-231:38-->

</html>