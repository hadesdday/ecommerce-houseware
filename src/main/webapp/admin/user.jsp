<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="header.jsp" %>
<title>Quản lý người dùng | NLU</title>
<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <h2>Quản lý người dùng</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">

                <button id="addBtn" type="button" class="btn btn-primary">Thêm người dùng</button>
                <!--modal them hoa don-->

                <div id="addModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Thêm người dùng</h2>
                        </div>
                        <div class="custom-modal-body">
                            <label>Username</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="username">
                            </div>

                            <label>Mã khách hàng</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="cid">
                            </div>

                            <label>Mật khẩu</label>
                            <div class="input-group mb-3">
                                <input type="password" class="form-control" name="password">
                            </div>

                            <label>Email</label>
                            <div class="input-group mb-3">
                                <input type="email" class="form-control" name="email">
                            </div>

                            <label>Role</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="role">
                                    <option value="admin">admin</option>
                                    <option value="user">user</option>
                                </select>
                            </div>

                            <label>Trạng thái</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="active">
                                    <option value="0">Bị cấm</option>
                                    <option value="1">Chưa kích hoạt</option>
                                    <option value="2">Đã kích hoạt</option>
                                </select>
                            </div>

                        </div>
                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="button" class="btn btn-primary" id="addUser">Lưu</button>
                        </div>
                    </div>
                </div>


                <div id="editModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Sửa thông tin người dùng</h2>
                        </div>
                        <div class="custom-modal-body">
                            <label>Username</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editusername" disabled>
                            </div>

                            <label>Mã khách hàng</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editcid" disabled>
                            </div>

                            <label>Email</label>
                            <div class="input-group mb-3">
                                <input type="email" class="form-control" name="editemail">
                            </div>

                            <label>Role</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="editrole">
                                    <option value="admin">admin</option>
                                    <option value="user">user</option>
                                </select>
                            </div>

                            <label>Trạng thái</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="editactive">
                                    <option value="0">Bị cấm</option>
                                    <option value="1">Chưa kích hoạt</option>
                                    <option value="2">Đã kích hoạt</option>
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
                            <h6>Bạn có chắc chắn muốn xóa dòng này ?</h6>
                            <input type="hidden" name="uidDelete">
                        </div>
                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="button" class="btn btn-primary" id="confirmDelAct">Đồng ý</button>
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
                                    <table id="user__table"
                                           class="table table-striped table-bordered" width="100%">
                                        <thead>
                                        <tr>
                                            <th>
                                                Username
                                            </th>
                                            <th>
                                                Mã khách hàng
                                            </th>
                                            <th>
                                                Email
                                            </th>
                                            <th>
                                                Role
                                            </th>
                                            <th>
                                                Trạng thái
                                            </th>
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
<%@include file="footer.jsp" %>

<script>
    $(document).ready(function () {
        $("#user__table").DataTable({
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
                "url": "${pageContext.request.contextPath}/admin/user",
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
                    }
                },
            ],
            "columns": [
                {"data": "username"},
                {"data": "id_khachhang"},
                {"data": "email"},
                {"data": "role"},
                {"data": "active"},
            ],
        });
    });

    function reloadTable() {
        $("#user__table").DataTable().ajax.reload(null, false);
        setFixedSize();
    }

    function setFixedSize() {
        $("#user__table").css("width", "100%");
        $("#user__table").DataTable().columns.adjust().draw();
    }
</script>


<script>
    $(document).ready(function () {
        $("#addUser").click(function () {
            var username = $("input[name='username']").val();
            var cid = $("input[name='cid']").val();
            var email = $("input[name='email']").val();
            var role = $("select[name='role'] option:selected").val();
            var active = $("select[name='active'] option:selected").val();
            var password = $("input[name='password']").val();

            $.ajax({
                url: "${pageContext.request.contextPath}/user/add",
                method: "POST",
                data: {
                    username: username,
                    password: password,
                    email: email,
                    role: role,
                    cid: cid,
                    active: active
                },
                success: function (data, textStatus, xhr) {
                    swal("Thành công", "Thêm user mới thành công", "success");
                    reloadTable();
                    clearValue();
                    closeModal();
                },
                error: function (data, textStatus, xhr) {
                    if (data.status === 400 || data.status === 404 || data.status === 500)
                        swal("Thất bại", "Thêm user mới thất bại do sai định dạng dữ liệu đầu vào", "error");
                    else if (data.status === 406)
                        swal("Thất bại", "User đã tồn tại", "error");
                }
            })
        })

    })

</script>

<script>
    function onDelete(elm) {
        var firstColumn = $(elm).parents("tr").children().first();
        var uid = firstColumn.text();
        $("input[name='uidDelete']").val(uid);
        showDeleteModal();
    }

    $(".delAct").first().click(() => {
        onDelete($(".delAct").first());
    });

    $("#confirmDelAct").click(() => {
        var username = $("input[name='uidDelete']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/user/delete",
            method: "POST",
            data: {
                username: username
            },
            success: function (data) {
                swal("Thành công", "Xóa user thành công", "success")
                reloadTable();
                clearValue();
                closeModal();
            },
            error: function (data) {
                swal("Thất bại", "User không tồn tại", "error")
            }
        })
    })
</script>

<script>
    function setEditModalValue(data) {
        $("input[name='editusername']").val(data.username);
        $("input[name='editcid']").val(data.id_khachhang);
        $("input[name='editemail']").val(data.email);
        $("select[name='editrole']").val(data.role);
        $("select[name='editactive']").val(data.active);
    }

    function onEdit(elm) {
        var firstColumn = $(elm).parents("tr").children().first();
        var uid = firstColumn.text();
        $.ajax({
            url: "${pageContext.request.contextPath}/user/edit",
            method: "GET",
            data: {
                username: uid
            },
            success: function (data) {
                setEditModalValue(data);
                showEditModal();
            },
            error: function (data) {
                swal("Thất bại", "User không tồn tại", "error");
            }
        })
    }

    $("#editAction").click(() => {
        var username = $("input[name='editusername']").val();
        var email = $("input[name='editemail']").val();
        var role = $("select[name='editrole'] option:selected").val();
        var active = $("select[name='editactive'] option:selected").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/user/edit",
            method: "POST",
            data: {
                username: username,
                email: email,
                role: role,
                active: active
            },
            success: (data) => {
                swal("Thành công", "Cập nhật user thành công", "success");
                reloadTable();
                closeModal();
                clearValue();
            },
            error: (data) => {
                if (data.status === 409)
                    swal("Thất bại", "Tài khoản không tồn tại", "error");
                else
                    swal("Thất bại", "Cập nhật user thất bại do sai dữ liệu đầu vào", "error");
            }
        });
    });

</script>

<script src="assets/js/lib/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/lib/data-table/currency.js"></script>