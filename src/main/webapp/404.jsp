<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">

<!-- 40432:14-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Không tìm thấy || NLU</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">
    <!-- Material Design Iconic Font-V2.2.0 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/material-design-iconic-font.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <!-- Font Awesome Stars-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome-stars.css">
    <!-- Meanmenu CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/meanmenu.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
    <!-- Slick Carousel CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slick.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
    <!-- Jquery-ui CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui.min.css">
    <!-- Venobox CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/venobox.css">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nice-select.css">
    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
    <!-- Bootstrap V4.1.3 Fremwork CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- Helper CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/helper.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
    <!-- Modernizr js -->
    <script src="${pageContext.request.contextPath}/js/vendor/modernizr-2.8.3.min.js"></script>
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
                                <li><span>Số điện thoại :</span><a href="#">(+84) 567 8910</a></li>
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
                                    <c:if test="${sessionScope.user.role.equals('admin')}">
                                        <a href="${pageContext.request.contextPath}/admin/" class="mr-3">Go to admin
                                            page</a>
                                    </c:if>
                                    <c:if test="${sessionScope.user != null}">
                                        <div class="ht-setting-trigger">
                                            <span>Chào, ${sessionScope.customer.ten_kh}</span></div>
                                        <div class="setting ht-setting">
                                            <ul class="ht-setting-list">
                                                <li><a href="${pageContext.request.contextPath}/change-password.jsp">Đổi
                                                    mật khẩu</a></li>
                                                <li><a href="${pageContext.request.contextPath}/my-account.jsp">My
                                                    Account</a></li>
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
                                <img loading="lazy"
                                     src="https://raw.githubusercontent.com/hadesdday/a/main/logo_transparent.png"
                                     alt="" width="190" height="45" style="object-fit: cover">
                            </a>
                        </div>
                    </div>
                    <!-- Header Logo Area End Here -->
                    <!-- Begin Header Middle Right Area -->
                    <div class="col-lg-9 pl-0 ml-sm-15 ml-xs-15">
                        <!-- Begin Header Middle Searchbox Area -->
                        <form action="/houseware_nlu_war_exploded/ProductList" class="hm-searchbox">
                            <select name="category" class="nice-select select-search-category">
                                <%--                            <option value="0">All</option>--%>
                                <option value="noi-com">Nồi cơm điện</option>
                                <option value="20">Máy vắt cam</option>
                                <option value="22">Máy rửa chén</option>
                                <option value="23">Máy xay thịt</option>
                                <option value="24">Máy pha cà phê</option>
                                <option value="25">Bếp từ hồng ngoại</option>
                                <option value="26">Lò nướng bánh mì</option>
                                <option value="27">Bình siêu tốc</option>
                                <option value="28">Máy xay sinh tố</option>
                                <option value="18">Nồi chính hãng</option>
                                <option value="29">Bếp ga &amp; Bếp ga mini</option>
                                <option value="30">Lò vi sóng</option>
                                <option value="31">Nồi cơm mini</option>
                                <option value="32">Dụng cụ nhà bếp</option>
                                <option value="33">Nồi chiên không dầu</option>

                            </select>

                            <input type="text" name="search" placeholder="Nhập từ khóa cần tìm">
                            <input type="hidden" name="pageN" value="1">
                            <button class="li-btn" type="submit"><i class="fa fa-search"></i></button>
                        </form>
                        <!-- Header Middle Searchbox Area End Here -->
                        <!-- Begin Header Middle Right Area -->
                        <div class="header-middle-right">
                            <ul class="hm-menu">
                                <!-- Header Middle Wishlist Area End Here -->
                                <!-- Begin Header Mini Cart Area -->
                                <li class="hm-minicart">
                                    <div class="hm-minicart-trigger">
                                        <div class="hm-minicart-trigger2">
                                            <span class="item-icon"></span>
                                            <span class="item-text">${cart.total()}
                                                <span class="cart-item-count">${cart.products.size()}</span>
                                        </span>
                                        </div>
                                    </div>
                                    <span></span>
                                    <div class="minicart">
                                        <div class="minicart2">
                                            <ul class="minicart-product-list">
                                                <c:set var="list" value="${cart.products}"/>
                                                <c:forEach items="${list}" var="item">
                                                    <li>
                                                        <a href="product-details.jsp" class="minicart-product-image">
                                                            <img src="${pageContext.request.contextPath}/img/${item.imageMain}"
                                                                 alt="cart products" width="50" height="50">
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

                                            <p class="minicart-total">TỔNG: <span>${cart.total()}</span></p>
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
                                    <li class="megamenu-holder"><a>Danh mục sản
                                        phẩm</a>

                                        <ul class="megamenu hb-megamenu">
                                            <li><a>Gia dụng nhà bếp</a>
                                                <ul>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=noi-com&pageN=1">Nồi
                                                            cơm điện</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=lvs&pageN=1">Lò
                                                            vi sóng</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=nckd&pageN=1">Nồi
                                                            chiên không dầu</a></li>
                                                    </li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=bep-tu&pageN=1">Bếp
                                                            từ</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=bhn&pageN=1">Bếp
                                                            hồng ngoại</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=bep-ga&pageN=1">Bếp
                                                            gas</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=nas&pageN=1">Nồi
                                                            áp suất</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=lo-nuong&pageN=1">Lò
                                                            nướng</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=bdst&pageN=1">Bình
                                                            đun siêu tốc</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=btd&pageN=1">Bình
                                                            thủy điện</a></li>
                                                </ul>
                                            </li>
                                            <li><a>Máy xay, vắt, ép</a>
                                                <ul>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=may-xay-sinh-to&pageN=1">Máy
                                                            xay sinh tố</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=metc&pageN=1">Máy
                                                            ép trái cây</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=mpcf&pageN=1">Máy
                                                            pha cà phê</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=mvc&pageN=1">Máy
                                                            vắt cam</a></li>
                                                    <li><a href="mxt">Máy xay thịt</a></li>

                                                </ul>
                                            </li>
                                            <li><a>Dụng cụ nhà bếp</a>
                                                <ul>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=xoong-noi&pageN=1">Xoong,
                                                            nồi</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=ccd&pageN=1">Chảo
                                                            chống dính</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=dca&pageN=1">Dụng
                                                            cụ ăn</a></li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/ProductList?category=nckd&pageN=1">Nồi
                                                            chiên không dầu</a>
                                                    </li>

                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-holder"><a>Thương hiệu</a>
                                        <ul class="hb-dropdown">
                                            <li class="sub-dropdown-holder"><a
                                                    href="${pageContext.request.contextPath}/ProductList?category=phillips">Phillips</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a
                                                    href="${pageContext.request.contextPath}/ProductList?category=sunhouse">Sunhouse</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a
                                                    href="${pageContext.request.contextPath}/ProductList?category=deawon">Deawoo</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a
                                                    href="${pageContext.request.contextPath}/ProductList?category=panasonic">Panasonic</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a
                                                    href="${pageContext.request.contextPath}/ProductList?category=sauce">Sauce</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a
                                                    href="${pageContext.request.contextPath}/ProductList?category=sharp">Sharp</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a
                                                    href="${pageContext.request.contextPath}/ProductList?category=electrolux">Electrolux</a>

                                            </li>
                                            <li class="sub-dropdown-holder"><a
                                                    href="${pageContext.request.contextPath}/ProductList?category=kangaroo">Kangaroo</a>

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
    <div class="error404-area pt-30 pb-60">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="error-wrapper text-center ptb-50 pt-xs-20">
                        <div class="error-text">
                            <h1>404</h1>
                            <h2>KHÔNG TÌM THẤY</h2>
                            <p>Xin lỗi, chúng tôi không tìm thấy trang mà bạn cần!</p>
                        </div>
                        <div class="error-button">
                            <a href="${pageContext.request.contextPath}/">Trở về trang chủ</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Error 404 Area End -->
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
                                <img loading="lazy"
                                     src="https://raw.githubusercontent.com/hadesdday/a/main/logo_transparent.png"
                                     alt=""
                                     width="190" height="45" style="object-fit: cover">
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
                                    <a href="tel:09876554321">0987654321</a>
                                </li>
                                <li>
                                    <span>Email: </span>
                                    <a href="mailto:devwebchichoo@gmail.com">devwebchichoo@gmail.com</a>
                                </li>
                            </ul>
                        </div>
                        <!-- Footer Logo Area End Here -->
                        <!-- Begin Footer Block Area -->
                        <div class="col-lg-2 col-md-3 col-sm-6">
                            <div class="footer-block">
                                <h3 class="footer-block-title">Sản phẩm</h3>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/#giam-gia">Giảm giá</a></li>
                                    <li><a href="${pageContext.request.contextPath}/#mua-nhieu">Sản phẩm mua nhiều</a>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/#noi-bat">Sản phẩm nổi bật</a></li>
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
                                <h3 class="footer-block-title">Theo dõi chúng tôi tại</h3>
                                <ul class="social-link">
                                    <li class="twitter">
                                        <a href="https://twitter.com/" data-toggle="tooltip" target="_blank"
                                           title="Twitter">
                                            <i class="fa fa-twitter" style="margin-top:10px"></i>
                                        </a>
                                    </li>
                                    <li class="facebook">
                                        <a href="https://www.facebook.com/" data-toggle="tooltip" target="_blank"
                                           title="Facebook">
                                            <i class="fa fa-facebook" style="margin-top:10px"></i>
                                        </a>
                                    </li>
                                    <li class="youtube">
                                        <a href="https://www.youtube.com/" data-toggle="tooltip" target="_blank"
                                           title="Youtube">
                                            <i class="fa fa-youtube" style="margin-top:10px"></i>
                                        </a>
                                    </li>
                                    <li class="instagram">
                                        <a href="https://www.instagram.com/" data-toggle="tooltip" target="_blank"
                                           title="Instagram">
                                            <i class="fa fa-instagram" style="margin-top:10px"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- Begin Footer Newsletter Area -->
                            <div class="footer-newsletter">
                                <h4>Đăng kí để nhận thêm nhiều ưu đãi hơn</h4>
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
                            <span>© 2022 Group 23. Tất cả các quyền được bảo lưu.</span>
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
<script src="${pageContext.request.contextPath}/js/vendor/jquery-1.12.4.min.js"></script>
<!-- Popper js -->
<script src="${pageContext.request.contextPath}/js/vendor/popper.min.js"></script>
<!-- Bootstrap V4.1.3 Fremwork js -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!-- Ajax Mail js -->
<script src="${pageContext.request.contextPath}/js/ajax-mail.js"></script>
<!-- Meanmenu js -->
<script src="${pageContext.request.contextPath}/js/jquery.meanmenu.min.js"></script>
<!-- Wow.min js -->
<script src="${pageContext.request.contextPath}/js/wow.min.js"></script>
<!-- Slick Carousel js -->
<script src="${pageContext.request.contextPath}/js/slick.min.js"></script>
<!-- Owl Carousel-2 js -->
<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
<!-- Magnific popup js -->
<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
<!-- Isotope js -->
<script src="${pageContext.request.contextPath}/js/isotope.pkgd.min.js"></script>
<!-- Imagesloaded js -->
<script src="${pageContext.request.contextPath}/js/imagesloaded.pkgd.min.js"></script>
<!-- Mixitup js -->
<script src="${pageContext.request.contextPath}/js/jquery.mixitup.min.js"></script>
<!-- Countdown -->
<script src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>
<!-- Counterup -->
<script src="${pageContext.request.contextPath}/js/jquery.counterup.min.js"></script>
<!-- Waypoints -->
<script src="${pageContext.request.contextPath}/js/waypoints.min.js"></script>
<!-- Barrating -->
<script src="${pageContext.request.contextPath}/js/jquery.barrating.min.js"></script>
<!-- Jquery-ui -->
<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
<!-- Venobox -->
<script src="${pageContext.request.contextPath}/js/venobox.min.js"></script>
<!-- Nice Select js -->
<script src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
<!-- ScrollUp js -->
<script src="${pageContext.request.contextPath}/js/scrollUp.min.js"></script>
<!-- Main/Activator js -->
<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>

<!-- 40432:14-->

</html>