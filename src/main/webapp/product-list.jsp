<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="beans.Cart" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<jsp:useBean id="categoryName" scope="request" type="java.lang.String"/>
<% String currentURL = "/houseware_nlu_war_exploded/ProductList?category=" + request.getParameter("category") + "&pageN=" + request.getAttribute("page");%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) {
        cart = Cart.getInstance();
        session.setAttribute("cart", cart);
    }
//    Map<String, ArrayList<String>> map = new HashMap<String, ArrayList<String>>();
//    map.put("price", new ArrayList<>());
//    map.put("branch", new ArrayList<>());
    request.setAttribute("page-name","product-list.jsp");
%>

<html class="no-js" lang="zxxs">

<title>${categoryName} giá rẻ , chính hãng | NLU</title>
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
                    <li><a href="${pageContext.request.contextPath}">Trang chủ</a></li>
                    <li class="active">${categoryName}</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Li's Breadcrumb Area End Here -->
    <!-- Begin Li's Content Wraper Area -->
    <div class="content-wraper pt-60 pb-60 pt-sm-30 pt-xs-30">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 order-2 order-lg-1 order-sm-1">
                    <!-- Begin Li's Banner Area -->
                    <div class="single-banner shop-page-banner">
                        <a href="#">
                            <img src="images/bg-banner/2.jpg" alt="Li's Static Banner">
                        </a>
                    </div>
                    <!-- Li's Banner Area End Here -->
                    <!-- shop-top-bar start -->
                    <div class="shop-top-bar mt-30">
                        <div class="shop-bar-inner">
                            <div class="product-view-mode">
                                <!-- shop-item-filter-list start -->
                                <ul class="nav shop-item-filter-list" role="tablist">
                                    <li class="active" role="presentation">
                                        <a aria-selected="true"
                                           class="active show" data-toggle="tab"
                                           role="tab"
                                           aria-controls="grid-view"
                                           href="#grid-view"><i class="fa fa-th"></i></a>
                                    </li>
                                    <li role="presentation"><a data-toggle="tab" role="tab"
                                                               aria-controls="list-view" href="#list-view"><i
                                            class="fa fa-th-list"></i></a></li>
                                </ul>
                                <!-- shop-item-filter-list end -->
                            </div>
                            <div class="toolbar-amount">
                                <span>Showing 1 to 9 of 15</span>
                            </div>
                        </div>

                    </div>
                    <!-- shop-top-bar end -->
                    <!-- shop-products-wrapper start -->
                    <div class="shop-products-wrapper">
                        <div class="tab-content">
                            <div id="grid-view" class="tab-pane fade active show" role="tabpanel">
                                <div class="product-area shop-product-area">
                                    <div class="row product-list">
                                        <jsp:useBean id="products" scope="request" type="java.util.List"/>
                                        <c:forEach var="p" items="${products}">
                                            <div class="col-lg-4 col-md-4 col-sm-6 mt-40">
                                                <!-- single-product-wrap start -->
                                                <div class="single-product-wrap">
                                                    <div class="product-image">
                                                        <a href="">
                                                            <img src="${pageContext.request.contextPath}/image/${p.getImageMain()}"
                                                                <%--                                                            <img src="images/product/noi-com/noi-com-dien-cuckoo-1-8-lit-cp-0661.png"--%>
                                                                 alt="Li's Product Image">
                                                        </a>
                                                        <span class="sticker">New</span>
                                                    </div>
                                                    <div class="product_desc">
                                                        <div class="product_desc_info">
                                                            <div class="product-review">
                                                                <h5 class="manufacturer">
                                                                    <a href="product-details.html">Graphic Corner</a>
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
                                                                   href="product-details.jsp">${p.getTen_sp()}</a>
                                                                    <%--                                                            <a class="ma_sp" style="display: none">${p.id}</a>--%>
                                                            </h4>
                                                            <div class="price-box">
                                                                <span class="new-price">${p.getGia()}</span>
                                                                <span class="unit">VNĐ</span>
                                                            </div>
                                                        </div>
                                                        <div class="add-actions">
                                                            <ul class="add-actions-link">
                                                                <li class="add-cart active" pid="${p.getId_sanpham()}"
                                                                    path="${pageContext.request.contextPath}/AddToCart"
                                                                    <%--                                                                    onclick="addCart(this)"--%>
                                                                >
                                                                    Add to cart
                                                                </li>
                                                                <li><a href="#" title="quick view"
                                                                       class="quick-view-btn" data-toggle="modal"
                                                                       data-target="#exampleModalCenter"><i
                                                                        class="fa fa-eye"></i></a></li>
                                                                <li><a class="links-details" href="wishlist.html"><i
                                                                        class="fa fa-heart-o"></i></a></li>
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
                            <div id="list-view" class="tab-pane fade product-list-view" role="tabpanel">
                                <div class="row">
                                    <div class="col">
                                        <div class="row product-layout-list">
                                            <div class="col-lg-3 col-md-5 ">
                                                <div class="product-image">
                                                    <a href="product-details.jsp">
                                                        <img src="images/product/large-size/12.jpg"
                                                             alt="Li's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-7">
                                                <div class="product_desc">
                                                    <div class="product_desc_info">
                                                        <div class="product-review">
                                                            <h5 class="manufacturer">
                                                                <a href="product-details.html">Graphic Corner</a>
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
                                                               href="product-details.jsp">Hummingbird printed
                                                            t-shirt</a></h4>
                                                        <div class="price-box">
                                                            <span class="new-price">120000</span>
                                                            <span class="unit">VNĐ</span>
                                                        </div>
                                                        <p>Beach Camera Exclusive Bundle - Includes Two Samsung
                                                            Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire
                                                            Room With Exquisite Sound via Ring Radiator Technology.
                                                            Stream And Control R3 Speakers Wirelessly With Your
                                                            Smartphone. Sophisticated, Modern Desig</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="shop-add-action mb-xs-30">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart"><a href="#">Add to cart</a></li>
                                                        <li class="wishlist"><a href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                                        </li>
                                                        <li><a class="quick-view" data-toggle="modal"
                                                               data-target="#exampleModalCenter" href="#"><i
                                                                class="fa fa-eye"></i>Quick view</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-3 col-md-5 ">
                                                <div class="product-image">
                                                    <a href="product-details.jsp">
                                                        <img src="images/product/large-size/11.jpg"
                                                             alt="Li's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-7">
                                                <div class="product_desc">
                                                    <div class="product_desc_info">
                                                        <div class="product-review">
                                                            <h5 class="manufacturer">
                                                                <a href="product-details.html">Graphic Corner</a>
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
                                                               href="product-details.jsp">Hummingbird printed
                                                            t-shirt</a></h4>
                                                        <div class="price-box">
                                                            <span class="new-price">120000</span>
                                                            <span class="unit">VNĐ</span>
                                                        </div>
                                                        <p>Beach Camera Exclusive Bundle - Includes Two Samsung
                                                            Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire
                                                            Room With Exquisite Sound via Ring Radiator Technology.
                                                            Stream And Control R3 Speakers Wirelessly With Your
                                                            Smartphone. Sophisticated, Modern Desig</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="shop-add-action mb-xs-30">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart"><a href="#">Add to cart</a></li>
                                                        <li class="wishlist"><a href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                                        </li>
                                                        <li><a class="quick-view" data-toggle="modal"
                                                               data-target="#exampleModalCenter" href="#"><i
                                                                class="fa fa-eye"></i>Quick view</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-3 col-md-5 ">
                                                <div class="product-image">
                                                    <a href="product-details.jsp">
                                                        <img src="images/product/large-size/10.jpg"
                                                             alt="Li's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-7">
                                                <div class="product_desc">
                                                    <div class="product_desc_info">
                                                        <div class="product-review">
                                                            <h5 class="manufacturer">
                                                                <a href="product-details.html">Graphic Corner</a>
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
                                                               href="product-details.jsp">Hummingbird printed
                                                            t-shirt</a></h4>
                                                        <div class="price-box">
                                                            <span class="new-price">120000</span>
                                                            <span class="unit">VNĐ</span>
                                                        </div>
                                                        <p>Beach Camera Exclusive Bundle - Includes Two Samsung
                                                            Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire
                                                            Room With Exquisite Sound via Ring Radiator Technology.
                                                            Stream And Control R3 Speakers Wirelessly With Your
                                                            Smartphone. Sophisticated, Modern Desig</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="shop-add-action mb-xs-30">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart"><a href="#">Add to cart</a></li>
                                                        <li class="wishlist"><a href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                                        </li>
                                                        <li><a class="quick-view" data-toggle="modal"
                                                               data-target="#exampleModalCenter" href="#"><i
                                                                class="fa fa-eye"></i>Quick view</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-3 col-md-5 ">
                                                <div class="product-image">
                                                    <a href="product-details.jsp">
                                                        <img src="images/product/large-size/9.jpg"
                                                             alt="Li's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-7">
                                                <div class="product_desc">
                                                    <div class="product_desc_info">
                                                        <div class="product-review">
                                                            <h5 class="manufacturer">
                                                                <a href="product-details.html">Graphic Corner</a>
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
                                                               href="product-details.jsp">Hummingbird printed
                                                            t-shirt</a></h4>
                                                        <div class="price-box">
                                                            <span class="new-price">120000</span>
                                                            <span class="unit">VNĐ</span>
                                                        </div>
                                                        <p>Beach Camera Exclusive Bundle - Includes Two Samsung
                                                            Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire
                                                            Room With Exquisite Sound via Ring Radiator Technology.
                                                            Stream And Control R3 Speakers Wirelessly With Your
                                                            Smartphone. Sophisticated, Modern Desig</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="shop-add-action mb-xs-30">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart"><a href="#">Add to cart</a></li>
                                                        <li class="wishlist"><a href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                                        </li>
                                                        <li><a class="quick-view" data-toggle="modal"
                                                               data-target="#exampleModalCenter" href="#"><i
                                                                class="fa fa-eye"></i>Quick view</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-3 col-md-5 ">
                                                <div class="product-image">
                                                    <a href="product-details.jsp">
                                                        <img src="images/product/large-size/8.jpg"
                                                             alt="Li's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-7">
                                                <div class="product_desc">
                                                    <div class="product_desc_info">
                                                        <div class="product-review">
                                                            <h5 class="manufacturer">
                                                                <a href="product-details.html">Graphic Corner</a>
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
                                                               href="product-details.jsp">Hummingbird printed
                                                            t-shirt</a></h4>
                                                        <div class="price-box">
                                                            <span class="new-price">120000</span>
                                                            <span class="unit">VNĐ</span>
                                                        </div>
                                                        <p>Beach Camera Exclusive Bundle - Includes Two Samsung
                                                            Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire
                                                            Room With Exquisite Sound via Ring Radiator Technology.
                                                            Stream And Control R3 Speakers Wirelessly With Your
                                                            Smartphone. Sophisticated, Modern Desig</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="shop-add-action mb-xs-30">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart"><a href="#">Add to cart</a></li>
                                                        <li class="wishlist"><a href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                                        </li>
                                                        <li><a class="quick-view" data-toggle="modal"
                                                               data-target="#exampleModalCenter" href="#"><i
                                                                class="fa fa-eye"></i>Quick view</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-3 col-md-5 ">
                                                <div class="product-image">
                                                    <a href="product-details.jsp">
                                                        <img src="images/product/large-size/7.jpg"
                                                             alt="Li's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-7">
                                                <div class="product_desc">
                                                    <div class="product_desc_info">
                                                        <div class="product-review">
                                                            <h5 class="manufacturer">
                                                                <a href="product-details.html">Graphic Corner</a>
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
                                                               href="product-details.jsp">Hummingbird printed
                                                            t-shirt</a></h4>
                                                        <div class="price-box">
                                                            <span class="new-price">120000</span>
                                                            <span class="unit">VNĐ</span>
                                                        </div>
                                                        <p>Beach Camera Exclusive Bundle - Includes Two Samsung
                                                            Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire
                                                            Room With Exquisite Sound via Ring Radiator Technology.
                                                            Stream And Control R3 Speakers Wirelessly With Your
                                                            Smartphone. Sophisticated, Modern Desig</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="shop-add-action mb-xs-30">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart"><a href="#">Add to cart</a></li>
                                                        <li class="wishlist"><a href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                                        </li>
                                                        <li><a class="quick-view" data-toggle="modal"
                                                               data-target="#exampleModalCenter" href="#"><i
                                                                class="fa fa-eye"></i>Quick view</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-3 col-md-5 ">
                                                <div class="product-image">
                                                    <a href="product-details.jsp">
                                                        <img src="images/product/large-size/6.jpg"
                                                             alt="Li's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-7">
                                                <div class="product_desc">
                                                    <div class="product_desc_info">
                                                        <div class="product-review">
                                                            <h5 class="manufacturer">
                                                                <a href="product-details.html">Graphic Corner</a>
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
                                                               href="product-details.jsp">Hummingbird printed
                                                            t-shirt</a></h4>
                                                        <div class="price-box">
                                                            <span class="new-price">120000</span>
                                                            <span class="unit">VNĐ</span>
                                                        </div>
                                                        <p>Beach Camera Exclusive Bundle - Includes Two Samsung
                                                            Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire
                                                            Room With Exquisite Sound via Ring Radiator Technology.
                                                            Stream And Control R3 Speakers Wirelessly With Your
                                                            Smartphone. Sophisticated, Modern Desig</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="shop-add-action mb-xs-30">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart"><a href="#">Add to cart</a></li>
                                                        <li class="wishlist"><a href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                                        </li>
                                                        <li><a class="quick-view" data-toggle="modal"
                                                               data-target="#exampleModalCenter" href="#"><i
                                                                class="fa fa-eye"></i>Quick view</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-3 col-md-5 ">
                                                <div class="product-image">
                                                    <a href="product-details.jsp">
                                                        <img src="images/product/large-size/5.jpg"
                                                             alt="Li's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-7">
                                                <div class="product_desc">
                                                    <div class="product_desc_info">
                                                        <div class="product-review">
                                                            <h5 class="manufacturer">
                                                                <a href="product-details.html">Graphic Corner</a>
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
                                                               href="product-details.jsp">Hummingbird printed
                                                            t-shirt</a></h4>
                                                        <div class="price-box">
                                                            <span class="new-price">120000</span>
                                                            <span class="unit">VNĐ</span>
                                                        </div>
                                                        <p>Beach Camera Exclusive Bundle - Includes Two Samsung
                                                            Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire
                                                            Room With Exquisite Sound via Ring Radiator Technology.
                                                            Stream And Control R3 Speakers Wirelessly With Your
                                                            Smartphone. Sophisticated, Modern Desig</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="shop-add-action mb-xs-30">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart"><a href="#">Add to cart</a></li>
                                                        <li class="wishlist"><a href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                                        </li>
                                                        <li><a class="quick-view" data-toggle="modal"
                                                               data-target="#exampleModalCenter" href="#"><i
                                                                class="fa fa-eye"></i>Quick view</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-3 col-md-5 ">
                                                <div class="product-image">
                                                    <a href="product-details.jsp">
                                                        <img src="images/product/large-size/4.jpg"
                                                             alt="Li's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-7">
                                                <div class="product_desc">
                                                    <div class="product_desc_info">
                                                        <div class="product-review">
                                                            <h5 class="manufacturer">
                                                                <a href="product-details.html">Graphic Corner</a>
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
                                                               href="product-details.jsp">Hummingbird printed
                                                            t-shirt</a></h4>
                                                        <div class="price-box">
                                                            <span class="new-price">120000</span>
                                                            <span class="unit">VNĐ</span>
                                                        </div>
                                                        <p>Beach Camera Exclusive Bundle - Includes Two Samsung
                                                            Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire
                                                            Room With Exquisite Sound via Ring Radiator Technology.
                                                            Stream And Control R3 Speakers Wirelessly With Your
                                                            Smartphone. Sophisticated, Modern Desig</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="shop-add-action mb-xs-30">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart"><a href="#">Add to cart</a></li>
                                                        <li class="wishlist"><a href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                                        </li>
                                                        <li><a class="quick-view" data-toggle="modal"
                                                               data-target="#exampleModalCenter" href="#"><i
                                                                class="fa fa-eye"></i>Quick view</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-3 col-md-5 ">
                                                <div class="product-image">
                                                    <a href="product-details.jsp">
                                                        <img src="images/product/large-size/3.jpg"
                                                             alt="Li's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-7">
                                                <div class="product_desc">
                                                    <div class="product_desc_info">
                                                        <div class="product-review">
                                                            <h5 class="manufacturer">
                                                                <a href="product-details.html">Graphic Corner</a>
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
                                                               href="product-details.jsp">Hummingbird printed
                                                            t-shirt</a></h4>
                                                        <div class="price-box">
                                                            <span class="new-price">120000</span>
                                                            <span class="unit">VNĐ</span>
                                                        </div>
                                                        <p>Beach Camera Exclusive Bundle - Includes Two Samsung
                                                            Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire
                                                            Room With Exquisite Sound via Ring Radiator Technology.
                                                            Stream And Control R3 Speakers Wirelessly With Your
                                                            Smartphone. Sophisticated, Modern Desig</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="shop-add-action mb-xs-30">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart"><a href="#">Add to cart</a></li>
                                                        <li class="wishlist"><a href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                                        </li>
                                                        <li><a class="quick-view" data-toggle="modal"
                                                               data-target="#exampleModalCenter" href="#"><i
                                                                class="fa fa-eye"></i>Quick view</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list">
                                            <div class="col-lg-3 col-md-5 ">
                                                <div class="product-image">
                                                    <a href="product-details.jsp">
                                                        <img src="images/product/large-size/2.jpg"
                                                             alt="Li's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-7">
                                                <div class="product_desc">
                                                    <div class="product_desc_info">
                                                        <div class="product-review">
                                                            <h5 class="manufacturer">
                                                                <a href="product-details.html">Graphic Corner</a>
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
                                                               href="product-details.jsp">Hummingbird printed
                                                            t-shirt</a></h4>
                                                        <div class="price-box">
                                                            <span class="new-price">120000</span>
                                                            <span class="unit">VNĐ</span>
                                                        </div>
                                                        <p>Beach Camera Exclusive Bundle - Includes Two Samsung
                                                            Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire
                                                            Room With Exquisite Sound via Ring Radiator Technology.
                                                            Stream And Control R3 Speakers Wirelessly With Your
                                                            Smartphone. Sophisticated, Modern Desig</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="shop-add-action mb-xs-30">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart"><a href="#">Add to cart</a></li>
                                                        <li class="wishlist"><a href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                                        </li>
                                                        <li><a class="quick-view" data-toggle="modal"
                                                               data-target="#exampleModalCenter" href="#"><i
                                                                class="fa fa-eye"></i>Quick view</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row product-layout-list last-child">
                                            <div class="col-lg-3 col-md-5 ">
                                                <div class="product-image">
                                                    <a href="product-details.jsp">
                                                        <img src="images/product/large-size/1.jpg"
                                                             alt="Li's Product Image">
                                                    </a>
                                                    <span class="sticker">New</span>
                                                </div>
                                            </div>
                                            <div class="col-lg-5 col-md-7">
                                                <div class="product_desc">
                                                    <div class="product_desc_info">
                                                        <div class="product-review">
                                                            <h5 class="manufacturer">
                                                                <a href="product-details.html">Graphic Corner</a>
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
                                                               href="product-details.jsp">Hummingbird printed
                                                            t-shirt</a></h4>
                                                        <div class="price-box">
                                                            <span class="new-price">120000</span>
                                                            <span class="unit">VNĐ</span>
                                                        </div>
                                                        <p>Beach Camera Exclusive Bundle - Includes Two Samsung
                                                            Radiant 360 R3 Wi-Fi Bluetooth Speakers. Fill The Entire
                                                            Room With Exquisite Sound via Ring Radiator Technology.
                                                            Stream And Control R3 Speakers Wirelessly With Your
                                                            Smartphone. Sophisticated, Modern Desig</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="shop-add-action">
                                                    <ul class="add-actions-link">
                                                        <li class="add-cart"><a href="#">Add to cart</a></li>
                                                        <li class="wishlist"><a href="wishlist.html"><i
                                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                                        </li>
                                                        <li><a class="quick-view" data-toggle="modal"
                                                               data-target="#exampleModalCenter" href="#"><i
                                                                class="fa fa-eye"></i>Quick view</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="paginatoin-area">
                                <div class="row paging">
                                    <div class="col-lg-6 col-md-6 pt-xs-15">
                                        <p>Showing 1-12 of 13 item(s)</p>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul class="pagination-box pt-xs-20 pb-xs-15">
                                            <li><a href="<%=
                                            "/houseware_nlu_war_exploded/ProductList?category="+request.getParameter("category")+"&pageN="+((int)request.getAttribute("page")>1?(int)request.getAttribute("page")-1:1)+"&branch="+request.getParameter("branch")+"&price="+request.getParameter("price")
                                            %>" class="Previous"><i class="fa fa-chevron-left"></i>
                                                Previous</a>
                                            </li>
                                            <jsp:useBean id="allProducts" scope="request" type="java.util.List"/>
                                            <% int productCount = allProducts.size();
                                                System.out.println(productCount);
                                                int pageCount = (int) Math.round(productCount / 5);
                                                if (productCount % 5 != 0)
                                                    pageCount++;
                                                if (request.getAttribute("page") == null)
                                                    request.setAttribute("page", 1);
                                                for (int i = 0; i < pageCount; i++) {
                                            %>

                                            <li class="<%=((int)request.getAttribute("page")==(i+1)?"active":"") %>"><a
                                                    href="<%=
                                            "/houseware_nlu_war_exploded/ProductList?category="+request.getParameter("category")+"&pageN="+(i+1)+"&branch="+(request.getParameter("branch")==null?"":request.getParameter("branch"))+"&price="+(request.getParameter("price")==null?"":request.getParameter("price"))
                                            %>"><%=(i + 1)%>
                                            </a></li>
                                            <%}%>
                                            <li>
                                                <a href="<%=
                                            "/houseware_nlu_war_exploded/ProductList?category="+request.getParameter("category")+"&pageN="+((int)request.getAttribute("page")<pageCount?(int)request.getAttribute("page")+1:pageCount)+"&branch="+request.getParameter("branch")+"&price="+request.getParameter("price")
                                            %>" class="Next"> Next <i
                                                        class="fa fa-chevron-right"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- shop-products-wrapper end -->
                </div>
                <div class="col-lg-3 order-1 order-lg-2">
                    <!--sidebar-categores-box start  -->
                    <div class="sidebar-categores-box">
                        <div class="sidebar-title">
                            <h2>Filter By</h2>
                        </div>
                        <!-- btn-clear-all start -->
                        <button class="btn-clear-all mb-sm-30 mb-xs-30">Clear all</button>
                        <!-- btn-clear-all end -->
                        <!-- filter-sub-area start -->
                        <div class="filter-sub-area">
                            <h5 class="filter-sub-titel">Prices</h5>
                            <div class="categori-checkbox">
                                <form action="#">
                                    <ul>

                                        <li><input type="checkbox" name="price" value="duoi1"><a href="#"></a><1 triệu
                                        </li>
                                        <li><input type="checkbox" name="price" value="1den3"><a href="#"></a>1-3 triệu
                                        </li>
                                        <li><input type="checkbox" name="price" value="3den6"><a href="#"></a>3-6 triệu
                                        </li>
                                        <li><input type="checkbox" name="price" value="tren6"><a href="#"></a>>6 triệu
                                        </li>
                                    </ul>
                                </form>
                            </div>
                        </div>
                        <!-- filter-sub-area end -->
                        <!-- filter-sub-area start -->
                        <div class="filter-sub-area pt-sm-10 pt-xs-10">
                            <h5 class="filter-sub-titel">Brand</h5>
                            <div class="categori-checkbox">
                                <form action="#">
                                    <ul>
                                        <li><input type="checkbox" name="branch" value="Philips"><a href="#">Philips</a>
                                        </li>
                                        <li><input type="checkbox" name="branch" value="Sunhouse"><a
                                                href="#">Sunhouse</a></li>
                                        <li><input type="checkbox" name="branch" value="Deawoo"><a href="#">Deawoo</a>
                                        </li>
                                        <li><input type="checkbox" name="branch" value="Panasonic"><a
                                                href="#">Panasonic</a></li>
                                        <li><input type="checkbox" name="branch" value="Sauce"><a href="#">Sauce</a>
                                        </li>
                                        <li><input type="checkbox" name="branch" value="Sharp"><a href="#">Sharp</a>
                                        </li>
                                        <li><input type="checkbox" name="branch" value="Electrolux"><a href="#">Electrolux</a>
                                        </li>
                                        <li><input type="checkbox" name="branch" value="Kangaroo"><a
                                                href="#">Kangaroo</a></li>
                                    </ul>
                                </form>
                            </div>
                        </div>

                    </div>
                    <!--sidebar-categores-box end  -->
                </div>
            </div>
        </div>
    </div>
    <!-- Content Wraper Area End Here -->
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
                                    <h2>Free Delivery</h2>
                                    <p>And free returns. See checkout for delivery dates.</p>
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
                                    <h2>Safe Payment</h2>
                                    <p>Pay with the world's most popular and secure payment methods.</p>
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
                                    <h2>Shop with Confidence</h2>
                                    <p>Our Buyer Protection covers your purchasefrom click to delivery.</p>
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
                                    <h2>24/7 Help Center</h2>
                                    <p>Have a question? Call a Specialist or chat online.</p>
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
                                    We are a team of designers and developers that create high quality HTML Template
                                    & Woocommerce, Shopify Theme.
                                </p>
                            </div>
                            <ul class="des">
                                <li>
                                    <span>Address: </span>
                                    6688Princess Road, London, Greater London BAS 23JK, UK
                                </li>
                                <li>
                                    <span>Phone: </span>
                                    <a href="#">(+123) 123 321 345</a>
                                </li>
                                <li>
                                    <span>Email: </span>
                                    <a href="mailto://info@yourdomain.com">info@yourdomain.com</a>
                                </li>
                            </ul>
                        </div>
                        <!-- Footer Logo Area End Here -->
                        <!-- Begin Footer Block Area -->
                        <div class="col-lg-2 col-md-3 col-sm-6">
                            <div class="footer-block">
                                <h3 class="footer-block-title">Product</h3>
                                <ul>
                                    <li><a href="#">Prices drop</a></li>
                                    <li><a href="#">New products</a></li>
                                    <li><a href="#">Best sales</a></li>
                                    <li><a href="#">Contact us</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- Footer Block Area End Here -->
                        <!-- Begin Footer Block Area -->
                        <div class="col-lg-2 col-md-3 col-sm-6">
                            <div class="footer-block">
                                <h3 class="footer-block-title">Our company</h3>
                                <ul>
                                    <li><a href="#">Delivery</a></li>
                                    <li><a href="#">Legal Notice</a></li>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">Contact us</a></li>
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
                                <h4>Sign up to newsletter</h4>
                                <form action="#" method="post" id="mc-embedded-subscribe-form"
                                      name="mc-embedded-subscribe-form" class="footer-subscribe-form validate"
                                      target="_blank" novalidate>
                                    <div id="mc_embed_signup_scroll">
                                        <div id="mc-form" class="mc-form subscribe-form form-group">
                                            <input id="mc-email" type="email" autocomplete="off"
                                                   placeholder="Enter your email"/>
                                            <button class="btn" id="mc-submit">Subscribe</button>
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
                        <!-- Begin Footer Links Area -->
                        <div class="footer-links">
                            <ul>
                                <li><a href="#">Online Shopping</a></li>
                                <li><a href="#">Promotions</a></li>
                                <li><a href="#">My Orders</a></li>
                                <li><a href="#">Help</a></li>
                                <li><a href="#">Customer Service</a></li>
                                <li><a href="#">Support</a></li>
                                <li><a href="#">Most Populars</a></li>
                                <li><a href="#">New Arrivals</a></li>
                                <li><a href="#">Special Products</a></li>
                                <li><a href="#">Manufacturers</a></li>
                                <li><a href="#">Our Stores</a></li>
                                <li><a href="#">Shipping</a></li>
                                <li><a href="#">Payments</a></li>
                                <li><a href="#">Warantee</a></li>
                                <li><a href="#">Refunds</a></li>
                                <li><a href="#">Checkout</a></li>
                                <li><a href="#">Discount</a></li>
                                <li><a href="#">Refunds</a></li>
                                <li><a href="#">Policy Shipping</a></li>
                            </ul>
                        </div>
                        <!-- Footer Links Area End Here -->
                        <!-- Begin Footer Payment Area -->
                        <div class="copyright text-center">
                            <a href="#">
                                <img src="images/payment/1.png" alt="">
                            </a>
                        </div>
                        <!-- Footer Payment Area End Here -->
                        <!-- Begin Copyright Area -->
                        <div class="copyright text-center pt-25">
                                <span><a href="https://www.templatespoint.net" target="_blank">Templates
                                        Point</a></span>
                        </div>
                        <!-- Copyright Area End Here -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Static Bottom Area End Here -->
    </div>
    <!-- Footer Area End Here -->
    <!-- Begin Quick View | Modal Area -->
    <div class="modal fade modal-wrapper" id="exampleModalCenter">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="modal-inner-area row">
                        <div class="col-lg-5 col-md-6 col-sm-6">
                            <!-- Product Details Left -->
                            <div class="product-details-left">
                                <div class="product-details-images slider-navigation-1">
                                    <div class="lg-image">
                                        <img src="images/product/large-size/1.jpg" alt="product image">
                                    </div>
                                    <div class="lg-image">
                                        <img src="images/product/large-size/2.jpg" alt="product image">
                                    </div>
                                    <div class="lg-image">
                                        <img src="images/product/large-size/3.jpg" alt="product image">
                                    </div>
                                    <div class="lg-image">
                                        <img src="images/product/large-size/4.jpg" alt="product image">
                                    </div>
                                    <div class="lg-image">
                                        <img src="images/product/large-size/5.jpg" alt="product image">
                                    </div>
                                    <div class="lg-image">
                                        <img src="images/product/large-size/6.jpg" alt="product image">
                                    </div>
                                </div>
                                <div class="product-details-thumbs slider-thumbs-1">
                                    <div class="sm-image"><img src="images/product/small-size/1.jpg"
                                                               alt="product image thumb"></div>
                                    <div class="sm-image"><img src="images/product/small-size/2.jpg"
                                                               alt="product image thumb"></div>
                                    <div class="sm-image"><img src="images/product/small-size/3.jpg"
                                                               alt="product image thumb"></div>
                                    <div class="sm-image"><img src="images/product/small-size/4.jpg"
                                                               alt="product image thumb"></div>
                                    <div class="sm-image"><img src="images/product/small-size/5.jpg"
                                                               alt="product image thumb"></div>
                                    <div class="sm-image"><img src="images/product/small-size/6.jpg"
                                                               alt="product image thumb"></div>
                                </div>
                            </div>
                            <!--// Product Details Left -->
                        </div>

                        <div class="col-lg-7 col-md-6 col-sm-6">
                            <div class="product-details-view-content pt-60">
                                <div class="product-info">
                                    <h2>Today is a good day Framed poster</h2>
                                    <span class="product-details-ref">Reference: demo_15</span>
                                    <div class="rating-box pt-20">
                                        <ul class="rating rating-with-review-item">
                                            <li><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                            <li><i class="fa fa-star-o"></i></li>
                                            <li class="no-star"><i class="fa fa-star-o"></i></li>
                                            <li class="no-star"><i class="fa fa-star-o"></i></li>
                                            <li class="review-item"><a href="#">Read Review</a></li>
                                            <li class="review-item"><a href="#">Write Review</a></li>
                                        </ul>
                                    </div>
                                    <div class="price-box pt-20">
                                        <span class="new-price new-price-2">$57.98</span>
                                    </div>
                                    <div class="product-desc">
                                        <p>
                                                <span>100% cotton double printed dress. Black and white striped top and
                                                    orange high waisted skater skirt bottom. Lorem ipsum dolor sit amet,
                                                    consectetur adipisicing elit. quibusdam corporis, earum facilis et
                                                    nostrum dolorum accusamus similique eveniet quia pariatur.
                                                </span>
                                        </p>
                                    </div>
                                    <div class="product-variants">
                                        <div class="produt-variants-size">
                                            <label>Dimension</label>
                                            <select class="nice-select">
                                                <option value="1" title="S" selected="selected">40x60cm</option>
                                                <option value="2" title="M">60x90cm</option>
                                                <option value="3" title="L">80x120cm</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="single-add-to-cart">
                                        <form action="#" class="cart-quantity">
                                            <div class="quantity">
                                                <label>Quantity</label>
                                                <div class="cart-plus-minus">
                                                    <input class="cart-plus-minus-box" value="1" type="text">
                                                    <div class="dec qtybutton"><i class="fa fa-angle-down"></i>
                                                    </div>
                                                    <div class="inc qtybutton"><i class="fa fa-angle-up"></i></div>
                                                </div>
                                            </div>
                                            <button class="add-to-cart" type="submit">Add to cart</button>
                                        </form>
                                    </div>
                                    <div class="product-additional-info pt-25">
                                        <a class="wishlist-btn" href="wishlist.html"><i
                                                class="fa fa-heart-o"></i>Add to wishlist</a>
                                        <div class="product-social-sharing pt-25">
                                            <ul>
                                                <li class="facebook"><a href="#"><i
                                                        class="fa fa-facebook"></i>Facebook</a></li>
                                                <li class="twitter"><a href="#"><i
                                                        class="fa fa-twitter"></i>Twitter</a></li>
                                                <li class="google-plus"><a href="#"><i
                                                        class="fa fa-google-plus"></i>Google +</a></li>
                                                <li class="instagram"><a href="#"><i
                                                        class="fa fa-instagram"></i>Instagram</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quick View | Modal Area End Here -->
</div>
<!-- Body Wrapper End Here -->
<!-- jQuery-V1.12.4 -->
<%--<%@include file="script.jsp" %>--%>

<script src="js/vendor/jquery-1.12.4.min.js"></script>
<!-- Popper js -->
<script src="js/vendor/popper.min.js"></script>
<!-- Bootstrap V4.1.3 Fremwork js -->
<script src="js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
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

<script src="admin/assets/js/lib/toastr/toastr.min.js"></script>
<!-- Main/Activator js -->
<script src="js/main.js"></script>


<script>
    var branchs = "";
    var prices = "";

    function getFilters() {
        branchs = "";
        prices = "";
        $("input[type='checkbox']").each(function () {

            if ($(this).is(':checked')) {
                alert("check")
                var type = $(this).attr("name");
                if (type == "branch") {
                    alert("branch");
                    var value = $(this).attr("value");
                    branchs += (value + "-");
                }
                if (type == "price") {
                    alert("price");
                    var value = $(this).attr("value");
                    prices += (value + "-");
                }
            }
        });
    }

    getFilters();
    $('input[type="checkbox"]').click(function () {
        getFilters();
        $.ajax({
            url: "/houseware_nlu_war_exploded/ProductList",
            method: "GET",
            data: {
                pageN: 1,
                category: "<%=request.getParameter("category")%>",
                price: prices,
                branch: branchs,

            },
            success: function (data) {
                $(".shop-product-area").load("/houseware_nlu_war_exploded/ProductList?category=<%=request.getParameter("category")%>&pageN=1&price=" + prices + "&branch=" + branchs + " .product-list")

                $(".paginatoin-area").load("/houseware_nlu_war_exploded/ProductList?category=<%=request.getParameter("category")%>&pageN=1&price=" + prices + "&branch=" + branchs + " .paging")

            },
            error: function (data) {

            }
        });

    });
</script>

</body>

<!-- shop-right-sidebar31:48-->

</html>
