<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
                            <label>Mã khách hàng</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="maKH">
                            </div>

                            <label>Mã giảm giá</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="coupon">
                            </div>

                            <label>Phương thức thanh toán</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="paymentMethod">
                                    <option selected hidden disabled value="0">Chọn phương thức thanh toán</option>
                                    <option value="BANK">Chuyển khoản ngân hàng</option>
                                    <option value="COD">Thanh toán khi nhận hàng</option>
                                    <option value="MOMO">Thanh toán qua ví điện tử momo
                                    </option>
                                    <option value="PAYPAL">Thanh toán qua ví điện tử paypal
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
                                    <option value="1">Bị hủy bỏ</option>
                                    <option value="2">Đang chờ xử lý</option>
                                    <option value="3">Hết hạn xử lý</option>
                                    <option value="4">Khách hàng trả lại hàng</option>
                                    <option value="5">Đơn hàng được giao thành công</option>
                                    <option value="6">Khách hàng từ chối nhận hàng</option>
                                    <option value="7">Đang vận chuyển</option>
                                    <option value="8">Đã được xử lý</option>
                                    <option value="9">Đang xử lý</option>
                                </select>
                            </div>
                        </div>

                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="submit" class="btn btn-primary" id="addOrder">Lưu</button>
                        </div>

                    </div>
                </div>


                <div id="editModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Sửa thông tin hóa đơn</h2>
                        </div>
                        <div class="custom-modal-body">
                            <div class="input-group mb-3">
                                <input type="hidden" class="form-control" name="editmaHD">
                            </div>

                            <label>Mã khách hàng</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editmaKH">
                            </div>

                            <label>Mã giảm giá</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editcoupon">
                            </div>

                            <label>Phương thức thanh toán</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="editpaymentMethod">
                                    <option selected hidden disabled value="0">Chọn phương thức thanh toán</option>
                                    <option value="BANK">Chuyển khoản ngân hàng</option>
                                    <option value="COD">Thanh toán khi nhận hàng</option>
                                    <option value="MOMO">Thanh toán qua ví điện tử momo
                                    </option>
                                    <option value="PAYPAL">Thanh toán qua ví điện tử paypal
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
                                    <option value="1">Bị hủy bỏ</option>
                                    <option value="2">Đang chờ xử lý</option>
                                    <option value="3">Hết hạn xử lý</option>
                                    <option value="4">Khách hàng trả lại hàng</option>
                                    <option value="5">Đơn hàng được giao thành công</option>
                                    <option value="6">Khách hàng từ chối nhận hàng</option>
                                    <option value="7">Đang vận chuyển</option>
                                    <option value="8">Đã được xử lý</option>
                                    <option value="9">Đang xử lý</option>
                                </select>
                            </div>
                        </div>

                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="submit" class="btn btn-primary" id="editAction">Lưu</button>
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
                                    <table id="order__table" class="table table-striped table-bordered" width="100%">
                                        <thead>
                                        <tr>
                                            <th>Mã hóa đơn</th>
                                            <th>Mã khách hàng</th>
                                            <th>Mã giảm giá</th>
                                            <th>Phương thức thanh toán</th>
                                            <th>Trị giá</th>
                                            <th>Trạng thái</th>
                                            <th>Ngày lập hóa đơn</th>
                                            <th>Hành động</th>
                                        </tr>
                                        </thead>
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
<script>
    $(document).ready(function () {
        $("#order__table").DataTable({
            "responsive": true,
            "dom": "lBfrtip",
            "lengthMenu": [
                [10, 25, 50, -1],
                [10, 25, 50, "All"],
            ],
            "buttons": ["copy", "csv", "excel", "pdf", "print"],
            "language": {
                "url": "${pageContext.request.contextPath}/admin/assets/js/lib/data-table/vi.json"
            },
            "ajax": {
                "url": "${pageContext.request.contextPath}/admin/order",
                "dataSrc": ""
            },
            "columnDefs": [
                {
                    "targets": 2,
                    "render": function (data) {
                        return (data === "" || data === undefined) ? "" : data;
                    }
                },
                {
                    "targets": 7,
                    "searchable": false,
                    "render": function (data, type, row) {
                        var editElm = '<a class="btn rounded bg-warning mr-2" id="editBtn" ' + "onclick='onEdit(this)'>"
                            + "<i class='ti-pencil text-white'></i></a>";
                        var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(this)">' +
                            "<i class='ti-trash text-white'></i></a>";
                        var actions = editElm + delElm;
                        return actions;
                    }
                },
            ],
            "columns": [
                {"data": "ID_HOADON"},
                {"data": "ID_KHACHHANG"},
                {"data": "ID_MAGG"},
                {"data": "MAPTTT"},
                {"data": "TRIGIA"},
                {"data": "TRANGTHAI"},
                {"data": "createdAt"},
            ],
        });
    });

    function reloadTable() {
        $("#order__table").DataTable().ajax.reload(null, false);
        setFixedSize();
    }

    function setFixedSize() {
        $("#order__table").css("width", "100%");
        $("#order__table").DataTable().columns.adjust().draw();
    }
</script>
<script>
    $(document).ready(function () {
        $("#addOrder").click(function () {
            var maHD = $("input[name='maHD']").val();
            var maKH = $("input[name='maKH']").val();
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
                    coupon: coupon,
                    paymentMethod: paymentMethod,
                    totalPrice: totalPrice,
                    status: status,
                },
                success: function (data, textStatus, xhr) {
                    swal("Thành công", "Thêm hóa đơn mới thành công", "success");
                    reloadTable();
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
    function onDelete(elm) {
        var firstColumn = $(elm).parents("tr").children().first();
        var oid = Number(firstColumn.text());
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
                reloadTable();
                clearValue();
                closeModal();
            },
            error: function (data) {
                if (data.status === 406)
                    swal("Thất bại", "Xóa hóa đơn thất bại do tồn tại chi tiết hóa đơn cùng mã hóa đơn", "error");
                if (data.status === 500 || data.status === 404)
                    swal("Thất bại", "Hóa đơn không tồn tại", "error");
                closeModal();
            }
        })
    })
</script>

<script>
    function setEditModalValue(data) {
        $("input[name='editmaHD']").val(data.ID_HOADON);
        $("input[name='editmaKH']").val(data.ID_KHACHHANG);
        $("input[name='editcoupon']").val(data.ID_MAGG);
        $("select[name='editpaymentMethod']").val(data.MAPTTT);
        $("input[name='edittotalPrice']").val(data.TRIGIA);
        $("select[name='editstatus']").val(data.TRANGTHAI);
    }
</script>

<script>
    function onEdit(elm) {
        var firstColumn = $(elm).parents("tr").children().first();
        var oid = Number(firstColumn.text());
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

    $("#editAction").click(() => {
        var maHD = $("input[name='editmaHD']").val();
        var maKH = $("input[name='editmaKH']").val();
        var coupon = $("input[name='editcoupon']").val();
        var paymentMethod = $("select[name='editpaymentMethod'] option:selected").val();
        var totalPrice = $("input[name='edittotalPrice']").val();
        var status = $("select[name='editstatus'] option:selected").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/order/update",
            method: "POST",
            data: {
                maHD: maHD,
                maKH: maKH,
                coupon: coupon,
                paymentMethod: paymentMethod,
                totalPrice: totalPrice,
                status: status
            },
            success: (data) => {
                swal("Thành công", "Cập nhật hóa đơn thành công", "success");
                reloadTable();
                closeModal();
                clearValue();
            },
            error: (data) => {
                swal("Thất bại", "Cập nhật hóa đơn thất bại do sai dữ liệu đầu vào", "error");
            }
        });
    });

</script>

<script src="assets/js/lib/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/lib/data-table/currency.js"></script>
</body>
</html>