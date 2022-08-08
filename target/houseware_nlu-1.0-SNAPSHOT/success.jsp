<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html class="no-js" lang="zxx">
<title>Thành công | NLU</title>

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
                    <li><a href="login.jsp">Đăng nhập</a></li>
                    <li class="active">Quên mật khẩu</li>
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
                                <c:if test="${requestScope.sentRecoveryCode}">
                                    <div class="col-md-12 col-12 mb-20">
                                        <h1 class="text-center">Đặt lại mật khẩu</h1>
                                    </div>
                                    <div class="col-md-12">
                                        <p class="text-center">Mã khôi phục đã được gửi đến email của bạn</p>
                                        <p class="text-center">Vui lòng kiểm tra trong thư rác nếu như không tìm thấy
                                            trong
                                            hộp thư đến</p>
                                    </div>
                                </c:if>
                                <c:if test="${requestScope.registerSuccess}">
                                    <div class="col-md-12 col-12 mb-20">
                                        <h1 class="text-center">Đăng ký tài khoản thành công</h1>
                                    </div>
                                    <div class="col-md-12">
                                        <p class="text-center">Bạn đã đăng ký tài khoản thành công</p>
                                        <p class="text-center">Email kích hoạt tài khoản đã được gửi đến email của bạn.</p>
                                        <p class="text-center">Vui lòng kiểm tra trong thư rác nếu như không tìm thấy
                                            trong
                                            hộp thư đến.</p>
                                    </div>
                                </c:if>
                                <c:if test="${requestScope.activeSuccess}">
                                    <div class="col-md-12 col-12 mb-20">
                                        <h1 class="text-center">Kích hoạt tài khoản thành công</h1>
                                    </div>
                                    <div class="col-md-12">
                                        <p class="text-center">Bạn đã kích hoạt tài khoản thành công</p>
                                        <p class="text-center">Bây giờ bạn đã có thể tận hưởng những giây phút tuyệt vời
                                            bên HouseWareNLU !</p>
                                    </div>
                                </c:if>
                                <c:if test="${requestScope.resetSuccess}">
                                    <div class="col-md-12 col-12 mb-20">
                                        <h1 class="text-center">Thành công</h1>
                                    </div>
                                    <div class="col-md-12">
                                        <p class="text-center">Đặt lại mật khẩu thành công </p>
                                    </div>
                                </c:if>
                                <div class="col-md-12 d-flex justify-content-center mt-20">
                                    <a href="login.jsp"><i class="fa fa-arrow-left pr-2"></i> Trở về trang đăng
                                        nhập</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%@include file="client-footer.jsp" %>
</div>
<%@include file="libraries.jsp" %>
</body>

</html>