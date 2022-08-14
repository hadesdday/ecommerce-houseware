<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html class="no-js" lang="zxx">

<!-- contact32:04-->
<%@include file="head.jsp" %>
<title>Liên Hệ | NLU</title>
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
                    <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                    <li class="active">Liên Hệ</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Li's Breadcrumb Area End Here -->
    <!-- Begin Contact Main Page Area -->
    <div class="contact-main-page mt-60 mb-40 mb-md-40 mb-sm-40 mb-xs-40">
        <div class="container mb-60">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d504.1286011785071!2d106.79147818888438!3d10.87113772227962!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRwLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1655703660990!5m2!1svi!2s"
                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div class="container">
            <div id="overlay">
                <div id="overlay__elm">
                    <img src="images/loading_overlay.gif" alt="404">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5 offset-lg-1 col-md-12 order-1 order-lg-2">
                    <div class="contact-page-side-content">
                        <h3 class="contact-page-title">Liên hệ chúng tôi tại:</h3>
                        <div class="single-contact-block">
                            <h4><i class="fa fa-fax"></i> Địa chỉ</h4>
                            <p>Khu Phố 6, Phường Linh Trung, TP. Thủ Đức, TP. Hồ Chí Minh</p>
                        </div>
                        <div class="single-contact-block">
                            <h4><i class="fa fa-phone"></i> Số điện thoại</h4>
                            <p>(+84) 567 8910</p>
                        </div>
                        <div class="single-contact-block last-child">
                            <h4><i class="fa fa-envelope-o"></i> Email</h4>
                            <p>19130073@st.hcmuaf.edu.vn</p>
                            <p>19130078@st.hcmuaf.edu.vn</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 order-2 order-lg-1">
                    <div class="contact-form-content pt-sm-55 pt-xs-55">
                        <h3 class="contact-page-title">Góp ý/Thắc mắc của bạn</h3>
                        <div class="contact-form">
                            <div class="form-group">
                                <label>Họ và Tên:<span class="required">*</span></label>
                                <c:choose>
                                    <c:when test="${sessionScope.customer != null}">
                                        <input type="text" name="fullname" id="customername"
                                               value="${sessionScope.customer.ten_kh}">
                                    </c:when>
                                    <c:when test="${sessionScope.customer == null}">
                                        <input type="text" name="fullname" id="customername">
                                    </c:when>
                                </c:choose>
                            </div>
                            <div class="form-group">
                                <label>Số điện thoại<span class="required">*</span></label>
                                <c:choose>
                                    <c:when test="${sessionScope.customer != null}">
                                        <input type="text" name="phone" value="${sessionScope.customer.sodt}">
                                    </c:when>
                                    <c:when test="${sessionScope.customer.ten_kh == null}">
                                        <input type="text" name="phone">
                                    </c:when>
                                </c:choose>
                            </div>
                            <div class="form-group">
                                <input type="hidden" name="ip">
                                <input type="hidden" name="city">
                            </div>
                            <div class="form-group mb-30">
                                <label>Góp ý/Thắc mắc</label>
                                <textarea name="message" id="contactMessage"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" value="submit" id="submit-message" class="li-btn-3" name="submit">
                                    Gửi
                                </button>
                            </div>
                        </div>
                        <p class="form-message"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Main Page Area End Here -->
    <!-- Begin Footer Area -->
    <%@include file="client-footer.jsp" %>
    <!-- Footer Area End Here -->
</div>
<%@include file="libraries.jsp" %>
<script>
    function clearData() {
        $("input[name='fullname']").val("");
        $("input[name='phone']").val("");
        $("textarea[name='message']").val("");
    }

    function getLocation() {
        $.ajax({
            url: "http://ip-api.com/json",
            method: "GET",
            dataType: "json",
            async: false,
            success: function (data) {
                $("input[name='ip']").val(data.query);
                $("input[name='city']").val(data.city);
            }
            , error: function (data) {
                console.log("error");
            }
        });
    }

    $("#submit-message").click(() => {
        var fullname = $("input[name='fullname']").val();
        var phone = $("input[name='phone']").val();
        var message = $("textarea[name='message']").val();
        getLocation();

        if (fullname.length < 1 || phone.length < 10 || message.length < 1) {
            toastr.error('Vui lòng nhập thông tin', 'Thất bại')
        } else {
            var ip = $("input[name='ip']").val();
            var city = $("input[name='city']").val();

            $("#overlay").css("display", "block");

            // message += "\n" + "- IP : " + ip + "\n- Thành phố : " + city;

            $.ajax({
                url: "${pageContext.request.contextPath}/Contact",
                method: "POST",
                data: {
                    fullname: fullname,
                    phone: phone,
                    content: message,
                    ip: ip,
                    city: city
                },
                success: function (data) {
                    $("#overlay").css("display", "none");
                    toastr.success('Gửi phản hồi thành công', 'Thành công');
                    clearData();
                }, error: function (data) {
                    $("#overlay").css("display", "none");
                    toastr.error('Gửi phản hồi thất bại', 'Thất bại')
                }
            })
        }
    });
</script>
</body>

</html>