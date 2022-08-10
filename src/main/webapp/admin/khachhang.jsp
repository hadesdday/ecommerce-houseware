<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="header.jsp" %>
<title>Quản lý khách hàng | NLU</title>
<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <h2>Quản lý thông tin khách hàng</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">

                <button id="addBtn" type="button" class="btn btn-primary">Thêm khách hàng</button>

                <div id="addModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Thêm thông tin khách hàng</h2>
                        </div>
                        <div class="custom-modal-body">
                            <label>Tên khách hàng</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="tenKH">
                            </div>

                            <label>Địa chỉ</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="diachi">
                            </div>

                            <label>Số điện thoại</label>
                            <div class="input-group mb-3">
                                <input type="tel" class="form-control" name="sdt" maxlength="10">
                            </div>

                            <label>Email</label>
                            <div class="input-group mb-3">
                                <input type="email" class="form-control" name="email">
                            </div>
                        </div>
                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="submit" class="btn btn-primary" id="addAction">Lưu</button>
                        </div>
                    </div>
                </div>

                <div id="editModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Sửa thông tin khách hàng</h2>
                        </div>
                        <div class="custom-modal-body">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editmaKH" hidden>
                            </div>

                            <label>Tên khách hàng</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editten">
                            </div>

                            <label>Địa chỉ</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editdiachi">
                            </div>

                            <label>Số điện thoại</label>
                            <div class="input-group mb-3">
                                <input type="tel" class="form-control" name="editsdt" maxlength="10">
                            </div>

                            <label>Email</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editemail">
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
                            <h6>Bạn có chắc chắn muốn xóa dòng này ?</h6>
                            <input type="text" name="cidDelete" hidden>
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
                                    <table id="customer__table"
                                           class="table table-striped table-bordered" width="100%">
                                        <thead>
                                        <tr>
                                            <th width="15%">Mã khách hàng</th>
                                            <th width="15%">Tên khách hàng</th>
                                            <th width="15%">Địa chỉ</th>
                                            <th width="15%">Số điện thoại</th>
                                            <th width="15%">Email</th>
                                            <th width="10%">Hành động</th>
                                        </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
<%@include file="script.jsp" %>

<script>
    $(document).ready(function () {
        $("#customer__table").DataTable({
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
                "url": "${pageContext.request.contextPath}/admin/customer",
                "dataSrc": ""
            },
            "columnDefs": [
                {
                    "targets": 5,
                    "searchable": false,
                    "render": function (data, type, row) {
                        var editElm = '<a class="btn rounded bg-warning mr-2" id="editBtn" ' + "onclick='onEdit(this)'>"
                            + "<i class='ti-pencil text-white'></i></a>";
                        var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(this)">' +
                            "<i class='ti-trash text-white'></i></a>";
                        var actions = editElm + delElm;
                        return actions;
                    },
                    "sortable": false
                },
            ],
            "columns": [
                {"data": "id_khachhang"},
                {"data": "ten_kh"},
                {"data": "diachi"},
                {"data": "sodt"},
                {"data": "email"},
            ],
        });
    });

    function reloadTable() {
        $("#customer__table").DataTable().ajax.reload(null, false);
        setFixedSize();
    }

    function setFixedSize() {
        $("#customer__table").css("width", "100%");
        $("#customer__table").DataTable().columns.adjust().draw();
    }
</script>

<script>
    $("#addAction").click(() => {
        var tenKH = $("input[name='tenKH']").val();
        var diachi = $("input[name='diachi']").val();
        var sdt = $("input[name='sdt']").val();
        var email = $("input[name='email']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/customer/add",
            method: "POST",
            data: {
                tenKH: tenKH,
                diachi: diachi,
                sdt: sdt,
                email: email
            },
            success: function (data, textStatus, xhr) {
                swal("Thành công", "Thêm khách hàng mới thành công", "success");
                reloadTable();
                clearValue();
                closeModal();
            },
            error: function (data, textStatus, xhr) {
                if (data.status === 400 || data.status === 404 || data.status === 500)
                    swal("Thất bại", "Thêm khách hàng mới thất bại do thiếu dữ liệu đầu vào", "error");
                else if (data.status === 406)
                    swal("Thất bại", "Khách hàng đã tồn tại", "error");
            }

        })
    })
</script>

<script>
    function onDelete(elm) {
        var firstColumn = $(elm).parents("tr").children().first();
        var cid = firstColumn.text();
        $("input[name='cidDelete']").val(cid);
        showDeleteModal();
    }

    $(".delAct").first().click(() => {
        onDelete($(".delAct").first());
    });

    $("#confirmDelAct").click(() => {
        var maKH = $("input[name='cidDelete']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/customer/delete",
            method: "POST",
            data: {
                maKH: maKH
            },
            success: function (data) {
                swal("Thành công", "Xóa khách hàng thành công", "success")
                reloadTable();
                closeModal();
            },
            error: function (data) {
                if (data.status === 406)
                    swal("Thất bại", "Xóa khách hàng thất bại", "error");
                if (data.status === 500 || data.status === 404)
                    swal("Thất bại", "Khách hàng không tồn tại", "error");
                closeModal();
            }
        })
    })
</script>

<script>
    function setEditModalValue(data) {
        $("input[name='editmaKH']").val(data.id_khachhang);
        $("input[name='editten']").val(data.ten_kh);
        $("input[name='editdiachi']").val(data.diachi);
        $("input[name='editsdt']").val(data.sodt);
        $("input[name='editemail']").val(data.email);
    }
</script>

<script>
    function onEdit(element) {
        var firstColumn = $(element).parents("tr").children().first();
        var cid = Number(firstColumn.text());
        $.ajax({
            url: "${pageContext.request.contextPath}/customer/update",
            method: "GET",
            data: {
                maKH: cid
            },
            success: function (data) {
                setEditModalValue(data);
                showEditModal();
            },
            error: function (data) {
                swal("Thất bại", "Không tìm thấy khách hàng", "error");
            }
        })
    }

    $("#editAction").click(() => {
        var maKH = $("input[name='editmaKH']").val();
        var tenKH = $("input[name='editten']").val();
        var diachi = $("input[name='editdiachi']").val();
        var sdt = $("input[name='editsdt']").val();
        var email = $("input[name='editemail']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/customer/update",
            method: "POST",
            data: {
                maKH: maKH,
                tenKH: tenKH,
                diachi: diachi,
                sdt: sdt,
                email: email
            },
            success: (data) => {
                swal("Thành công", "Cập nhật khách hàng thành công", "success");
                reloadTable();
                closeModal();
                clearValue();
            },
            error: (data) => {
                swal("Thất bại", "Cập nhật khách hàng thất bại do sai dữ liệu đầu vào", "error");
            }
        });
    });

</script>


<script src="assets/js/lib/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/lib/data-table/currency.js"></script>
</body>

</html>