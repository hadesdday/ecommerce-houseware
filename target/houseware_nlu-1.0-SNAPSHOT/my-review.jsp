<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="reviewList" scope="request" type="java.util.List"/>

<html class="no-js" lang="zxx">
<%@include file="head.jsp" %>
<title>Nhận xét của tôi | NLU</title>
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
                    <li class="active">Nhận xét của tôi</li>
                </ul>
            </div>
        </div>
        <div class="row ml-90 sidebar-content ">
            <!-- sidebar here -->
            <%@include file="my-account-sidebar.jsp" %>
            <div class="col-sm-12 col-md-12 col-xs-3 col-lg-8 bg-white">
                <p class="p-title mt-3">Nhận xét của tôi</p>
                <table id="my_review_table" class="display text-center table table-bordered border" style="width:100%">
                    <thead>
                    <tr>
                        <th>Mã sản phẩm</th>
                        <th>Rating</th>
                        <th>Nội dung</th>
                        <th>Xem</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="review" items="${reviewList}">
                        <tr>
                            <td>${review.getId_sanpham()}</td>
                            <td>${review.getRating()}</td>
                            <td>${review.getContent()}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/ProductDetails?pid=${review.getId_sanpham()}">Xem</a>
                            </td>
                        </tr>
                    </c:forEach>
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
<script>
    $("#my_review_table").DataTable({
        dom: "lBfrtip",
        lengthMenu: [
            [10, 25, 50, -1],
            [10, 25, 50, "All"],
        ],
        buttons: ["copy", "csv", "excel", "pdf", "print"],
        language: {
            "url": "${pageContext.request.contextPath}/js/vi.json"
        },
        columnDefs: [
            {type: 'numeric-comma', targets: 1},
        ],
    });
</script>
</body>

</html>