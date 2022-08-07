<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="header.jsp" %>
<title>Quản Lý Loại Sản Phẩm | NLU</title>

<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <h2>Quản lý loại sản phẩm</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">

                <button id="addBtn" type="button" class="btn btn-primary">Thêm loại sản phẩm</button>

                <div id="addModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Thêm loại sản phẩm</h2>
                        </div>
                        <div class="custom-modal-body">
                            <label>Mã loại sản phẩm</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="maLoaiSP">
                            </div>

                            <label>Tên loại sản phẩm</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="tenLoai">
                            </div>
                        </div>
                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="submit" class="btn btn-primary" id="addAction">Lưu</button>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModal"
                     aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Sửa thông tin loại sản phẩm</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true" style="font-size:28px;">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="editmaLoaiSP" disabled>
                                </div>

                                <label>Tên loại sản phẩm</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="edittenLoai">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                                <button type="button" class="btn btn-primary" id="editAction">Lưu</button>
                            </div>
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
                            <input type="text" name="cidDelete" hidden>
                            <h6>Bạn có chắc chắn muốn xóa dòng này ?</h6>
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
                                    <table id="product__type--table"
                                           class="table table-striped table-bordered" width="100%">
                                        <thead>
                                        <tr>
                                            <th width="30%">Mã loại sản phẩm</th>
                                            <th width="30%">Tên loại sản phẩm</th>
                                            <th width="30%">Ngày tạo</th>
                                            <th width="10%">Hành động</th>
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
<%@include file="script.jsp" %>

<script>
    $(document).ready(function () {
        $("#product__type--table").DataTable({
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
                "url": "${pageContext.request.contextPath}/admin/category",
                "dataSrc": ""
            },
            "columnDefs": [
                {
                    "targets": 0,
                    "width": "30%",
                },
                {
                    "targets": 1,
                    "width": "30%",
                },
                {
                    "targets": 2,
                    "width": "30%",
                },
                {
                    "targets": 3,
                    "searchable": false,
                    "width": "10%",
                    "render": function (data, type, row) {
                        var editElm = '<a class="btn rounded bg-warning mr-2" id="editBtn" ' + "onclick='onEdit(this)' data-toggle='modal' data-target='#editModal'>"
                            + "<i class='ti-pencil text-white'></i></a>";
                        var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(this)" data-toggle="modal" data-target="#deleteModal">' +
                            "<i class='ti-trash text-white'></i></a>";
                        var actions = editElm + delElm;
                        return actions;
                    }
                },
            ],
            "columns": [
                {"data": "ma_loaisp"},
                {"data": "ten_loaisp"},
                {"data": "createdAt"},
            ],
        });
    });

    function reloadTable() {
        $("#product__type--table").DataTable().ajax.reload(null, false);
        setFixedSize();
    }

    function setFixedSize() {
        $("#product__type--table").css("width", "100%");
        $("#product__type--table").DataTable().columns.adjust().draw();
    }
</script>


<script>
    $("#addAction").click(() => {
        var maLoai = $("input[name='maLoaiSP']").val();
        var tenLoai = $("input[name='tenLoai']").val();
        $.ajax({
            url: "${pageContext.request.contextPath}/category/add",
            method: "POST",
            data: {
                maLoai: maLoai,
                tenLoai: tenLoai
            },
            success: function (data, textStatus, xhr) {
                swal("Thành công", "Thêm loại sản phẩm mới thành công", "success");
                reloadTable();
                clearValue();
                closeModal();
            },
            error: function (data, textStatus, xhr) {
                if (data.status === 400 || data.status === 404 || data.status === 500)
                    swal("Thất bại", "Thêm loại sản phẩm mới thất bại do thiếu dữ liệu đầu vào", "error");
                else if (data.status === 406)
                    swal("Thất bại", "Loại sản phẩm đã tồn tại", "error");
            }
        })
    })
</script>

<script>
    function onDelete(elm) {
        var firstColumn = $(elm).parents("tr").children().first();
        var id = firstColumn.text();
        $("input[name='cidDelete']").val(id);
        showDeleteModal();
        setFixedSize();
    }

    $(".delAct").first().click(() => {
        onDelete($(".delAct").first());
        setFixedSize();
    });
    $("#confirmDelAct").click(() => {
        var maLoai = $("input[name='cidDelete']").val();
        $.ajax({
            url: "${pageContext.request.contextPath}/category/delete",
            method: "POST",
            data: {
                maLoai: maLoai
            },
            success: function (data) {
                swal("Thành công", "Xóa loại sản phẩm thành công", "success")
                reloadTable();
                clearValue();
                closeModal();
            },
            error: function (data) {
                if (data.status === 500 || data.status === 404)
                    swal("Thất bại", "Loại sản phẩm không tồn tại", "error")
            }
        })
    })
</script>

<script>
    function setEditModalValue(data) {
        $("input[name='editmaLoaiSP']").val(data.ma_loaisp);
        $("input[name='edittenLoai']").val(data.ten_loaisp);
    }
</script>

<script>
    function onEdit(element) {
        var firstColumn = $(element).parents("tr").children().first();
        var id = firstColumn.text();
        $.ajax({
            url: "${pageContext.request.contextPath}/category/edit",
            method: "GET",
            data: {
                maLoai: id
            },
            success: function (data) {
                setEditModalValue(data);
                showEditModal();
                setFixedSize();
            },
            error: function (data) {
                swal("Thất bại", "Không tìm thấy loại sản phẩm", "error");
            }
        })
    }

    $("#editAction").click(() => {
        var maLoai = $("input[name='editmaLoaiSP']").val();
        var tenLoai = $("input[name='edittenLoai']").val();
        $.ajax({
            url: "${pageContext.request.contextPath}/category/edit",
            method: "POST",
            data: {
                maLoai: maLoai,
                tenLoai: tenLoai,
            },
            success: (data) => {
                swal("Thành công", "Cập nhật loại sản phẩm thành công", "success");
                reloadTable();
                closeModal();
                clearValue();
                setFixedSize();
            },
            error: (data) => {
                swal("Thất bại", "Cập nhật loại sản phẩm thất bại do sai dữ liệu đầu vào", "error");
            }
        });
    });
</script>

<script src="assets/js/lib/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/lib/data-table/currency.js"></script>
</body>

</html>