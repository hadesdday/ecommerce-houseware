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

<!-- checkout31:27-->

<%@include file="head.jsp" %>

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
    <!-- Begin Li's Breadcrumb Area -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="breadcrumb-content">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Checkout</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Li's Breadcrumb Area End Here -->
    <!--Checkout Area Strat-->
    <div class="checkout-area pt-60 pb-30">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="coupon-accordion">
                        <!--Accordion Start-->
                        <h3>Đã có tài khoản? <span id="showlogin">Nhấn vào đây để đăng nhập</span></h3>
                        <!--                            <div id="checkout-login" class="coupon-content">-->
                        <!--                                <div class="coupon-info">-->
                        <!--                                    <form action="#">-->
                        <!--                                        <p class="form-row-first">-->
                        <!--                                            <label>Tài khoản hoặc email <span class="required">*</span></label>-->
                        <!--                                            <input type="text">-->
                        <!--                                        </p>-->
                        <!--                                        <p class="form-row-last">-->
                        <!--                                            <label>Mật khẩu <span class="required">*</span></label>-->
                        <!--                                            <input type="text">-->
                        <!--                                        </p>-->
                        <!--                                        <p class="form-row">-->
                        <!--                                            <input value="Đăng nhập" type="submit">-->
                        <!--                                            <label>-->
                        <!--                                                <input type="checkbox">-->
                        <!--                                                Lưu mật khảu-->
                        <!--                                            </label>-->
                        <!--                                        </p>-->
                        <!--                                        <p class="lost-password"><a href="#">Quên mật khẩu?</a></p>-->
                        <!--                                    </form>-->
                        <!--                                </div>-->
                        <!--                            </div>-->
                        <!--Accordion End-->
                        <!--Accordion Start-->
                        <h3>Có mã giảm giá? <span id="showcoupon">Nhấn vào đây để nhập mã giảm giá</span></h3>
                        <div id="checkout_coupon" class="coupon-checkout-content">
                            <div class="coupon-info">
                                <form action="#">
                                    <p class="checkout-coupon">
                                        <input placeholder="Mã giảm giá" type="text">
                                        <input value="Áp dụng" type="submit">
                                    </p>
                                </form>
                            </div>
                        </div>
                        <!--Accordion End-->
                    </div>
                </div>
            </div>
            <div class="row">
                <form method="post" action="/houseware_nlu_war_exploded/CompleteCheckout" id="checkout-form">
                    <div class="col-lg-6 col-12">

                        <input type="hidden" name="fieldHidden" value="formOne">
                        <div class="checkbox-form">
                            <h3>Thông tin khách hàng</h3>
                            <div class="row">

                                <div class="col-md-12">
                                    <div class="checkout-form-list">
                                        <label>Họ và Tên <span class="required">*</span></label>
                                        <input placeholder="" type="text" id="fullname-checkout" name="fullname">
                                        <label for="error" class="error__label">Vui lòng nhập đúng họ tên
                                        </label>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="checkout-form-list">
                                        <label>Địa chỉ <span class="required">*</span></label>
                                        <input placeholder="" type="text" id="address-checkout" name="address">
                                        <label for="error" class="error__label">Vui lòng nhập địa chỉ giao hàng
                                        </label>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="country-select clearfix">
                                        <label>Tỉnh / Thành phố<span class="required">*</span></label>
                                        <select class="select-box wide" name="provinces" required="">
                                            <option value="">Tỉnh / Thành Phố</option>
                                        </select>
                                        <input class="billing_address_1" name="" type="hidden" value="">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="country-select clearfix">
                                        <label>Quận / Huyện <span class="required">*</span></label>
                                        <select class="select-box wide" name="district" required="">
                                            <option value="">Quận / Huyện</option>
                                        </select>
                                        <input class="billing_address_2" name="" type="hidden" value="">
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="checkout-form-list">
                                        <label>Địa chỉ Email <span class="required">*</span></label>
                                        <input placeholder="" type="email" id="email-checkout__reg" name="email">
                                        <label for="error" class="error__label"> Vui lòng nhập đúng email
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkout-form-list">
                                        <label>Số điện thoại <span class="required">*</span></label>
                                        <input type="text" id="phone-checkout" name="phone">
                                        <label for="error" class="error__label"> Vui lòng nhập đúng số điện thoại
                                        </label>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="checkout-form-list">
                                        <label name="luuy">Yêu cầu khi giao hàng(không bắt buộc) </label>
                                        <input placeholder="" type="text">
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="col-lg-6 col-12">

                        <div class="your-order">
                            <h3>Hóa đơn của bạn</h3>
                            <div class="your-order-table table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th class="cart-product-name">Sản phẩm</th>
                                        <th class="cart-product-total">Giá sản phẩm</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:set var="list" value="${cart.products}"/>
                                    <c:forEach items="${list}" var="item">
                                        <tr class="cart_item">
                                            <td class="cart-product-name"> ${item.ten_sp}<strong class="product-quantity">
                                                ×
                                                    ${item.quantitySold}</strong></td>
                                            <td class="cart-product-total"><span
                                                    class="amount">${item.total()} VNĐ</span>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                    <tfoot>

                                    <tr class="order-total">
                                        <th>Tổng tiền</th>
                                        <td><strong><span class="amount">${cart.total()*(1-cart.rate)}VND</span></strong></td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="payment-method">
                                <div class="payment-accordion">
                                    <div id="accordion">
                                        <div class="card">
                                            <div class="card-header" id="#payment-1">
                                                <input type="radio" name="payment" value="BANK" id="bank"
                                                       class="checkbox-payment1" checked>
                                                <label for="bank">
                                                    <h5 class="panel-title collapsed" data-toggle="collapse"
                                                        data-target="#collapseOne" aria-expanded="true"
                                                        aria-controls="collapseOne">
                                                        Chuyển khoản ngân hàng
                                                    </h5>

                                                </label>
                                            </div>
                                            <div id="collapseOne" class="collapse show" data-parent="#accordion">
                                                <div class="card-body">
                                                    <p>Vui lòng chuyển số tiền hóa đơn vào tài khoản ngân hàng của chúng
                                                        tôi. Bạn sẽ nhận được xác nhận đơn hàng của chúng tôi theo email
                                                        chứa chi tiết ngân hàng và số đơn hàng. Hàng hóa sẽ được giữ chỗ
                                                        3 ngày cho bạn và chúng tôi sẽ xử lý đơn hàng của bạn ngay sau
                                                        khi nhận được thanh toán. Chi tiết tài khoản nhận tiền</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header" id="#payment-2">
                                                <input type="radio" name="payment" value="COD" id="cod"
                                                       class="checkbox-payment1">
                                                <label for="cod">
                                                    <h5 class="panel-title collapsed" data-toggle="collapse"
                                                        data-target="#collapseTwo" aria-expanded="false"
                                                        aria-controls="collapseTwo">

                                                        Thanh toán khi nhận hàng
                                                    </h5>

                                                </label>
                                            </div>
                                            <div id="collapseTwo" class="collapse" data-parent="#accordion">
                                                <div class="card-body">
                                                    <p>Bạn sẽ thanh toán cho nhân viên giao hàng.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header" id="#payment-3">
                                                <input type="radio" name="payment" value="PP" id="paypal"
                                                       class="checkbox-payment">
                                                <label for="paypal" data-toggle="collapse"
                                                       data-target="#collapsePaypal" aria-expanded="true"
                                                       aria-controls="collapsePaypal">
                                                    <i><img loading="lazy" class="payment-image"
                                                            src="images/payment/paypal.png"></i>

                                                </label>
                                                <input type="radio" name="payment" value="MOMO" id="momo"
                                                       class="checkbox-payment">
                                                <label for="momo" class="momo" data-toggle="collapse"
                                                       data-target="#collapseMomo" aria-expanded="true"
                                                       aria-controls="collapseMomo">
                                                    <i><img loading="lazy" class="payment-image"
                                                            src="images/payment/momo.png"></i>
                                                </label>
                                            </div>
                                            <div id="collapsePaypal" class="collapse" data-parent="#accordion">
                                                <div class="card-body">
                                                    <p>thanh toán qua paypal</p>
                                                </div>
                                            </div>
                                            <div id="collapseMomo" class="collapse" data-parent="#accordion">
                                                <div class="card-body">
                                                    <div class="qr-code"><img src="images/payment/qr.png"></div>
                                                    <div class="momo-instrument"><b>Bước 1:</b> Mở ứng dụng MoMo để
                                                        thanh
                                                        toán<br>
                                                        <b>Bước 2:</b> Chọn "Thanh Toán" và quét mã QR tại hướng dẫn này<br>
                                                        <b>Bước 3: </b>Hoàn thành các bước thanh toán theo hướng dẫn và
                                                        đợi
                                                        shop xử lý trong giây lát
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="order-button-payment">
                                        <input value="checkout" type="submit" id="checkout-button">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--Checkout Area End-->
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
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src='https://cdn.jsdelivr.net/gh/vietblogdao/js/districts.min.js'></script>
<script>//<![CDATA[
window.addEventListener('load', function () {
    if (address_2 = localStorage.getItem('address_2_saved')) {
        $('select[name="district"] option').each(function () {
            if ($(this).text() == address_2) {
                $(this).attr('selected', '')
            }
        })
        $('input.billing_address_2').attr('value', address_2)
    }
    if (district = localStorage.getItem('district')) {
        $('select[name="district"]').html(district)
        $('select[name="district"]').on('change', function () {
            var target = $(this).children('option:selected')
            target.attr('selected', '')
            $('select[name="district"] option').not(target).removeAttr('selected')
            address_2 = target.text()
            $('input.billing_address_2').attr('value', address_2)
            district = $('select[name="district"]').html()
            localStorage.setItem('district', district)
            localStorage.setItem('address_2_saved', address_2)
        })
    }
    $('select[name="provinces"]').each(function () {
        var $this = $(this),
            stc = ''
        c.forEach(function (i, e) {
            e += +1
            stc += '<option value=' + e + '>' + i + '</option>'
            $this.html('<option value="">Tỉnh / Thành phố</option>' + stc)
            if (address_1 = localStorage.getItem('address_1_saved')) {
                $('select[name="provinces"] option').each(function () {
                    if ($(this).text() == address_1) {
                        $(this).attr('selected', '')
                    }
                })
                $('input.billing_address_1').attr('value', address_1)
            }
            $this.on('change', function (i) {
                i = $this.children('option:selected').index() - 1
                var str = '',
                    r = $this.val()
                if (r != '') {
                    arr[i].forEach(function (el) {
                        str += '<option value="' + el + '">' + el + '</option>'
                        $('select[name="district"]').html('<option value="">Quận / Huyện</option>' + str)
                    })
                    var address_1 = $this.children('option:selected').text()
                    var district = $('select[name="district"]').html()
                    localStorage.setItem('address_1_saved', address_1)
                    localStorage.setItem('district', district)
                    $('select[name="district"]').on('change', function () {
                        var target = $(this).children('option:selected')
                        target.attr('selected', '')
                        $('select[name="district"] option').not(target).removeAttr('selected')
                        var address_2 = target.text()
                        $('input.billing_address_2').attr('value', address_2)
                        district = $('select[name="district"]').html()
                        localStorage.setItem('district', district)
                        localStorage.setItem('address_2_saved', address_2)
                    })
                } else {
                    $('select[name="district"]').html('<option value="">Quận / Huyện</option>')
                    district = $('select[name="district"]').html()
                    localStorage.setItem('district', district)
                    localStorage.removeItem('address_1_saved', address_1)
                }
            })
        })
    })
})
//]]></script>
</body>

<!-- checkout31:27-->

</html>
