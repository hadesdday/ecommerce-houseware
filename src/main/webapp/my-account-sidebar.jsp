<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="col-sm-12 col-md-12 col-xs-3 col-lg-3">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler b-none" type="button" data-toggle="collapse"
                data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul>
                <li class="mt-3 sidebar-item"><a href="my-account.jsp" class="fs-110"><i
                        class="fa fa-user mr-3 fs-150"></i>
                    Thông tin tài
                    khoản</a>
                </li>
                <li class="mt-3 sidebar-item">
                    <a href="${pageContext.request.contextPath}/myOrder"
                       class="fs-110"><i
                            class="fa fa-book mr-3 fs-150"></i>
                        Đơn hàng của tôi</a>
                </li>
                <li class="mt-3 sidebar-item">
                    <a href="${pageContext.request.contextPath}/myReview" class="fs-110">
                        <i class="fa fa-star mr-3 fs-150"></i>
                        Nhận xét của bạn
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</div>
