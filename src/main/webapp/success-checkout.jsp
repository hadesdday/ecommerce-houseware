<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String email = (String) request.getAttribute("email");
%>
<!doctype html>
<html class="no-js" lang="zxx">

<!-- login-register31:27-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Thành công || NLU</title>
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
                                    <c:if test="${sessionScope.user == null}">
                                        <div>
                                            <span class="mr-3"><a href="register.jsp">Đăng Ký</a></span>
                                            <span class="mr-3"><a href="login.jsp">Đăng Nhập</a></span>
                                        </div>
                                    </c:if>
                                    <c:if test="${sessionScope.user != null}">
                                        <div class="ht-setting-trigger">
                                            <span>Chào, ${sessionScope.user.fullname}</span></div>
                                        <div class="setting ht-setting">
                                            <ul class="ht-setting-list">
                                                <li><a href="#">My Account</a></li>
                                                <li><a href="#">Checkout</a></li>
                                                <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
                                            </ul>
                                        </div>
                                    </c:if>
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
                            <a href="${pageContext.request.contextPath}/">
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
                                    <li class=""><a href="${pageContext.request.contextPath}/">Trang chủ</a>

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

                                    <!-- <li><a href="about-us.jsp">About Us</a></li> -->
                                    <li><a href="contact.jsp">Liên hệ</a></li>

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
                    <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>
                    <li class="active">Thanh toán</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Li's Breadcrumb Area End Here -->
    <!-- Begin Login Content Area -->
    <div class="page-section mb-60 mt-60">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb-30">
                    <!-- Login Form s-->
                    <form action="#">
                        <div class="sent-mail-form">
                            <h4 class="sent-mail-title text-center">
                                <i class="fa fa-4x fa-check-circle"></i>
                            </h4>
                            <div class="row">
<%--                                <c:if test="${requestScope.tokenSent.length() > 1}">--%>
<%--                                    <div class="col-md-12 col-12 mb-20">--%>
<%--                                        <h1 class="text-center">Đặt lại mật khẩu</h1>--%>
<%--                                    </div>--%>
<%--                                    <div class="col-md-12">--%>
<%--                                        <p class="text-center">${requestScope.tokenSent} <%=email%>--%>
<%--                                        </p>--%>
<%--                                        <p class="text-center">Vui lòng kiểm tra trong thư rác nếu như không tìm thấy--%>
<%--                                            trong--%>
<%--                                            hộp thư đến</p>--%>
<%--                                    </div>--%>
<%--                                </c:if>--%>
<%--                                <c:if test="${requestScope.resetSuccess.length() > 1}">--%>
<%--                                    <div class="col-md-12 col-12 mb-20">--%>
<%--                                        <h1 class="text-center">${requestScope.resetSuccess}</h1>--%>
<%--                                    </div>--%>
<%--                                    <div class="col-md-12">--%>
<%--                                        <p class="text-center">Bạn đã thành công đặt lại mật khẩu cho tài khoản bằng--%>
<%--                                            email <%=email%>--%>
<%--                                        </p>--%>
<%--                                    </div>--%>
<%--                                </c:if>--%>
                                <div class="col-md-12 d-flex justify-content-center mt-20">
                                    <a href="${pageContext.request.contextPath}/"><i class="fa fa-arrow-left pr-2"></i> Trở về trang chủ</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Login Content Area End Here -->
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

                                    <li><a href="faq.jsp">FAQs</a></li>
                                    <li><a href="about-us.jsp">Về chúng tôi</a></li>
                                    <li><a href="contact.jsp">Liên hệ</a></li>
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
    <!-- Footer Area End Here -->
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

</html>