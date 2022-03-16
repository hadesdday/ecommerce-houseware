<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="orderList" scope="request" type="java.util.List"/>

<%@include file="header.jsp" %>

<title>Quản lý hóa đơn | NLU</title>
<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <h2>Quản lý hóa đơn</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">

                <button id="addBtn" type="button" class="btn btn-primary">Thêm hóa đơn</button>
                <!--modal them hoa don-->

                <div id="addModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Thêm hóa đơn</h2>
                        </div>
                        <div class="custom-modal-body">
                            <label>Mã hóa đơn</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="maHD">
                            </div>

                            <label>Mã khách hàng</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="maKH">
                            </div>

                            <label>Ngày lập hóa đơn</label>
                            <div class="input-group mb-3">
                                <input type="datetime-local" class="form-control" name="ngayMua">
                            </div>

                            <label>Mã giảm giá</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="coupon">
                            </div>

                            <label>Phương thức thanh toán</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="paymentMethod">
                                    <option selected hidden disabled value="0">Chọn phương thức thanh toán</option>
                                    <option value="Chuyển khoản ngân hàng">Chuyển khoản ngân hàng</option>
                                    <option value="Thanh toán khi nhận hàng">Thanh toán khi nhận hàng</option>
                                    <option value="Thanh toán qua ví điện tử momo">Thanh toán qua ví điện tử momo
                                    </option>
                                    <option value="Thanh toán qua ví điện tử paypal">Thanh toán qua ví điện tử paypal
                                    </option>
                                </select>
                            </div>

                            <label>Đơn giá</label>
                            <div class="input-group mb-3">
                                <input type="number" class="form-control" name="totalPrice">
                            </div>

                            <label>Trạng thái</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="status">
                                    <option selected hidden disabled value="0">Chọn trạng thái đơn hàng</option>
                                    <option value="Bị hủy bỏ">Bị hủy bỏ</option>
                                    <option value="Đang chờ xử lý">Đang chờ xử lý</option>
                                    <option value="Hết hạn xử lý">Hết hạn xử lý</option>
                                    <option value="Khách hàng trả lại hàng">Khách hàng trả lại hàng</option>
                                    <option value="Đơn hàng được giao thành công">Đơn hàng được giao thành công</option>
                                    <option value="Khách hàng từ chối nhận hàng">Khách hàng từ chối nhận hàng</option>
                                    <option value="Đang vận chuyển">Đang vận chuyển</option>
                                    <option value="Đã được xử lý">Đã được xử lý</option>
                                    <option value="Đang xử lý">Đang xử lý</option>
                                </select>
                            </div>
                        </div>

                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="submit" class="btn btn-primary" id="addOrder">Lưu</button>
                        </div>

                    </div>
                </div>

                <!-- modal sua thong tin hoa don -->
                <div id="editModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Sửa thông tin hóa đơn</h2>
                        </div>
                        <div class="custom-modal-body">
                            <label>Mã hóa đơn</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editmaHD">
                            </div>

                            <label>Mã khách hàng</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editmaKH">
                            </div>

                            <label>Ngày lập hóa đơn</label>
                            <div class="input-group mb-3">
                                <input type="datetime-local" class="form-control" name="editngayMua">
                            </div>

                            <label>Mã giảm giá</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editcoupon">
                            </div>

                            <label>Phương thức thanh toán</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="editpaymentMethod">
                                    <option selected hidden disabled value="0">Chọn phương thức thanh toán</option>
                                    <option value="Chuyển khoản ngân hàng">Chuyển khoản ngân hàng</option>
                                    <option value="Thanh toán khi nhận hàng">Thanh toán khi nhận hàng</option>
                                    <option value="Thanh toán qua ví điện tử momo">Thanh toán qua ví điện tử momo
                                    </option>
                                    <option value="Thanh toán qua ví điện tử paypal">Thanh toán qua ví điện tử paypal
                                    </option>
                                </select>
                            </div>

                            <label>Đơn giá</label>
                            <div class="input-group mb-3">
                                <input type="number" class="form-control" name="edittotalPrice">
                            </div>

                            <label>Trạng thái</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="editstatus">
                                    <option selected hidden disabled value="0">Chọn trạng thái đơn hàng</option>
                                    <option value="Bị hủy bỏ">Bị hủy bỏ</option>
                                    <option value="Đang chờ xử lý">Đang chờ xử lý</option>
                                    <option value="Hết hạn xử lý">Hết hạn xử lý</option>
                                    <option value="Khách hàng trả lại hàng">Khách hàng trả lại hàng</option>
                                    <option value="Đơn hàng được giao thành công">Đơn hàng được giao thành công</option>
                                    <option value="Khách hàng từ chối nhận hàng">Khách hàng từ chối nhận hàng</option>
                                    <option value="Đang vận chuyển">Đang vận chuyển</option>
                                    <option value="Đã được xử lý">Đã được xử lý</option>
                                    <option value="Đang xử lý">Đang xử lý</option>
                                </select>
                            </div>
                        </div>

                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="submit" class="btn btn-primary" id="editOrder">Lưu</button>
                        </div>
                    </div>
                </div>

                <div id="confirmDelete" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Xác nhận</h2>
                        </div>
                        <div class="custom-modal-body">
                            <h6>Bạn có chắc chắn muốn xóa hóa đơn này ?</h6>
                            <input type="hidden" name="oidDelete">
                        </div>
                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="submit" class="btn btn-primary" id="confirmDelAct">Đồng ý</button>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /# row -->
            <section id="main-content">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="bootstrap-data-table-panel">
                                <div class="table-responsive">
                                    <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>Mã hóa đơn</th>
                                            <th>Mã khách hàng</th>
                                            <th>Ngày lập hóa đơn</th>
                                            <th>Mã giảm giá</th>
                                            <th>Phương thức thanh toán</th>
                                            <th>Trị giá</th>
                                            <th>Trạng thái</th>
                                            <th>Hành động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${orderList}" var="item">
                                            <tr>
                                                <td>${item.ID_HOADON} </td>
                                                <td>${item.ID_KHACHHANG}</td>
                                                <td>${item.NGAYLAPHD}</td>
                                                <td>${item.ID_MAGG}</td>
                                                <td>${item.MAPTTT}</td>
                                                <td>
                                                    <fmt:setLocale value="vi-VN"/>
                                                    <fmt:formatNumber value="${item.TRIGIA}" type="currency"/>
                                                </td>
                                                <td>${item.TRANGTHAI}</td>
                                                <td>
                                                    <a class="btn rounded bg-warning" id="editBtn"
                                                       onclick="onEdit(this)" oid="${item.ID_HOADON}">
                                                        <i class="ti-pencil text-white"></i>
                                                    </a>
                                                    <a class="btn rounded bg-danger delAct" id="deleteAction"
                                                       onclick="onDelete(this)" oid="${item.ID_HOADON}">
                                                        <i class="ti-trash text-white"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer">
                            <p>2021 © Admin Dashboard. - Functions Developed By <a
                                    href="https://github.com/hadesdday" target="_blank">Nguyen
                                Van Hieu</a>
                            </p>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </div>
</div>
<!-- Common -->
<%@include file="script.jsp" %>

<%--add product--%>

<script>
    $(document).ready(function () {
        $("#addOrder").click(function () {
            var maHD = $("input[name='maHD']").val();
            var maKH = $("input[name='maKH']").val();
            var ngayMua = $("input[name='ngayMua']").val();
            var coupon = $("input[name='coupon']").val();
            var paymentMethod = $("select[name='paymentMethod'] option:selected").val();
            var totalPrice = $("input[name='totalPrice']").val();
            var status = $("select[name='status'] option:selected").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/order/add",
                method: "POST",
                data: {
                    maHD: maHD,
                    maKH: maKH,
                    ngayMua: ngayMua,
                    coupon: coupon,
                    paymentMethod: paymentMethod,
                    totalPrice: totalPrice,
                    status: status,
                },
                success: function (data, textStatus, xhr) {
                    swal("Thành công", "Thêm hóa đơn mới thành công", "success");
                    var editCls = 'class="btn rounded bg-warning" id="editBtn" onclick="showEditModal()">' + '<i class="ti-pencil"></i></a>';
                    var editElm = "<a href='" + "${pageContext.request.contextPath}/order/edit?maHD=" + maHD + "'" + editCls;

                    var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(' + maHD + ')">' +
                        '<i class="ti-trash text-white"></i></a>';
                    $('#bootstrap-data-table-export').DataTable().row.add(
                        [
                            maHD,
                            maKH,
                            ngayMua,
                            coupon,
                            paymentMethod,
                            totalPrice,
                            status,
                            editElm + "\n" + delElm
                        ]
                    ).draw(false);
                    clearValue();
                    closeModal();
                },
                error: function (data, textStatus, xhr) {
                    if (data.status === 400 || data.status === 404 || data.status === 500)
                        swal("Thất bại", "Thêm hóa đơn mới thất bại do thiếu dữ liệu đầu vào", "error");
                    else if (data.status === 406)
                        swal("Thất bại", "Hóa đơn đã tồn tại", "error");
                }
            })
        })

    })

</script>

<script>
    var tr;

    function onDelete(elm) {
        var oid = $(elm).attr('oid');
        tr = $(elm).parents("tr");
        $("input[name='oidDelete']").val(oid);
        showDeleteModal();
    }

    $(".delAct").first().click(() => {
        onDelete($(".delAct").first());
    });

    $("#confirmDelAct").click(() => {
        var maHD = $("input[name='oidDelete']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/order/delete",
            method: "POST",
            data: {
                maHD: maHD
            },
            success: function (data) {
                swal("Thành công", "Xóa hóa đơn thành công", "success")
                tr.remove();
                $('#bootstrap-data-table-export').DataTable().row(tr).remove().draw();
                clearValue();
                closeModal();
            },
            error: function (data) {
                if (data.status === 500 || data.status === 404)
                    swal("Thất bại", "Hóa đơn không tồn tại", "error")
            }
        })
    })
</script>

<script>
    function getTime(inp) {
        var re = inp;
        if (Number(inp) < 10) {
            re = "0" + inp;
        }
        return re;
    }

    function setEditModalValue(data) {
        $("input[name='editmaHD']").val(data.ID_HOADON);
        $("input[name='editmaKH']").val(data.ID_KHACHHANG);

        const date = new Date(data.NGAYLAPHD);
        const dmy = String(date.getFullYear() + "-" + getTime(date.getMonth() + 1) + "-" + getTime(date.getDate()) + "T" + getTime(date.getHours()) + ":" + getTime(date.getMinutes()));
        $("input[name='editngayMua']").val(dmy);

        $("input[name='editcoupon']").val(data.ID_MAGG);
        $("select[name='editpaymentMethod']").val(data.MAPTTT);
        $("input[name='edittotalPrice']").val(data.TRIGIA);
        $("select[name='editstatus']").val(data.TRANGTHAI);
    }
</script>

<script>
    var editRow;

    function onEdit(element) {
        editRow = $(element).parents("tr").children();
        var oid = $(element).attr('oid');
        $.ajax({
            url: "${pageContext.request.contextPath}/order/update",
            method: "GET",
            data: {
                maHD: oid
            },
            success: function (data) {
                setEditModalValue(data);
                showEditModal();
            },
            error: function (data) {
                swal("Thất bại", "Không tìm thấy hóa đơn", "error");
            }
        })
    }

    <%--$("#editAction").click(() => {--%>
    <%--    var maSP = $("input[name='editMaSP']").val();--%>
    <%--    var tenSP = $("input[name='editTenSP']").val();--%>
    <%--    var loaiSP = $("select[name='editLoaiSP'] option:selected").val();--%>
    <%--    var giaSP = $("input[name='editGiaSP']").val();--%>
    <%--    var kmSP = $("input[name='editKmSP']").val();--%>
    <%--    var hangSP = $("input[name='editHangSP']").val();--%>
    <%--    var slSP = $("input[name='editSlSP']").val();--%>
    <%--    var active = $("select[name='editActive'] option:selected").val();--%>

    <%--    $.ajax({--%>
    <%--        url: "${pageContext.request.contextPath}/product/edit",--%>
    <%--        method: "POST",--%>
    <%--        data: {--%>
    <%--            maSP: maSP,--%>
    <%--            tenSP: tenSP,--%>
    <%--            loaiSP: loaiSP,--%>
    <%--            giaSP: giaSP,--%>
    <%--            kmSP: kmSP,--%>
    <%--            hangSP: hangSP,--%>
    <%--            slSP: slSP,--%>
    <%--            active: active--%>
    <%--        },--%>
    <%--        success: (data) => {--%>
    <%--            swal("Thành công", "Cập nhật sản phẩm thành công", "success");--%>
    <%--            closeModal();--%>
    <%--            clearValue();--%>
    <%--            editRow.eq(1).text(tenSP);--%>
    <%--            editRow.eq(2).text(loaiSP);--%>
    <%--            editRow.eq(3).text(giaSP);--%>
    <%--            editRow.eq(4).text(kmSP);--%>
    <%--            editRow.eq(5).text(hangSP);--%>
    <%--            editRow.eq(6).text(slSP);--%>
    <%--            editRow.eq(7).text(active);--%>
    <%--        },--%>
    <%--        error: (data) => {--%>
    <%--            swal("Thất bại", "Cập nhật sản phẩm thất bại do sai dữ liệu đầu vào", "error");--%>
    <%--        }--%>
    <%--    });--%>
    <%--});--%>

</script>

<script src="assets/js/lib/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/lib/data-table/currency.js"></script>
</body>
</html>