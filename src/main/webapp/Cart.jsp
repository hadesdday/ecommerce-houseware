<%@ page import="beans.Cart" %><%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 12/16/2021
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

%>
<jsp:useBean id="cart" scope="request" type="beans.Cart"/>
<!doctype html>
<html class="no-js" lang="zxx">

<!-- shopping-cart31:32-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Shopping Cart || limupa - Digital Products Store eCommerce Bootstrap 4 Template</title>
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
                                <li><span>Telephone Enquiry:</span><a href="#">(+123) 123 321 345</a></li>
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
                                        <span class="mr-3"><a href="register.html">Đăng Ký</a></span>
                                        <span class="mr-3"><a href="login.html">Đăng Nhập</a></span>
                                    </div>
                                    <!-- <div class="ht-setting-trigger"><span>Setting</span></div> -->
                                    <div class="setting ht-setting">
                                        <ul class="ht-setting-list">
                                            <li><a href="login-register.html">My Account</a></li>
                                            <li><a href="checkout.html">Checkout</a></li>
                                            <li><a href="login-register.html">Sign In</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <!-- Setting Area End Here -->
                                <!-- Begin Currency Area -->
                                <li>
                                    <span class="currency-selector-wrapper">Currency :</span>
                                    <div class="ht-currency-trigger"><span>USD $</span></div>
                                    <div class="currency ht-currency">
                                        <ul class="ht-setting-list">
                                            <li><a href="#">EUR €</a></li>
                                            <li class="active"><a href="#">USD $</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <!-- Currency Area End Here -->
                                <!-- Begin Language Area -->
                                <li>
                                    <span class="language-selector-wrapper">Language :</span>
                                    <div class="ht-language-trigger"><span>English</span></div>
                                    <div class="language ht-language">
                                        <ul class="ht-setting-list">
                                            <li class="active"><a href="#"><img src="images/menu/flag-icon/1.jpg"
                                                                                alt="">English</a></li>
                                            <li><a href="#"><img src="images/menu/flag-icon/2.jpg"
                                                                 alt="">Français</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <!-- Language Area End Here -->
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
                            <a href="index.html">
                                <img src="images/menu/logo/1.jpg" alt="">
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
                            <input type="text" placeholder="Enter your search key ...">
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
                                        <span class="item-text">${cart.total()}
                                                <span class="cart-item-count">${cart.products.size()}</span>
                                            </span>
                                    </div>
                                    <span></span>
                                    <div class="minicart">
                                        <ul class="minicart-product-list">
                                            <c:set var="list" value="${cart.products}"/>
                                            <c:forEach items="${list}" var="item">
                                                <li>
                                                    <a href="product-details.jsp" class="minicart-product-image">
                                                        <img src="${pageContext.request.contextPath}/img/${item.imageMain}" width=50px" height="50px" alt="cart products">
                                                    </a>
                                                    <div class="minicart-product-details">
                                                        <h6><a href="product-details.jsp">${item.ten_sp}</a></h6>
                                                        <span class="price">${item.gia}</span><span>VND x</span><span
                                                            class="quantity">${item.quantitySold}</span>
                                                    </div>
                                                    <button class="close" title="Remove" pid="${item.id_sanpham}">
                                                        <i class="fa fa-close"></i>
                                                    </button>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                        <p class="minicart-total">SUBTOTAL: <span>${cart.total()}</span></p>
                                        <div class="minicart-button">
                                            <a href="${pageContext.request.contextPath}/Cart"
                                               class="li-button li-button-dark li-button-fullwidth li-button-sm">
                                                <span>Xem giỏ hàng</span>
                                            </a>
                                            <a href="${pageContext.request.contextPath}/Checkout"
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
                                    <li class=""><a href="{pageContext.request.contextPath}">Trang chủ</a>

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
                                    <li class="megamenu-static-holder"><a href="blog-list.html">Blog</a>

                                    </li>
                                    <!-- <li><a href="about-us.html">About Us</a></li> -->
                                    <li><a href="contact.html">Liên hệ</a></li>

                                    </li>
                                    <!-- Begin Header Bottom Menu Information Area -->
                                    <li class="hb-info f-right p-0 d-sm-none d-lg-block">
                                        <span>Khu phố 6, Phường Linh Trung, TP. Thủ Đức, TP. Hồ Chí Minh</span>
                                    </li>
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
                    <li><a href="{pageContext.request.contextPath}">Home</a></li>
                    <li class="active">Giỏ hàng</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Li's Breadcrumb Area End Here -->
    <!--Shopping Cart Area Strat-->
    <div class="Shopping-cart-area pt-60 pb-60">
        <div class="container">
            <div class="row">
                <div class="col-12">

                    <div class="table-content table-responsive">
                        <table class="table cart-table">
                            <thead>
                            <tr>
                                <th class="li-product-remove">Loại bỏ</th>
                                <th class="li-product-thumbnail">Hình ảnh</th>
                                <th class="cart-product-name">Tên sản phẩm</th>
                                <th class="li-product-price">Giá sản phẩm</th>
                                <th class="li-product-quantity">Số lượng</th>
                                <th class="li-product-subtotal">Tổng cộng</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:set var="list" value="${cart.products}"/>
                            <c:forEach items="${list}" var="item">
                                <tr>
                                    <td class="li-product-remove"><a class="remove-product" pid="${item.id_sanpham}"
                                                                     href="#"><i class="fa fa-times"></i></a></td>
                                    <td class="li-product-thumbnail"><a href="#"><img
                                            src="${pageContext.request.contextPath}/img/${item.getImageMain()}" width="50px" height="50px" alt="${item.getImageMain()}"></a></td>
                                    <td class="li-product-name"><a href="#">${item.ten_sp}</a></td>
                                    <td class="li-product-price"><span class="amount">${item.gia}</span></td>
                                    <td class="quantity">
                                        <label> Quantity</label>
                                        <div class="cart-plus-minus">
                                            <input class="cart-plus-minus-box changeQuantity"
                                                   oldQuantity="${item.quantitySold}" pid="${item.id_sanpham}"
                                                   value="${item.quantitySold}" type="text">
                                            <div class="dec qtybutton"><i class="fa fa-angle-down"></i></div>
                                            <div class="inc qtybutton"><i class="fa fa-angle-up"></i></div>
                                        </div>
                                    </td>
                                    <td class="product-subtotal"><span class="amount">${item.total()}</span></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="coupon-all">
                                <div class="coupon">
                                    <form method="post" action="/houseware_nlu_war_exploded/BillDiscountController"
                                          id="dicount-form">
                                        <input id="coupon_code" class="input-text" name="coupon_code" value=""
                                               placeholder="Mã khuyến mãi" type="text">
                                        <input class="button" name="apply_coupon" value="Áp dụng" type="submit">
                                    </form>
                                </div>
                                <div class="coupon2">
                                    <form>
                                        <input class="button" name="update_cart" value="cập nhật giỏ hàng"
                                               type="submit">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5 ml-auto">
                            <div class="cart-page-total">
                                <h2>Tổng giá trị giỏ hàng</h2>
                                <ul>
                                    <li>Tổng cộng <span>${cart.total()*(1-cart.rate)}</span></li>
                                </ul>
                                <a href="${pageContext.request.contextPath}/Checkout">Thanh toán</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--Shopping Cart Area End-->
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
                                    <img src="images/shipping-icon/1.png" alt="Shipping Icon">
                                </div>
                                <div class="shipping-text">
                                    <h2>Miễn phí vận chuyển</h2>
                                    <p>Và miễn phí tiền vận chuyển khi trả lại hàng. Kiểm tra ngày giao hàng trong
                                        thủ tục thanh toán.</p>
                                </div>
                            </div>
                        </div>
                        <!-- Li's Shipping Inner Box Area End Here -->
                        <!-- Begin Li's Shipping Inner Box Area -->
                        <div class="col-lg-3 col-md-6 col-sm-6 pb-sm-55 pb-xs-55">
                            <div class="li-shipping-inner-box">
                                <div class="shipping-icon">
                                    <img src="images/shipping-icon/2.png" alt="Shipping Icon">
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
                                    <img src="images/shipping-icon/3.png" alt="Shipping Icon">
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
                                    <img src="images/shipping-icon/4.png" alt="Shipping Icon">
                                </div>
                                <div class="shipping-text">
                                    <h2>Trung tâm hỗ trợ 24/7</h2>
                                    <p>có thắc mắc xin vui lòng gọi chuyên gia hoặc chat online.</p>
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
                                <img src="images/menu/logo/1.jpg" alt="Footer Logo">
                                <p class="info">
                                    Chúng tôi có sản phẩm tốt nhất cho ngôi nhà của bạn.
                                </p>
                            </div>
                            <ul class="des">
                                <li>
                                    <span>Địa chỉ: </span>
                                    Tp.Hồ Chí Minh, Việt Nam
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
                                    <li><a href="#">Giảm giá</a></li>
                                    <li><a href="#">Sản phẩm mới</a></li>
                                    <li><a href="#">Bán chạy</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- Footer Block Area End Here -->
                        <!-- Begin Footer Block Area -->
                        <div class="col-lg-2 col-md-3 col-sm-6">
                            <div class="footer-block">
                                <h3 class="footer-block-title">Về công ty</h3>
                                <ul>
                                    <li><a href="#">Giao hàng</a></li>
                                    <li><a href="#">Legal Notice</a></li>
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
                                           target="_blank" title="Google Plus">
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
                                <img src="images/payment/1.png" alt="">
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

<!-- shopping-cart31:32-->

</html>