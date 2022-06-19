<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="no-js" lang="zxx">

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
                    <li class="active">Đổi mật khẩu</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Li's Breadcrumb Area End Here -->
    <!-- Begin Login Content Area -->
    <div class="page-section mb-60 mt-30">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
                    <form action="${pageContext.request.contextPath}/resetPassword" method="post">
                        <div class="change-password-form">
                            <h4 class="change-password-title text-center">Đổi mật khẩu</h4>
                            <div class="row">
                                <div class="col-md-12 mb-20">
                                    <c:if test="${sessionScope.recoveryEmail != null}">
                                        <input class="mb-0 rounded" type="hidden" name="email"
                                               value="${sessionScope.recoveryEmail}">
                                    </c:if>
                                    <c:if test="${sessionScope.user.email != null}">
                                        <input class="mb-0 rounded" type="hidden" name="email"
                                               value="${sessionScope.user.email}">
                                    </c:if>
                                </div>
                                <c:if test="${sessionScope.recoveryToken != null}">
                                    <div class="col-md-12 mb-20">
                                        <input class="mb-0 rounded" type="hidden" name="token"
                                               value="${sessionScope.recoveryToken}">
                                    </div>
                                </c:if>
                                <div class="col-md-12 mb-20">
                                    <label>Mật khẩu mới</label>
                                    <input class="mb-0 rounded" type="password" placeholder="Mật khẩu mới"
                                           id="new__password" name="newPassword">
                                </div>
                                <div class="col-md-12 mb-20">
                                    <label>Nhập lại mật khẩu mới</label>
                                    <input class="mb-0 rounded" type="password" placeholder="Nhập lại mật khẩu mới"
                                           id="npassword__confirm" name="confirmPassword">
                                </div>
                                <div class="col-12">
                                    <button class="change-password-button mt-0" type="submit">Xác nhận</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Login Content Area End Here -->
    <!-- Begin Footer Area -->
    <%@include file="client-footer.jsp" %>
    <!-- Footer Area End Here -->
</div>
<%@include file="libraries.jsp" %>
</body>

<!-- login-register31:27-->

</html>