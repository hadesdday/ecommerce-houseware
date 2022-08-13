<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="no-js" lang="zxx">

<%@include file="head.jsp" %>
<title>Đăng ký tài khoản | NLU</title>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->
<!-- Begin Body Wrapper -->
<div class="body-wrapper">
    <%@include file="home-header.jsp" %>
    <div class="breadcrumb-area">
        <div class="container">
            <div class="breadcrumb-content">
                <ul>
                    <li><a href="index.jsp">Trang chủ</a></li>
                    <li class="active">Đăng ký tài khoản</li>
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
                    <div id="overlay">
                        <div id="overlay__elm">
                            <img src="images/loading_overlay.gif" alt="404">
                        </div>
                    </div>
                    <div class="register-form">
                        <h4 class="register-title text-center">Đăng Ký Tài Khoản</h4>
                        <c:if test="${requestScope.existed.length() > 1 }">
                            <div class="alert alert-danger" role="alert">
                                    ${requestScope.existed}
                            </div>
                        </c:if>
                        <div class="row">
                            <div class="col-md-12 mb-20">
                                <label>Username *</label>
                                <input class="mb-0 rounded" type="text" placeholder="Username"
                                       id="username__reg" name="username">
                            </div>

                            <div class="col-md-12 mb-20">
                                <label>Mật khẩu *</label>
                                <input class="mb-0 rounded" type="password"
                                       placeholder="Tối thiểu 8 ký tự bao gồm cả chữ và số" id="password__reg"
                                       name="password">
                            </div>

                            <div class="col-md-12 mb-20">
                                <label>Xác nhận mật khẩu *</label>
                                <input class="mb-0 rounded" type="password" placeholder="Xác nhận mật khẩu"
                                       id="confirm__password" name="confirmPassword">
                            </div>

                            <div class="col-md-12 mb-20">
                                <label>Họ tên</label>
                                <input class="mb-0 rounded" type="text" placeholder="Họ Tên" id="fullname"
                                       name="fullname">
                            </div>

                            <div class="col-md-12 mb-20">
                                <label>Email *</label>
                                <input class="mb-0 rounded" type="email" placeholder="Email" id="email__reg"
                                       name="email" v>
                            </div>

                            <div class="col-md-12 mb-20">
                                <label>Số điện thoại</label>
                                <input class="mb-0 rounded" type="tel" placeholder="Số điện thoại" name="phone" maxlength="10"
                                >
                            </div>

                            <div class="col-md-12 mb-20">
                                <label>Địa chỉ</label>
                                <input class="mb-0 rounded" type="text" placeholder="Địa chỉ" name="address"
                                >
                            </div>

                            <div class="col-12">
                                <button class="register-button mt-0" type="submit">Đăng ký</button>
                            </div>
                            <div class="col-md-12 mt-20">
                                <label>Đã có tài khoản?
                                    <a href="login.jsp">Đăng nhập ngay</a>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="client-footer.jsp" %>
</div>
<%@include file="libraries.jsp" %>
<script>
    $(".register-button").click(() => {
        var username = $("input[name='username']").val();
        var password = $("input[name='password']").val();
        var fullname = $("input[name='fullname']").val();
        var confirmPassword = $("input[name='confirmPassword']").val();
        var email = $("input[name='email']").val();
        var phone = $("input[name='phone']").val();
        var address = $("input[name='address']").val();

        $("#overlay").css("display", "block");

        $.ajax({
            url: "${pageContext.request.contextPath}/register",
            method: "POST",
            data: {
                username: username,
                password: password,
                fullname: fullname,
                confirmPassword: confirmPassword,
                email: email,
                phone: phone,
                address: address,
            }
            , success: function (data) {
                $("#overlay").css("display", "none");
                $(".swal-button--confirm").click(() => {
                    window.location.replace("${pageContext.request.contextPath}/success?registeredSuccess=registered");
                })
                swal("Thành công", "Đăng ký tài khoản thành công", "success");
                setTimeout(() => {
                    window.location.replace("${pageContext.request.contextPath}/success?registeredSuccess=registered");
                }, 2000);
            }, error: function (data, textStatus) {
                $("#overlay").css("display", "none");
                if (data.status === 406)
                    swal("Thất bại", "Thông tin đã nhập chưa chính xác vui lòng kiểm tra lại", "error");
                else if (data.status === 409)
                    swal("Thất bại", "Tài khoản đã tồn tại", "error");
                else
                    swal("Thất bại", "Đăng kí thất bại", "error");
            }
        })
    });
</script>
</body>

<!-- login-register31:27-->

</html>