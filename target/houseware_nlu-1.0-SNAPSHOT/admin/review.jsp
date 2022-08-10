<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="header.jsp" %>

<title>Quản lý đánh giá sản phẩm | NLU</title>
<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <h2>Quản lý đánh giá sản phẩm</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">

                <button id="addBtn" type="button" class="btn btn-primary">Thêm đánh giá sản phẩm</button>

                <div id="addModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Thêm đánh giá sản phẩm</h2>
                        </div>
                        <div class="custom-modal-body">
                            <label>Mã sản phẩm</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="productId">
                            </div>

                            <label>Username</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="username">
                            </div>

                            <label>Số sao</label>
                            <div class="input-group mb-3">
                                <input type="number" class="form-control" name="rating" min="0" max="5">
                            </div>

                            <label>Nội dung</label>
                            <div class="input-group mb-3">
                                <div id="add__editor"></div>
                            </div>


                        </div>
                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="submit" class="btn btn-primary" id="addReview">Lưu</button>
                        </div>
                    </div>
                </div>

                <div id="editModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Sửa đánh giá sản phẩm</h2>
                        </div>
                        <div class="custom-modal-body">
                            <input type="hidden" name="maxId">
                            <label>Mã bình luận</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editRid" disabled>
                            </div>

                            <label>Mã sản phẩm</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editproductId" disabled>
                            </div>

                            <label>Username</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editusername" disabled>
                            </div>

                            <label>Số sao</label>
                            <div class="input-group mb-3">
                                <input type="number" class="form-control" name="editrating" min="0" max="5">
                            </div>

                            <label>Nội dung</label>
                            <div class="input-group mb-3">
                                <div id="edit__editor"></div>
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
                            <input type="hidden" name="delRid">
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
                                    <table id="review__table"
                                           class="table table-striped table-bordered" width="100%">
                                        <thead>
                                        <tr>
                                            <th width="15%">Mã bình luận</th>
                                            <th width="15%">Mã sản phẩm</th>
                                            <th width="15%">Username</th>
                                            <th width="15%">Số sao</th>
                                            <th width="15%">Nội dung</th>
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
<script src="https://cdn.ckeditor.com/ckeditor5/35.0.1/classic/ckeditor.js"></script>
<script>
    var addEditor;
    var editEditor;

    $(document).ready(function () {
        $("#review__table").DataTable({
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
                "url": "${pageContext.request.contextPath}/admin/review",
                "dataSrc": ""
            },
            "columnDefs": [
                {
                    "targets": 4,
                    "render": function (data) {
                        return data.slice(0, 100) + "...";
                    }
                },
                {
                    "targets": 5,
                    "searchable": false,
                    "render": function (data, type, row) {
                        var editElm = '<a class="btn rounded bg-warning mr-2" id="editBtn" ' + "onclick='onEdit(this)'  >"
                            + "<i class='ti-pencil text-white'></i></a>";
                        var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(this)"  >' +
                            "<i class='ti-trash text-white'></i></a>";
                        var actions = editElm + delElm;
                        return actions;
                    },
                    "sortable": false
                },
            ],
            "columns": [
                {"data": "id"},
                {"data": "id_sanpham"},
                {"data": "username"},
                {"data": "rating"},
                {"data": "content"},
            ],
        });


        ClassicEditor
            .create(document.querySelector('#add__editor'), {
                // toolbar: [ 'heading', '|', 'bold', 'italic', 'link' ]
                defaultLanguage: 'vi'
            })
            .then(editor => {
                window.editor = editor;
                addEditor = editor;
            })
            .catch(err => {
                console.error(err.stack);
            });

        ClassicEditor
            .create(document.querySelector('#edit__editor'), {
                // toolbar: [ 'heading', '|', 'bold', 'italic', 'link' ]
            })
            .then(editor => {
                window.editor = editor;
                editEditor = editor;
            })
            .catch(err => {
                console.error(err.stack);
            });
    });

    function reloadTable() {
        $("#review__table").DataTable().ajax.reload(null, false);
        setFixedSize();
    }

    function setFixedSize() {
        $("#review__table").css("width", "100%");
        $("#review__table").DataTable().columns.adjust().draw();
    }

    $(document).ready(function () {
        $("#addReview").click(function () {
            var pid = $("input[name='productId']").val();
            var username = $("input[name='username']").val();
            var rating = $("input[name='rating']").val();
            var content = addEditor.getData();

            $.ajax({
                url: "${pageContext.request.contextPath}/review/add",
                method: "POST",
                data: {
                    pid: pid,
                    username: username,
                    rating: rating,
                    content: content
                },
                success: function (data, textStatus, xhr) {
                    swal("Thành công", "Thêm đánh giá mới thành công", "success");
                    reloadTable();
                    clearValue();
                    closeModal();
                    addEditor.setData("");
                },
                error: function (data, textStatus, xhr) {
                    if (data.status === 400 || data.status === 404 || data.status === 500)
                        swal("Thất bại", "Thêm đánh giá mới thất bại do thiếu dữ liệu đầu vào", "error");
                    else if (data.status === 406)
                        swal("Thất bại", "Đánh giá đã tồn tại", "error");
                }
            })
        })
    })

    function onDelete(elm) {
        var firstColumn = $(elm).parents("tr").children().first();
        var delRid = firstColumn.text();
        $("input[name='delRid']").val(delRid);
        showDeleteModal();
    }

    $(".delAct").first().click(() => {
        onDelete($(".delAct").first());
    });

    $("#confirmDelAct").click(() => {
        var rid = $("input[name='delRid']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/review/delete",
            method: "POST",
            data: {
                rid: rid
            },
            success: function (data) {
                swal("Thành công", "Xóa đánh giá thành công", "success")
                reloadTable();
                clearValue();
                closeModal();
            },
            error: function (data) {
                if (data.status === 406)
                    swal("Thất bại", "Xóa đánh giá thất bại do lỗi hệ thống", "error");
                if (data.status === 500 || data.status === 404)
                    swal("Thất bại", "Đánh giá không tồn tại", "error");
                closeModal();
            }
        })
    })

    function setEditModalValue(data) {
        $("input[name='editRid']").val(data.id);
        $("input[name='editproductId']").val(data.id_sanpham);
        $("input[name='editusername']").val(data.username);
        $("input[name='editrating']").val(data.rating);
        editEditor.setData(data.content, function () {
            this.checkDirty();
        });
    }

    function onEdit(element) {
        var firstColumn = $(element).parents("tr").children().first();
        var rid = firstColumn.text();

        $.ajax({
            url: "${pageContext.request.contextPath}/review/edit",
            method: "GET",
            data: {
                rid: rid
            },
            success: function (data) {
                setEditModalValue(data);
                showEditModal();
            },
            error: function (data) {
                swal("Thất bại", "Không tìm thấy đánh giá", "error");
            }
        })
    }

    $("#editAction").click(() => {
        var rid = $("input[name='editRid']").val();
        var rating = $("input[name='editrating']").val();
        var content = editEditor.getData();

        $.ajax({
            url: "${pageContext.request.contextPath}/review/edit",
            method: "POST",
            data: {
                rid: rid,
                rating: rating,
                content: content
            },
            success: (data) => {
                swal("Thành công", "Cập nhật đánh giá thành công", "success");
                reloadTable();
                closeModal();
                clearValue();
                editEditor.setData("");
            },
            error: (data) => {
                swal("Thất bại", "Cập nhật đánh giá thất bại do sai dữ liệu đầu vào", "error");
            }
        });
    });

</script>

<script src="assets/js/lib/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/lib/data-table/currency.js"></script>
</body>

</html>