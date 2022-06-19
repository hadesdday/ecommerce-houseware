<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="orderList" scope="request" type="java.util.List"/>

<html class="no-js" lang="zxx">
<%@include file="head.jsp" %>
<title>Đơn hàng của tôi | NLU</title>
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
            <%@include file="my-account-sidebar.jsp" %>
            <div class="col-sm-12 col-md-12 col-xs-3 col-lg-8 bg-white">
                <p class="p-title mt-3">Đơn hàng của tôi</p>
                <table id="my__order__table" class="display text-center" style="width:100%">
                    <thead>
                    <tr>
                        <th>Mã đơn hàng</th>
                        <th>Ngày mua</th>
                        <th>Tổng tiền</th>
                        <th>Trạng thái</th>
                        <th>Xem</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="order" items="${orderList}">
                        <tr>
                            <td>${order.getID_HOADON()}</td>
                            <td>${order.getCreatedAt()}</td>
                            <td>${order.getTRIGIA()} đ</td>
                            <td> ${order.getTRANGTHAI()}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/myOrderDetails?oid=${order.getID_HOADON()}">Xem</a>
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
    $("#my__order__table").DataTable({
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
            {type: 'numeric-comma', targets: 2},
        ],
    });
</script>
</body>

</html>