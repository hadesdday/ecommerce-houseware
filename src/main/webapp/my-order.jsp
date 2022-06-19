<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="no-js" lang="zxx">

<!-- login-register31:27-->

<%@include file="head.jsp" %>

<body>
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
                    <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>
                    <li class="active">Đơn hàng của tôi</li>
                </ul>
            </div>
        </div>
        <div class="row ml-90 sidebar-content ">
            <!-- sidebar here -->
            <div class="col-sm-12 col-md-12 col-xs-3 col-lg-3">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <button class="navbar-toggler b-none" type="button" data-toggle="collapse"
                            data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul>
                            <li class="mt-3 sidebar-item  "><a href="my-account.jsp" class="fs-110"><i
                                    class="fa fa-user mr-3 fs-150"></i>
                                Thông tin tài
                                khoản</a>
                            </li>
                            <li class="mt-3 sidebar-item"><a href="my-order.jsp" class="fs-110"><i
                                    class="fa fa-book mr-3 fs-150"></i>
                                Quản lý đơn hàng</a>
                            </li>
                            <li class="mt-3 sidebar-item"><a href="my-review.html" class="fs-110"><i
                                    class="fa fa-star mr-3 fs-150"></i>
                                Nhận xét của bạn</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="col-sm-12 col-md-12 col-xs-3 col-lg-8 bg-white">
                <p class=" p-title mt-3">Đơn hàng của tôi</p>
                <table id="my-order-table" class="display text-center" style="width:100%">
                    <thead>
                    <tr>
                        <th>Mã đơn hàng</th>
                        <th>Tên sản phẩm</th>
                        <th>Ngày mua</th>
                        <th>Tổng tiền</th>
                        <th>Số lượng</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>KN12345</td>
                        <td>Máy rửa chén Lmao</td>
                        <td>2021-12-31</td>
                        <td>2.098.302 vnd</td>
                        <td>1</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <%@include file="client-footer.jsp" %>
    <!-- Footer Area End Here -->
</div>
<%@include file="libraries.jsp" %>
<script src="js/datatables.min.js"></script>
</body>

</html>