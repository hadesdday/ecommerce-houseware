<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="beans.Cart" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Collections" %>
<jsp:useBean id="categoryName" scope="request" type="java.lang.String"/>
<%--<% String currentURL = "/houseware_nlu_war_exploded/ProductList?category=" + request.getParameter("category") + "&pageN=" + request.getAttribute("page");%>--%>
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
    request.setAttribute("page-name", "product-list.jsp");
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
                    <%--                    <div class="single-banner shop-page-banner">--%>
                    <%--                        <a href="#">--%>
                    <%--                            <img src="images/bg-banner/2.jpg" alt="Li's Static Banner">--%>
                    <%--                        </a>--%>
                    <%--                    </div>--%>
                    <!-- Li's Banner Area End Here -->
                    <!-- shop-products-wrapper start -->
                    <jsp:useBean id="products" scope="request" type="java.util.List"/>
                    <div class="shop-products-wrapper">
                        <div class="tab-content">
                            <div id="grid-view" class="tab-pane fade active show" role="tabpanel">

                                <div class="product-area shop-product-area">
                                    <%
                                        if (products.size() < 1) {
                                    %>
                                    <div class="row product-list d-flex justify-content-center">
                                        <img src='images/empty-list.png' alt='404' width='200' height='200'/>
                                        <div class="none-product">Không có sản phẩm</div>
                                        <%
                                        } else {
                                        %>
                                        <div class="row product-list">
                                            <c:forEach var="p" items="${products}">
                                                <div class="col-lg-4 col-md-4 col-sm-6 mt-40">
                                                    <!-- single-product-wrap start -->
                                                    <div class="single-product-wrap">
                                                        <div class="product-image">
                                                            <a href="${pageContext.request.contextPath}/ProductDetails?pid=${p.getId_sanpham()}">
                                                                <img src="${pageContext.request.contextPath}/img/${p.getImageMain()}"
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
                                                                    <span class="new-price">${p.getGia()}</span>
                                                                    <span class="unit">VNĐ</span>
                                                                </div>
                                                            </div>
                                                            <div class="add-actions">
                                                                <ul class="add-actions-link">
                                                                    <li class="add-cart active"
                                                                        pid="${p.getId_sanpham()}"
                                                                        path="${pageContext.request.contextPath}/AddToCart">
                                                                        Thêm Vào Giỏ
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- single-product-wrap end -->
                                                </div>
                                            </c:forEach>
                                            <%}%>
                                        </div>
                                    </div>
                                </div>
                                <jsp:useBean id="allProducts" scope="request" type="java.util.List"/>
                                <div class="paginatoin-area">
                                    <c:if test="${products.size()>0}">
                                        <div class="row paging">
                                            <div class="col-lg-6 col-md-6 pt-xs-15">
                                                <p>
                                                    Đang
                                                    hiện <%=(((int) request.getAttribute("page")) * 5 - 4 + "-" + (((int) request.getAttribute("page")) * 5 > allProducts.size() ? allProducts.size() : ((int) request.getAttribute("page")) * 5))%>
                                                    trong <%=allProducts.size()%> sản phẩm</p>
                                            </div>
                                            <div class="col-lg-6 col-md-6">
                                                <ul class="pagination-box pt-xs-20 pb-xs-15">
                                                    <li><a href="<%=
                                            "/houseware_nlu_war_exploded/ProductList?category="+request.getParameter("category")+"&pageN="+((int)request.getAttribute("page")>1?(int)request.getAttribute("page")-1:1)+"&branch="+request.getParameter("branch")+"&search="+request.getParameter("search")+"&price="+request.getParameter("price")
                                            %>" class="Previous"><i class="fa fa-chevron-left"></i>
                                                        Trở Về</a>
                                                    </li>

                                                    <% int productCount = allProducts.size();
                                                        int pageCount = (int) Math.round(productCount / 5);
                                                        if (productCount % 5 != 0)
                                                            pageCount++;
                                                        if (request.getAttribute("page") == null)
                                                            request.setAttribute("page", 1);
                                                        for (int i = 0; i < pageCount; i++) {
                                                    %>

                                                    <li class="<%=((int)request.getAttribute("page")==(i+1)?"active":"") %>">
                                                        <a
                                                                href="<%=
                                            "/houseware_nlu_war_exploded/ProductList?category="+request.getParameter("category")+"&pageN="+(i+1)+"&branch="+(request.getParameter("branch")==null?"":request.getParameter("branch"))+"&search="+request.getParameter("search")+"&price="+(request.getParameter("price")==null?"":request.getParameter("price"))
                                            %>"><%=(i + 1)%>
                                                        </a></li>
                                                    <%}%>
                                                    <li>
                                                        <a
                                                                href="
<%="/houseware_nlu_war_exploded/ProductList?category="+request.getParameter("category")+"&pageN="+((int)request.getAttribute("page")<pageCount?(int)request.getAttribute("page")+1:pageCount)+"&branch="+request.getParameter("branch")+"&search="+request.getParameter("search")+"&price="+request.getParameter("price")
                                            %>"
                                                                class="Next">Tiếp Theo<i
                                                                class="fa fa-chevron-right"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                        <!-- shop-products-wrapper end -->
                    </div>
                    <div class="col-lg-3 order-1 order-lg-2">
                        <!--sidebar-categores-box start  -->
                        <div class="sidebar-categores-box">
                            <div class="sidebar-title">
                                <h2>Lọc sản phẩm</h2>
                            </div>
                            <!-- btn-clear-all start -->
                            <button class="btn-clear-all mb-sm-30 mb-xs-30" ><a href="/houseware_nlu_war_exploded/ProductList?category=<%=request.getParameter("category")%>&pageN=1">Xóa tất cả</a></button>
                            <!-- btn-clear-all end -->
                            <!-- filter-sub-area start -->
                            <div class="filter-sub-area">
                                <h5 class="filter-sub-titel">Giá</h5>
                                <div class="categori-checkbox">
                                    <form action="#">
                                        <% String priceString;
                                            ArrayList<String> priceArray=new ArrayList<>();
                                            if (request.getParameter("price") != null && request.getParameter("price") != "" && request.getParameter("price") != "null") {
                                                priceString=request.getParameter("price");
                                                Collections.addAll(priceArray,priceString.split("-"));
                                            }
                                        %>

                                        <ul>
                                            <li><input type="checkbox" name="price" value="duoi1" <%=priceArray.contains("duoi1")?"checked":""%>><a href="#"></a><1
                                                triệu
                                            </li>
                                            <li><input type="checkbox" name="price" value="1den3" <%=priceArray.contains("1den3")?"checked":""%>><a href="#"></a>1-3
                                                triệu
                                            </li>
                                            <li><input type="checkbox" name="price" value="3den6" <%=priceArray.contains("3den6")?"checked":""%> ><a href="#"></a>3-6
                                                triệu
                                            </li>
                                            <li><input type="checkbox" name="price" value="tren6" <%=priceArray.contains("tren6")?"checked":""%>><a href="#"></a>>6
                                                triệu
                                            </li>
                                        </ul>
                                    </form>
                                </div>
                            </div>
                            <!-- filter-sub-area end -->
                            <!-- filter-sub-area start -->
                            <div class="filter-sub-area pt-sm-10 pt-xs-10">
                                <h5 class="filter-sub-titel">Thương Hiệu</h5>
                                <div class="categori-checkbox">
                                    <form action="#">
                                        <% String branchString;
                                            ArrayList<String> branchArray=new ArrayList<>();
                                            if (request.getParameter("branch") != null && request.getParameter("branch") != "" && request.getParameter("branch") != "null") {
                                                branchString=request.getParameter("price");
                                                Collections.addAll(branchArray,branchString.split("-"));
                                            }
                                        %>
                                        <ul>
                                            <li><input type="checkbox" name="branch" value="Philips" <%=branchArray.contains("Philips")?"checked":""%>><a
                                                    href="#">Philips</a>
                                            </li>
                                            <li><input type="checkbox" name="branch" value="Sunhouse" <%=branchArray.contains("Philips")?"checked":""%>><a
                                                    href="#">Sunhouse</a></li>
                                            <li><input type="checkbox" name="branch" value="Deawoo" <%=branchArray.contains("Deawoo")?"checked":""%>><a
                                                    href="#">Deawoo</a>
                                            </li>
                                            <li><input type="checkbox" name="branch" value="Panasonic" <%=branchArray.contains("Panasonic")?"checked":""%>><a
                                                    href="#">Panasonic</a></li>
                                            <li><input type="checkbox" name="branch" value="Sauce" <%=branchArray.contains("Sauce")?"checked":""%>><a href="#">Sauce</a>
                                            </li>
                                            <li><input type="checkbox" name="branch" value="Sharp" <%=branchArray.contains("Sharp")?"checked":""%>><a href="#">Sharp</a>
                                            </li>
                                            <li><input type="checkbox" name="branch" value="Electrolux" <%=branchArray.contains("Electrolux")?"checked":""%>><a href="#">Electrolux</a>
                                            </li>
                                            <li><input type="checkbox" name="branch" value="Kangaroo" <%=branchArray.contains("Kangaroo")?"checked":""%>><a
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
        <%@include file="client-footer.jsp" %>

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
                                                <button class="add-to-cart" type="submit">Thêm Vào Giỏ</button>
                                            </form>
                                        </div>
                                        <div class="product-additional-info pt-25">
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
                    var type = $(this).attr("name");
                    if (type == "branch") {
                        var value = $(this).attr("value");
                        branchs += (value + "-");
                    }
                    if (type == "price") {
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
                    window.history.pushState("", "", "/houseware_nlu_war_exploded/ProductList?category=<%=request.getParameter("category")%>&pageN=1&price=" + prices + "&branch=" + branchs);
                },
                error: function (data) {

                }
            });

        });

    </script>

</body>

<!-- shop-right-sidebar31:48-->

</html>
