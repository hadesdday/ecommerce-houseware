<%@ page import="beans.User" %>
<%@ page import="beans.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    User sessionUser = (User) session.getAttribute("user") != null ? (User) session.getAttribute("user") : new User();
    Customer sessionCustomer = (Customer) session.getAttribute("customer") != null ? (Customer) session.getAttribute("customer") : new Customer();
    String fullname = sessionCustomer.getTen_kh();
    String address = sessionCustomer.getDiachi();
    String phoneNumber = sessionCustomer.getSodt();
    String email = sessionUser.getEmail();
%>
<html class="no-js" lang="zxx">

<!-- login-register31:27-->

<%@include file="head.jsp" %>
<title>Tài khoản của tôi | NLU</title>
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
                    <li class="active">Thông tin tài khoản</li>
                </ul>
            </div>
        </div>
        <div class="row ml-90 sidebar-content ">
            <!-- sidebar here -->
            <%@include file="my-account-sidebar.jsp" %>
            <div class="col-sm-12 col-md-12 col-xs-3 col-lg-6 bg-white">
                <p class=" p-title mt-3">Thông tin tài khoản</p>
                <div class="status"></div>
                <div class="row mt-4 ml-2">
                    <div class="row col-sm-12 col-md-12 col-xs-4 col-lg-3">
                        <label>Họ & Tên</label>
                    </div>
                    <div class="row col-sm-12 col-md-12 col-xs-4 col-lg-9">
                        <input class="form-control" type="text" name="fullName" value="<%=fullname%>">
                    </div>
                </div>
                <div class="row mt-4 ml-2">
                    <div class="row col-sm-12 col-md-12 col-xs-4 col-lg-3">
                        <label>Địa chỉ</label>
                    </div>
                    <div class="row col-sm-12 col-md-12 col-xs-4 col-lg-9">
                        <input class="form-control" type="text" name="address" value="<%=address%>">
                    </div>
                </div>
                <div class="row mt-4 ml-2">
                    <div class="row col-sm-12 col-md-12 col-xs-4 col-lg-3">
                        <label>Số điện thoại</label>
                    </div>
                    <div class="row col-sm-12 col-md-12 col-xs-4 col-lg-9">
                        <input class="form-control" type="text" name="phoneNumber" value="<%=phoneNumber%>">
                        <c:if test="${requestScope.emailErr.length() > 1}">
                            <p class="text-danger">${requestScope.emailErr}</p>
                        </c:if>
                    </div>
                </div>
                <div class="row mt-4 ml-2">
                    <div class="row col-sm-12 col-md-12 col-xs-4 col-lg-3">
                        <label>Email</label>
                    </div>
                    <div class="row col-sm-12 col-md-12 col-xs-4 col-lg-9">
                        <input class="form-control" type="email" name="email" value="<%=email%>">
                        <c:if test="${requestScope.emailErr.length() > 1}">
                            <p class="text-danger">${requestScope.emailErr}</p>
                        </c:if>
                    </div>
                </div>
                <div class="row mt-3 ml-2">
                    <div class="row col-sm-12 col-md-12 col-xs-4 col-lg-3">
                    </div>
                    <div class="row col-sm-12 col-md-12 col-xs-4 col-lg-9">
                        <a href="change-password.jsp" class="fs-110 text-primary">Đổi mật khẩu</a>
                    </div>
                </div>
                <div class="row mt-3 ml-1">
                    <div class="row col-sm-12 col-md-12 col-xs-4 col-lg-3">
                    </div>
                    <div class="row col-sm-12 col-md-12 col-xs-4 col-lg-9 pb-30">
                        <button type="button" class="submit-button mt-0">Lưu thay đổi</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Li's Breadcrumb Area End Here -->
    <!-- Begin Login Content Area -->
    <!-- Login Content Area End Here -->
    <!-- Begin Footer Area -->
    <%@include file="client-footer.jsp" %>
    <!-- Footer Area End Here -->
</div>
<%@include file="libraries.jsp" %>
<script src="js/datatables.min.js"></script>
<script>
    $(document).ready(function () {
        $(".submit-button").click(function () {
            var fname = $("input[name='fullName']").val();
            var address = $("input[name='address']").val();
            var phone = $("input[name='phoneNumber']").val();
            var email = $("input[name='email']").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/updateInformation",
                method: "POST",
                data: {
                    email: email,
                    phoneNumber: phone,
                    fullName: fname,
                    address: address
                },
                success: function (data, textStatus, xhr) {
                    var success = "<div class='alert alert-success'><p>Cập nhật thành công</p></div>";
                    $(".status").html(success);
                    setTimeout(() => {
                        $(".status").html("");
                    }, 3000)
                },
                error: function (data, textStatus, xhr) {
                    var err = "<div class='alert alert-danger'><p>Cập nhật thất bại</p></div>";
                    $(".status").html(err);
                    setTimeout(() => {
                        $(".status").html("");
                    }, 3000)
                }
            })
        })
    })
</script>
</body>

</html>