<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="product" scope="request" type="beans.Product"/>
<jsp:useBean id="sameCategoryProducts" scope="request" type="java.util.List"/>
<jsp:useBean id="comments" scope="request" type="java.util.List"/>
<jsp:useBean id="images" scope="request" type="java.util.List"/>
<jsp:useBean id="categoryName" scope="request" type="java.lang.String"/>

<!doctype html>
<html class="no-js" lang="zxx">

<%@include file="head.jsp" %>
<title>${product.ten_sp} giá rẻ, chính hãng || NLU</title>


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
                            <c:forEach var="img" items="${images}">
                                <div class="lg-image">
                                    <a class="popup-img venobox vbox-item"
                                       href="${pageContext.request.contextPath}/img/${img.getLINK_ANH()}"
                                       data-gall="myGallery">
                                        <img loading="lazy"
                                             src="${pageContext.request.contextPath}/img/${img.getLINK_ANH()}"
                                             alt="product image">
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="product-details-thumbs slider-thumbs-1">
                            <c:forEach var="img" items="${images}">
                                <div class="sm-image">
                                    <img loading="lazy"
                                         src="${pageContext.request.contextPath}/img/${img.getLINK_ANH()}"
                                         alt="product image thumb"></div>
                            </c:forEach>
                        </div>
                    </div>
                </div>

                <div class="col-lg-7 col-md-6">
                    <div class="product-details-view-content pt-60">
                        <div class="product-info">
                            <h2>${product.ten_sp}</h2>
                            <span class="product-details-ref">
                                  <a href="${pageContext.request.contextPath}/ProductList?category=${product.ma_loaisp}&pageN=1">
                                      ${categoryName}</a>
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
                                <c:choose>
                                    <c:when test="${product.soluongton > 0}">
                                        <div class="quantity">
                                            <label>Số lượng</label>
                                            <div class="cart-plus-minus">
                                                <input class="cart-plus-minus-box" value="1" type="text"
                                                       max="${product.soluongton}">
                                                <div class="dec qtybutton"><i class="fa fa-angle-down"></i></div>
                                                <div class="inc qtybutton"><i class="fa fa-angle-up"></i></div>
                                            </div>
                                        </div>
                                        <button class="add-to-cart add-cart" pid="${product.id_sanpham}"
                                                path="${pageContext.request.contextPath}/AddToCart" type="submit">
                                            Thêm Vào Giỏ Hàng
                                        </button>
                                    </c:when>
                                    <c:when test="${product.soluongton == 0}">
                                        <button class="add-to-cart" type="submit" disabled style="opacity: 0.5">
                                            HẾT HÀNG
                                        </button>
                                    </c:when>
                                </c:choose>
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
                            <c:choose>
                                <c:when test="${sessionScope.get('authenticated') == 1}">
                                    <div class="review-btn">
                                        <a href="#" class="review-links" data-toggle="modal" data-target="#mymodal">Viết
                                            đánh
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
                                                                     src="${pageContext.request.contextPath}/img/${product.imageMain}"
                                                                     alt="Li's Product" width="50%" height="50%">
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
                                                                        <label>Nội dung</label>
                                                                        <div id="comment__area"></div>
                                                                        <div class="feedback-input">
                                                                            <div class="feedback-btn pb-15">
                                                                                <a href="#" class="close"
                                                                                   data-dismiss="modal"
                                                                                   aria-label="Close">Hủy</a>
                                                                                <a id="submit-comment">Gửi</a>
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
                                </c:when>
                                <c:when test="${sessionScope.get('authenticated') != 1}">
                                    <div class="review-btn">
                                        <a href="${pageContext.request.contextPath}/login.jsp" class="review-links"
                                           style="width:270px;">Vui lòng đăng nhập để đánh giá</a>
                                    </div>
                                </c:when>
                            </c:choose>
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
                                <c:if test="${product.id_sanpham != si.id_sanpham}">
                                    <div class="col-lg-12">
                                        <!-- single-product-wrap start -->
                                        <div class="single-product-wrap">
                                            <div class="product-image">
                                                <a href="product-details.jsp">
                                                    <img loading="lazy"
                                                         src="${pageContext.request.contextPath}/img/${si.getImageMain()}"
                                                         alt="Li's Product Image">
                                                </a>
                                                <span class="sticker">New</span>
                                            </div>
                                            <div class="product_desc">
                                                <div class="product_desc_info">
                                                    <div class="product-review">
                                                        <h5 class="manufacturer">
                                                            <a href="${pageContext.request.contextPath}/ProductList?category=${si.getMa_loaisp()}&pageN=1">${si.getMa_loaisp()}</a>
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
                                                            path="${pageContext.request.contextPath}/AddToCart"><a
                                                                href="#">Add
                                                            to
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
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!-- Li's Section Area End Here -->
            </div>
        </div>
    </section>
    <div class="li-comment-section">
        <h3>${comments.size()+requestScope.remainComments.size()} bình luận</h3>
        <ul>
            <c:forEach var="cmt" items="${comments}">
                <li class="comment">
                    <div class="author-avatar pt-15">
                        <img loading="lazy" src="images/product-details/user.png" alt="User">
                    </div>
                    <div class="comment-body pl-15">
                        <h5 class="comment-author pt-15">${cmt.getUsername()}</h5>
                        <div class="comment-post-date">
                                ${cmt.createdAt}
                        </div>
                            ${cmt.getStars()}
                        <p>${cmt.getContent()}</p>
                    </div>
                </li>
            </c:forEach>
            <c:if test="${requestScope.remainComments.size() > 0}">
                <div class="row ml-70 mb-40">
                    <a id="view__more-comments">Xem thêm ${requestScope.remainComments.size()} bình luận</a>
                </div>
                <div class="d-none" id="remain__comments">
                    <c:forEach var="remainReview" items="${requestScope.remainComments}">
                        <li class="comment">
                            <div class="author-avatar pt-15">
                                <img loading="lazy" src="images/product-details/user.png" alt="User">
                            </div>
                            <div class="comment-body pl-15">
                                <h5 class="comment-author pt-15">${remainReview.getUsername()}</h5>
                                <div class="comment-post-date">
                                        ${remainReview.createdAt}
                                </div>
                                    ${remainReview.getStars()}
                                <p>${remainReview.getContent()}</p>
                            </div>
                        </li>
                    </c:forEach>
                </div>
            </c:if>
        </ul>
    </div>
    <!-- Begin Footer Area -->
    <%@include file="client-footer.jsp" %>
</div>
<%@include file="libraries.jsp" %>
<script src="https://cdn.ckeditor.com/ckeditor5/35.0.1/classic/ckeditor.js"></script>
<script>
    <c:if test="${requestScope.remainComments.size() > 0}">
    $("#view__more-comments").click(() => {
        $("#view__more-comments").parent().remove();
        $("#remain__comments").removeClass("d-none");
    });
    </c:if>
    var commentArea;
    $(document).ready(function () {
        ClassicEditor
            .create(document.querySelector('#comment__area'), {
                // toolbar: [ 'heading', '|', 'bold', 'italic', 'link' ]
                defaultLanguage: 'vi'
            })
            .then(editor => {
                window.editor = editor;
                commentArea = editor;
                console.log("worked");
            })
            .catch(err => {
                console.error(err.stack);
            });
    });

    $("#submit-comment").click(() => {
        var rating = $("select[name='star-rating'] option:selected").val();
        var pid = "${product.id_sanpham}";
        // var content = $("textarea[name='comment']").val();
        var content = commentArea.getData();
        var username = "${sessionScope.get("user").getUsername()}";
        var currentUrl = window.location.href;

        $.ajax({
            url: "${pageContext.request.contextPath}/post/comment",
            method: 'POST',
            data: {
                pid: pid,
                username: username,
                rating: rating,
                content: content,
                currentUrl: currentUrl,
            },
            success: function (data, textStatus, xhr) {
                toastr.success("Bình luận của bạn đã được gửi đi", "Thành công");
                let elm = '<li class="comment"><div class="author-avatar pt-15"><img loading="lazy" src="images/product-details/user.png" alt="User"></div>';
                let usernameElm = '<div class="comment-body pl-15"><h5 class="comment-author pt-15">' + username + '</h5>';
                var currentDate = new Date();
                var date = currentDate.getFullYear() + "-" + (currentDate.getMonth() + 1) + "-" + currentDate.getDate() + " " + currentDate.getHours() + ":" + currentDate.getMinutes() + ":" + currentDate.getSeconds();
                let commentDateElm = '<div class="comment-post-date">' + date + '</div>';
                let contentElm = '<p>' + content + '</p></div></li>';
                let finalElm = elm + usernameElm + commentDateElm + contentElm;
                $(".comment").last().after(finalElm);
                commentArea.setData("");
                $(".close").click();
            },
            error: function (data, textStatus, xhr) {
                toastr.error("Bình luận của bạn không được gửi đi", "Thất bại")
                $(".close").click();
            }
        })
    });
</script>
</body>


</html>