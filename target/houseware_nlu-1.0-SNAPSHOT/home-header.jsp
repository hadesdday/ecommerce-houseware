<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                                            <li><a href="${pageContext.request.contextPath}/my-account.jsp">Tài khoản của tôi</a></li>
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
                            <img loading="lazy" src="https://raw.githubusercontent.com/hadesdday/a/main/logo_transparent.png" alt="" width="190" height="45" style="object-fit: cover">
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