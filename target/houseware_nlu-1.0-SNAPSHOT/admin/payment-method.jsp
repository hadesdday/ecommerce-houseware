<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="header.jsp" %>
<title>Quản Lý Phương Thức Thanh Toán | NLU</title>

<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <h2>Quản lý phương thức thanh toán</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">

                <button id="addBtn" type="button" class="btn btn-primary">Thêm phương thức thanh toán</button>

                <div id="addModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Thêm phương thức thanh toán</h2>
                        </div>
                        <div class="custom-modal-body">
                            <label>Mã phương thức thanh toán</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="methodId">
                            </div>

                            <label>Tên phương thức thanh toán</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="methodName">
                            </div>

                            <label>Mô tả</label>
                            <div class="input-group mb-3">
                                <textarea name="description" rows="15" cols="95%" class="text__details"></textarea>
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
                                <h5 class="modal-title" id="exampleModalLongTitle">Sửa phương thức thanh toán</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true" style="font-size:28px;">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <label>Mã phương thức thanh toán</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="editmethodId" disabled>
                                </div>

                                <label>Tên phương thức thanh toán</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="editmethodName">
                                </div>

                                <label>Mô tả</label>
                                <div class="input-group mb-3">
                                    <textarea name="editdescription" rows="15" cols="95%"
                                              class="text__details"></textarea>
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
                            <input type="hidden" name="midDelete">
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
                                    <table id="payment__method-table"
                                           class="table table-striped table-bordered" width="100%">
                                        <thead>
                                        <tr>
                                            <th width="20%">Mã phương thức thanh toán</th>
                                            <th width="20%">Tên phương thức thanh toán</th>
                                            <th width="20%">Mô tả</th>
                                            <th width="20%">Ngày tạo</th>
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
<!-- Common -->
<%@include file="script.jsp" %>

<script>
    $(document).ready(function () {
        $("#payment__method-table").DataTable({
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
                "url": "${pageContext.request.contextPath}/admin/payment-method",
                "dataSrc": ""
            },
            "columnDefs": [
                {
                    "targets": 4,
                    "searchable": false,
                    "render": function (data, type, row) {
                        var editElm = '<a class="btn rounded bg-warning mr-2" id="editBtn" ' + "onclick='onEdit(this)' data-toggle='modal' data-target='#editModal'>"
                            + "<i class='ti-pencil text-white'></i></a>";
                        var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(this)" data-toggle="modal" data-target="#deleteModal">' +
                            "<i class='ti-trash text-white'></i></a>";
                        var actions = editElm + delElm;
                        return actions;
                    },
                    "sortable": false
                },
            ],
            "columns": [
                {"data": "mapttt"},
                {"data": "tenpttt"},
                {"data": "mota"},
                {"data": "createdAt"},
            ],
        });
    });

    function reloadTable() {
        $("#payment__method-table").DataTable().ajax.reload(null, false);
        setFixedSize();
    }

    function setFixedSize() {
        $("#payment__method-table").css("width", "100%");
        $("#payment__method-table").DataTable().columns.adjust().draw();
    }
</script>


<script>
    $("#addAction").click(() => {
        var id = $("input[name='methodId']").val();
        var name = $("input[name='methodName']").val();
        var description = $("textarea[name='description']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/payment-method/add",
            method: "POST",
            data: {
                id: id,
                name: name,
                description: description
            },
            success: function (data, textStatus, xhr) {
                swal("Thành công", "Thêm loại sản phẩm mới thành công", "success");
                reloadTable();
                clearValue();
                closeModal();
            },
            error: function (data, textStatus, xhr) {
                if (data.status === 400 || data.status === 404 || data.status === 500)
                    swal("Thất bại", "Thêm phương thức thanh toán thất bại do thiếu dữ liệu đầu vào", "error");
                else if (data.status === 406)
                    swal("Thất bại", "Phương thức thanh toán đã tồn tại", "error");
            }
        })
    })
</script>

<script>
    var tr;

    function onDelete(elm) {
        var firstColumn = $(elm).parents("tr").children().first();
        var mid = firstColumn.text();
        $("input[name='midDelete']").val(mid);
        showDeleteModal();
    }

    $(".delAct").first().click(() => {
        onDelete($(".delAct").first());
    });

    $("#confirmDelAct").click(() => {
        var id = $("input[name='midDelete']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/payment-method/delete",
            method: "POST",
            data: {
                id: id
            },
            success: function (data) {
                swal("Thành công", "Xóa phương thức thanh toán thành công", "success")
                reloadTable();
                clearValue();
                closeModal();
            },
            error: function (data) {
                if (data.status === 500 || data.status === 404)
                    swal("Thất bại", "Phương thức thanh toán không tồn tại", "error")
            }
        })
    })
</script>

<script>
    function setEditModalValue(data) {
        $("input[name='editmethodId']").val(data.mapttt);
        $("input[name='editmethodName']").val(data.tenpttt);
        $("textarea[name='editdescription']").val(data.mota);
    }
</script>

<script>
    var editRow;

    function onEdit(element) {
        var firstColumn = $(element).parents("tr").children().first();
        var mid = firstColumn.text();
        $.ajax({
            url: "${pageContext.request.contextPath}/payment-method/edit",
            method: "GET",
            data: {
                id: mid
            },
            success: function (data) {
                setEditModalValue(data);
            },
            error: function (data) {
                swal("Thất bại", "Không tìm thấy loại sản phẩm", "error");
            }
        })
    }

    $("#editAction").click(() => {
        var id = $("input[name='editmethodId']").val();
        var name = $("input[name='editmethodName']").val();
        var description = $("textarea[name='editdescription']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/payment-method/edit",
            method: "POST",
            data: {
                id: id,
                name: name,
                description: description
            },
            success: (data) => {
                swal("Thành công", "Cập nhật phương thức thanh toán thành công", "success");
                reloadTable();
                closeModal();
                clearValue();
            },
            error: (data) => {
                swal("Thất bại", "Cập nhật phương thức thanh toán thất bại do sai dữ liệu đầu vào", "error");
            }
        });
    });
</script>

<script src="assets/js/lib/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/lib/data-table/currency.js"></script>
</body>

</html>