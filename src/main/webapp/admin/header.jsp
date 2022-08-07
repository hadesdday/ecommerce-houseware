<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="stylesheets.jsp" %>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
</head>
<body>
<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
    <div class="nano">
        <div class="nano-content">
            <ul>
                <div class="logo"><a href="${pageContext.request.contextPath}/admin">
                    <span>NLU</span></a></div>
                <li class="label">Trang chủ</li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin"><i class="ti-home"></i> Trang chủ </a>
                </li>
                <li class="label">Quản Lý</li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/sanpham.jsp"><i class="ti-desktop"></i> Sản phẩm</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/hinhanh.jsp"><i class="ti-clipboard"></i>Hình ảnh</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/hoadon.jsp"><i class="ti-bag"></i> Hóa đơn</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/user.jsp"><i class="ti-user"></i>Người dùng</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/khachhang.jsp"><i class="ti-user"></i>Khách hàng</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/loai-sp.jsp"><i class="ti-user"></i>Loại sản phẩm</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/khuyenmai.jsp"><i class="ti-star"></i>Khuyến mãi</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/review.jsp"><i class="ti-star"></i>Đánh giá sản
                        phẩm</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/payment-method.jsp"><i class="ti-clipboard"></i>Phương
                        thức thanh toán</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="header">
    <div class="container-fluid p-5">
        <div class="row">
            <div class="col-lg-12">
                <div class="float-right">
                    <div class="dropdown dib">
                        <div class="dropdown show">
                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Admin
                            </a>

                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
<%--                                <a class="dropdown-item" href="#">--%>
<%--                                    <i class="ti-user pr-2"></i>--%>
<%--                                    <span> Thông tin</span>--%>
<%--                                </a>--%>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/logout"><i
                                        class="ti-power-off pr-2"></i>
                                    Đăng
                                    xuất</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
