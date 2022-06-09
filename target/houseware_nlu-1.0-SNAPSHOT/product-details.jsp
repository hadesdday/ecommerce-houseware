<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="product" scope="request" type="beans.Product"/>
<jsp:useBean id="sameCategoryProducts" scope="request" type="java.util.List"/>
<jsp:useBean id="comments" scope="request" type="java.util.List"/>

<!doctype html>
<html class="no-js" lang="zxx">

<!-- single-product31:30-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Sản Phẩm || NLU</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">
    <!-- Material Design Iconic Font-V2.2.0 -->
    <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- Font Awesome Stars-->
    <link rel="stylesheet" href="css/fontawesome-stars.css">
    <!-- Meanmenu CSS -->
    <link rel="stylesheet" href="css/meanmenu.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- Slick Carousel CSS -->
    <link rel="stylesheet" href="css/slick.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Jquery-ui CSS -->
    <link rel="stylesheet" href="css/jquery-ui.min.css">
    <!-- Venobox CSS -->
    <link rel="stylesheet" href="css/venobox.css">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="css/nice-select.css">
    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <!-- Bootstrap V4.1.3 Fremwork CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Helper CSS -->
    <link rel="stylesheet" href="css/helper.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Modernizr js -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->
<!-- Begin Body Wrapper -->
<div class="body-wrapper">
    <!-- Begin Header Area -->
    <header>
        <!-- Begin Header Top Area -->
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <!-- Begin Header Top Left Area -->
                    <div class="col-lg-3 col-md-4">
                        <div class="header-top-left">
                            <ul class="phone-wrap">
                                <li><span>Telephone Enquiry:</span><a href="#">(+84) 769 833 185</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Header Top Left Area End Here -->
                    <!-- Begin Header Top Right Area -->
                    <div class="col-lg-9 col-md-8">
                        <div class="header-top-right">
                            <ul class="ht-menu">
                                <!-- Begin Setting Area -->
                                <li>
                                    <div>
                                        <span class="mr-3"><a href="register.jsp">Đăng Ký</a></span>
                                        <span class="mr-3"><a href="login.jsp">Đăng Nhập</a></span>
                                    </div>
                                    <!-- <div class="ht-setting-trigger"><span>Setting</span></div> -->
                                    <div class="setting ht-setting">
                                        <!-- <ul class="ht-setting-list">
                                            <li><a href="login-register.jsp">My Account</a></li>
                                            <li><a href="checkout.html">Checkout</a></li>
                                            <li><a href="login-register.jsp">Sign In</a></li>
                                        </ul> -->
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Header Top Right Area End Here -->
                </div>
            </div>
        </div>
        <!-- Header Top Area End Here -->
        <!-- Begin Header Middle Area -->
        <div class="header-middle pl-sm-0 pr-sm-0 pl-xs-0 pr-xs-0">
            <div class="container">
                <div class="row">
                    <!-- Begin Header Logo Area -->
                    <div class="col-lg-3">
                        <div class="logo pb-sm-30 pb-xs-30">
                            <a href="index.jsp">
                                <img loading="lazy" src="images/menu/logo/1.jpg" alt="">
                            </a>
                        </div>
                    </div>
                    <!-- Header Logo Area End Here -->
                    <!-- Begin Header Middle Right Area -->
                    <div class="col-lg-9 pl-0 ml-sm-15 ml-xs-15">
                        <!-- Begin Header Middle Searchbox Area -->
                        <form action="#" class="hm-searchbox">
                            <select class="nice-select select-search-category">
                                <option value="0">All</option>
                                <option value="20">- - - - Máy vắt cam</option>
                                <option value="21">- - - - Nồi cơm điện</option>
                                <option value="22">- - - - Máy rửa chén</option>
                                <option value="23">- - - - Máy xay thịt</option>
                                <option value="24">- - - - Máy pha cà phê</option>
                                <option value="25">- - - - Bếp từ hồng ngoại</option>
                                <option value="26">- - - - Lò nướng bánh mì</option>
                                <option value="27">- - - - Bình siêu tốc</option>
                                <option value="28">- - - - Máy xay sinh tố</option>
                                <option value="18">- - - - Nồi chính hãng</option>
                                <option value="29">- - - - Bếp ga &amp; Bếp ga mini</option>
                                <option value="30">- - - - Lò vi sóng</option>
                                <option value="31">- - - - Nồi cơm mini</option>
                                <option value="32">- - - - Dụng cụ nhà bếp</option>
                                <option value="33">- - - - Nồi chiên không dầu</option>

                            </select>
                            <input type="text" placeholder="Nhập từ khóa cần tìm">
                            <button class="li-btn" type="submit"><i class="fa fa-search"></i></button>
                        </form>
                        <!-- Header Middle Searchbox Area End Here -->
                        <!-- Begin Header Middle Right Area -->
                        <div class="header-middle-right">
                            <ul class="hm-menu">
                                <!-- Begin Header Middle Wishlist Area -->
                                <li class="hm-wishlist">
                                    <a href="wishlist.html">
                                        <span class="cart-item-count wishlist-item-count">0</span>
                                        <i class="fa fa-heart-o"></i>
                                    </a>
                                </li>
                                <!-- Header Middle Wishlist Area End Here -->
                                <!-- Begin Header Mini Cart Area -->
                                <li class="hm-minicart">
                                    <div class="hm-minicart-trigger">
                                        <span class="item-icon"></span>
                                        <span class="item-text">£160
                                                <span class="cart-item-count">2</span>
                                            </span>
                                    </div>
                                    <span></span>
                                    <div class="minicart">
                                        <ul class="minicart-product-list">
                                            <li>
                                                <a href="product-details.jsp" class="minicart-product-image">
                                                    <img loading="lazy" src="images/product/small-size/3.jpg"
                                                         alt="cart products">
                                                </a>
                                                <div class="minicart-product-details">
                                                    <h6><a href="product-details.jsp">Aenean eu tristique</a></h6>
                                                    <span>£80 x 1</span>
                                                </div>
                                                <button class="close">
                                                    <i class="fa fa-close"></i>
                                                </button>
                                            </li>
                                            <li>
                                                <a href="product-details.jsp" class="minicart-product-image">
                                                    <img loading="lazy" src="images/product/small-size/4.jpg"
                                                         alt="cart products">
                                                </a>
                                                <div class="minicart-product-details">
                                                    <h6><a href="product-details.jsp">Aenean eu tristique</a></h6>
                                                    <span>£80 x 1</span>
                                                </div>
                                                <button class="close">
                                                    <i class="fa fa-close"></i>
                                                </button>
                                            </li>
                                        </ul>
                                        <p class="minicart-total">SUBTOTAL: <span>£160</span></p>
                                        <div class="minicart-button">
                                            <a href="shopping-cart.html"
                                               class="li-button li-button-dark li-button-fullwidth li-button-sm">
                                                <span>Xem giỏ hàng</span>
                                            </a>
                                            <a href="checkout.html"
                                               class="li-button li-button-fullwidth li-button-sm">
                                                <span>Thanh toán</span>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <!-- Header Mini Cart Area End Here -->
                            </ul>
                        </div>
                        <!-- Header Middle Right Area End Here -->
                    </div>
                    <!-- Header Middle Right Area End Here -->
                </div>
            </div>
        </div>
        <!-- Header Middle Area End Here -->
        <!-- Begin Header Bottom Area -->
        <div class="header-bottom header-sticky d-none d-lg-block">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Begin Header Bottom Menu Area -->
                        <div class="hb-menu hb-menu-2 d-xl-block">
                            <nav>
                                <ul>
                                    <li class=""><a href="index.jsp">Trang chủ</a>

                                    </li>
                                    <li class="megamenu-holder"><a href="danh-muc-san-pham.html">Danh mục sản
                                        phẩm</a>
                                        <ul class="megamenu hb-megamenu">
                                            <li><a href="gia-dung-nha-bep.html">Gia dụng nhà bếp</a>
                                                <ul>
                                                    <li><a href="noi-com-dien.html">Nồi cơm điện</a></li>
                                                    <li><a href="lo-vi-song.html">Lò vi sóng</a></li>
                                                    <li><a href="noi-chien-khong-dau.html">Nồi chiên không dầu</a>
                                                    </li>
                                                    <li><a href="bep-tu.html">Bếp từ</a></li>
                                                    <li><a href="bep-hong-ngoai.html">Bếp hồng ngoại</a></li>
                                                    <li><a href="bep-ga.html">Bếp gas</a></li>
                                                    <li><a href="noi-ap-suat.html">Nồi áp suất</a></li>
                                                    <li><a href="lo-nuong.html">Lò nướng</a></li>
                                                    <li><a href="binh-dun-sieu-toc.html">Bình đun siêu tốc</a></li>
                                                    <li><a href="binh-thuy-dien.html">Bình thủy điện</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="may-xay-vat-ep.html">Máy xay, vắt, ép</a>
                                                <ul>
                                                    <li><a href="may-xay-sinh-to.html">Máy xay sinh tố</a></li>
                                                    <li><a href="may-ep-trai-cay.html">Máy ép trái cây</a></li>
                                                    <li><a href="may-pha-cafe.html">Máy pha cà phê</a></li>
                                                    <li><a href="may-vat-cam.html">Máy vắt cam</a></li>
                                                    <li><a href="may-xay-thit.html">Máy xay thịt</a></li>

                                                </ul>
                                            </li>
                                            <li><a href="dung-cu-nha-bep.html">Dụng cụ nhà bếp</a>
                                                <ul>
                                                    <li><a href="xoong-noi.html">Xoong, nồi</a></li>
                                                    <li><a href="chao-chong-dinh.html">Chảo chống dính</a></li>
                                                    <li><a href="dung-cu-an.html">Dụng cụ ăn</a></li>
                                                    <li><a href="noi-chien-khong-dau.html">Nồi chiên không dầu</a>
                                                    </li>

                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-holder"><a href="thuong-hieu.html">Thương hiệu</a>
                                        <ul class="hb-dropdown">
                                            <li class="sub-dropdown-holder"><a href="phillips.html">Phillips</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a href="sunhouse.html">Sunhouse</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a href="deawon.html">Deawoo</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a href="panasonic.html">Panasonic</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a href="sauce.html">Sauce</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a href="sharp.html">Sharp</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a href="electrolux.html">Electrolux</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a href="kangaroo.html">Kangaroo</a>

                                            </li>
                                        </ul>
                                    </li>

                                    <!-- <li><a href="about-us.html">About Us</a></li> -->
                                    <li><a href="contact.html">Liên hệ</a></li>

                                    </li>
                                    <!-- Begin Header Bottom Menu Information Area -->

                                    <!-- Header Bottom Menu Information Area End Here -->
                                </ul>
                            </nav>
                        </div>
                        <!-- Header Bottom Menu Area End Here -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Header Bottom Area End Here -->
        <!-- Begin Mobile Menu Area -->
        <div class="mobile-menu-area d-lg-none d-xl-none col-12">
            <div class="container">
                <div class="row">
                    <div class="mobile-menu">
                    </div>
                </div>
            </div>
        </div>
        <!-- Mobile Menu Area End Here -->
    </header>
    <!-- Header Area End Here -->
    <!-- Begin Li's Breadcrumb Area -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="breadcrumb-content">
                <ul>
                    <li><a href="index.jsp">Trang chủ</a></li>
                    <li class="active">${product.ten_sp}</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Li's Breadcrumb Area End Here -->
    <!-- content-wraper start -->
    <div class="content-wraper">
        <div class="container">
            <div class="row single-product-area">
                <div class="col-lg-5 col-md-6">
                    <!-- Product Details Left -->
                    <div class="product-details-left">
                        <div class="product-details-images slider-navigation-1">
                            <div class="lg-image">
                                <a class="popup-img venobox vbox-item" href="images/product/large-size/1.jpg"
                                   data-gall="myGallery">
                                    <img loading="lazy" src="images/product/large-size/1.jpg" alt="product image">
                                </a>
                            </div>
                            <div class="lg-image">
                                <a class="popup-img venobox vbox-item" href="images/product/large-size/2.jpg"
                                   data-gall="myGallery">
                                    <img loading="lazy" src="images/product/large-size/2.jpg" alt="product image">
                                </a>
                            </div>
                        </div>
                        <div class="product-details-thumbs slider-thumbs-1">
                            <div class="sm-image"><img loading="lazy" src="images/product/small-size/1.jpg"
                                                       alt="product image thumb"></div>
                            <div class="sm-image"><img loading="lazy" src="images/product/small-size/2.jpg"
                                                       alt="product image thumb"></div>
                            <div class="sm-image"><img loading="lazy" src="images/product/small-size/3.jpg"
                                                       alt="product image thumb"></div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-7 col-md-6">
                    <div class="product-details-view-content pt-60">
                        <div class="product-info">
                            <h2>${product.ten_sp}</h2>
                            <span class="product-details-ref">
                                  <a href="${pageContext.request.contextPath}/ProductList?category=${product.ma_loaisp}">
                                      ${product.ma_loaisp}</a>
                            </span>
                            <div class="rating-box pt-20">
                                <ul class="rating rating-with-review-item">
                                    ${product.avgRating}
                                </ul>
                            </div>
                            <div class="price-box pt-20">
                                <fmt:setLocale value="vi-VN"/>
                                <span class="new-price new-price-2">
                                <fmt:formatNumber value="${product.gia}" type="currency"/>
                                </span>
                            </div>
                            <div class="product-desc">
                                <p>
                                        <span>
                                            ${product.mota}
                                        </span>
                                </p>
                            </div>
                            <div class="single-add-to-cart">
                                <div class="quantity">
                                    <label>Số lượng</label>
                                    <div class="cart-plus-minus">
                                        <input class="cart-plus-minus-box" value="1" type="text">
                                        <div class="dec qtybutton"><i class="fa fa-angle-down"></i></div>
                                        <div class="inc qtybutton"><i class="fa fa-angle-up"></i></div>
                                    </div>
                                </div>
                                <button class="add-to-cart add-cart" pid="${product.id_sanpham}"
                                        path="/houseware_nlu_war_exploded/AddToCart" type="submit">
                                    Add to cart
                                </button>
                            </div>
                            <div class="product-additional-info pt-25">
                                <div class="product-social-sharing pt-25">
                                    <ul>
                                        <li class="facebook"><a href="#"><i class="fa fa-facebook"></i>Facebook</a>
                                        </li>
                                        <li class="twitter"><a href="#"><i class="fa fa-twitter"></i>Twitter</a>
                                        </li>
                                        <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i>Google
                                            +</a></li>
                                        <li class="instagram"><a href="#"><i
                                                class="fa fa-instagram"></i>Instagram</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="block-reassurance">
                                <ul>
                                    <li>
                                        <div class="reassurance-item">
                                            <div class="reassurance-icon">
                                                <i class="fa fa-check-square-o"></i>
                                            </div>
                                            <p>An toàn tuyệt đối</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="reassurance-item">
                                            <div class="reassurance-icon">
                                                <i class="fa fa-truck"></i>
                                            </div>
                                            <p>Dịch vụ vận chuyển siêu tốc</p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="reassurance-item">
                                            <div class="reassurance-icon">
                                                <i class="fa fa-exchange"></i>
                                            </div>
                                            <p>Chính sách đổi trả phù hợp</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- content-wraper end -->
    <!-- Begin Product Area -->
    <div class="product-area pt-35">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="li-product-tab">
                        <ul class="nav li-product-menu">
                            <li><a class="active" data-toggle="tab" href="#description"><span>Mô tả</span></a>
                            </li>
                            <li><a data-toggle="tab" href="#reviews"><span>Đánh giá</span></a></li>
                        </ul>
                    </div>
                    <!-- Begin Li's Tab Menu Content Area -->
                </div>
            </div>
            <div class="tab-content">
                <div id="description" class="tab-pane active show" role="tabpanel">
                    <div class="product-description">
                            <span>
                                ${product.mota}
                            </span>
                    </div>
                </div>
                <div id="reviews" class="tab-pane" role="tabpanel">
                    <div class="product-reviews">
                        <div class="product-details-comment-block">
                            <div class="comment-review">
                                <span>Số sao trung bình</span>
                                <ul class="rating">
                                    ${product.avgRating}
                                </ul>
                            </div>
                            <div class="review-btn">
                                <a class="review-links" href="#" data-toggle="modal" data-target="#mymodal">Viết đánh
                                    giá</a>
                            </div>
                            <!-- Begin Quick View | Modal Area -->
                            <div class="modal fade modal-wrapper" id="mymodal">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <h3 class="review-page-title">Viết đánh giá của bạn</h3>
                                            <div class="modal-inner-area row">
                                                <div class="col-lg-6">
                                                    <div class="li-review-product">
                                                        <img loading="lazy"
                                                             src="data:image/jpg;base64,${product.imageMain}"
                                                             alt="Li's Product">
                                                        <div class="li-review-product-desc">
                                                            <p class="li-product-name">${product.ten_sp}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="li-review-content">
                                                        <!-- Begin Feedback Area -->
                                                        <div class="feedback-area">
                                                            <div class="feedback">
                                                                <h3 class="feedback-title">Đánh giá</h3>
                                                                <p class="your-opinion">
                                                                    <label>Số sao</label>
                                                                    <span>
                                                                                <select class="star-rating"
                                                                                        name="star-rating">
                                                                                    <option value="1">1</option>
                                                                                    <option value="2">2</option>
                                                                                    <option value="3">3</option>
                                                                                    <option value="4">4</option>
                                                                                    <option value="5">5</option>
                                                                                </select>
                                                                            </span>
                                                                </p>
                                                                <p class="feedback-form">
                                                                    <label for="feedback">Nội dung</label>
                                                                    <textarea id="feedback" name="comment"
                                                                              cols="45" rows="8"
                                                                              aria-required="true"></textarea>
                                                                </p>
                                                                <div class="feedback-input">
                                                                    <p class="feedback-form-author">
                                                                        <label for="author">Tên<span
                                                                                class="required">*</span>
                                                                        </label>
                                                                        <input id="author" name="author"
                                                                               value="" size="30"
                                                                               aria-required="true" type="text">
                                                                    </p>
                                                                    <p
                                                                            class="feedback-form-author feedback-form-email">
                                                                        <label for="email">Email<span
                                                                                class="required">*</span>
                                                                        </label>
                                                                        <input id="email" name="email" value=""
                                                                               size="30" aria-required="true"
                                                                               type="text">
                                                                        <%--                                                                            <span class="required"><sub>*</sub>--%>
                                                                        <%--                                                                                    Required fields</span>--%>
                                                                    </p>
                                                                    <div class="feedback-btn pb-15">
                                                                        <a href="#" class="close"
                                                                           data-dismiss="modal"
                                                                           aria-label="Close">Hủy</a>
                                                                        <a href="#">Gửi</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- Feedback Area End Here -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Quick View | Modal Area End Here -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Product Area End Here -->
    <!-- Begin Li's Laptop Product Area -->
    <section class="product-area li-laptop-product pt-30 pb-50">
        <div class="container">
            <div class="row">
                <!-- Begin Li's Section Area -->
                <div class="col-lg-12">
                    <div class="li-section-title">
                        <h2>
                            <span>Các sản phẩm cùng loại</span>
                        </h2>
                    </div>
                    <div class="row">
                        <div class="product-active owl-carousel">
                            <c:forEach var="si" items="${sameCategoryProducts}">
                                <div class="col-lg-12">
                                    <!-- single-product-wrap start -->
                                    <div class="single-product-wrap">
                                        <div class="product-image">
                                            <a href="product-details.jsp">
                                                <img loading="lazy" src="data:image/jpg;base64,${si.getImageMain()}"
                                                     alt="Li's Product Image">
                                            </a>
                                            <span class="sticker">New</span>
                                        </div>
                                        <div class="product_desc">
                                            <div class="product_desc_info">
                                                <div class="product-review">
                                                    <h5 class="manufacturer">
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=${si.getMa_loaisp()}">${si.getMa_loaisp()}</a>
                                                    </h5>
                                                    <div class="rating-box">
                                                        <ul class="rating">
                                                                ${si.getAvgRating()}
                                                        </ul>
                                                    </div>
                                                </div>
                                                <h4><a class="product_name"
                                                       href="${pageContext.request.contextPath}/ProductDetails?pid=${si.getId_sanpham()}">${si.getTen_sp()}</a>
                                                </h4>
                                                <div class="price-box">
                                                    <fmt:setLocale value="vi-VN"/>
                                                    <span class="new-price">
                                                    <fmt:formatNumber value="${si.getGia()}"
                                                                      type="currency"/>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="add-actions">
                                                <ul class="add-actions-link">
                                                    <li class="add-cart active" pid="${si.getId_sanpham()}"
                                                        path="/houseware_nlu_war_exploded/AddToCart"><a href="#">Add to
                                                        cart</a></li>
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
    <div class="li-comment-section">
        <h3>${comments.size()} bình luận</h3>
        <ul>
            <c:forEach var="cmt" items="${comments}">
                <li>
                    <div class="author-avatar pt-15">
                        <img loading="lazy" src="images/product-details/user.png" alt="User">
                    </div>
                    <div class="comment-body pl-15">
                            <%--                        <span class="reply-btn pt-15 pt-xs-5"><a href="#">reply</a></span>--%>
                        <h5 class="comment-author pt-15">${cmt.getUsername()}</h5>
                        <div class="comment-post-date">
                                ${cmt.createdAt}
                        </div>
                        <p>${cmt.getContent()}</p>
                    </div>
                </li>
            </c:forEach>
            <%--            <li class="comment-children">--%>
            <%--                <div class="author-avatar pt-15">--%>
            <%--                    <img loading="lazy" src="images/product-details/admin.png" alt="Admin">--%>
            <%--                </div>--%>
            <%--                <div class="comment-body pl-15">--%>
            <%--                    <span class="reply-btn pt-15 pt-xs-5"><a href="#">reply</a></span>--%>
            <%--                    <h5 class="comment-author pt-15">admin</h5>--%>
            <%--                    <div class="comment-post-date">--%>
            <%--                        20 nov, 2018 at 9:30pm--%>
            <%--                    </div>--%>
            <%--                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim maiores adipisci optio ex,--%>
            <%--                        laboriosam facilis non pariatur itaque illo sunt?</p>--%>
            <%--                </div>--%>
            <%--            </li>--%>
            <%--            <li>--%>
            <%--                <div class="author-avatar pt-15">--%>
            <%--                    <img loading="lazy" src="images/product-details/admin.png" alt="Admin">--%>
            <%--                </div>--%>
            <%--                <div class="comment-body pl-15">--%>
            <%--                    <span class="reply-btn pt-15 pt-xs-5"><a href="#">reply</a></span>--%>
            <%--                    <h5 class="comment-author pt-15">admin</h5>--%>
            <%--                    <div class="comment-post-date">--%>
            <%--                        20 nov, 2018 at 9:30pm--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </li>--%>
        </ul>
    </div>
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
                                    <p>Miễn phí giao hàng trên mọi miền của tổ quốc.
                                    </p>
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

<!-- single-product31:32-->

</html>