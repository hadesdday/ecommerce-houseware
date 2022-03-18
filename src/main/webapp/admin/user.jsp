<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

                            <label>Mật khẩu</label>
                            <div class="input-group mb-3">
                                <input type="password" class="form-control" name="password">
                            </div>

                            <label>Họ tên</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="fullname">
                            </div>

                            <label>Email</label>
                            <div class="input-group mb-3">
                                <input type="email" class="form-control" name="email">
                            </div>

                            <label>Số điện thoại</label>
                            <div class="input-group mb-3">
                                <input type="tel" class="form-control" name="phone">
                            </div>

                            <label>Địa chỉ</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="address">
                            </div>

                            <label>Role</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="role">
                                    <option value="admin">admin</option>
                                    <option value="user">user</option>
                                </select>
                            </div>
                        </div>
                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="button" class="btn btn-primary" id="addUser">Lưu</button>
                        </div>
                    </div>
                </div>

                <!-- modal sua thong tin hoa don -->
                    <div id="editModal" class="custom-modal">
                        <div class="custom-modal-content">
                            <div class="custom-modal-header">
                                <span class="custom-close">&times;</span>
                                <h2>Sửa thông tin người dùng</h2>
                            </div>
                            <div class="custom-modal-body">
                                <input type="hidden" class="form-control" name="editusername">

                                <label>Họ tên</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="editfullname">
                                </div>

                                <label>Email</label>
                                <div class="input-group mb-3">
                                    <input type="email" class="form-control" name="editemail">
                                </div>

                                <label>Số điện thoại</label>
                                <div class="input-group mb-3">
                                    <input type="tel" class="form-control" name="editphone">
                                </div>

                                <label>Địa chỉ</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="editaddress">
                                </div>

                                <label>Role</label>
                                <div class="input-group mb-3">
                                    <select class="custom-select" name="editrole">
                                        <option value="admin">admin</option>
                                        <option value="user">user</option>
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
                                    <table id="bootstrap-data-table-export"
                                           class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>
                                                Username
                                            </th>
                                            <th>
                                                Họ tên
                                            </th>
                                            <th>
                                                Email
                                            </th>
                                            <th>
                                                Số điện thoại
                                            </th>
                                            <th>
                                                Địa chỉ
                                            </th>
                                            <th>
                                                Role
                                            </th>
                                            <th>Hành động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <jsp:useBean id="users" scope="request" type="java.util.List"/>
                                        <c:forEach items="${users}" var="item">
                                            <tr>
                                                <td>
                                                        ${item.username}
                                                </td>
                                                <td>
                                                        ${item.fullname}
                                                </td>
                                                <td>
                                                        ${item.email}
                                                </td>
                                                <td>
                                                        ${item.phone}
                                                </td>
                                                <td>
                                                        ${item.address}
                                                </td>
                                                <td>
                                                        ${item.role}
                                                </td>
                                                <td>
                                                    <a class="btn rounded bg-warning" id="editBtn"
                                                       onclick="onEdit(this)" uid="${item.username}">
                                                        <i class="ti-pencil text-white"></i>
                                                    </a>
                                                    <a class="btn rounded bg-danger delAct" id="deleteAction"
                                                       onclick="onDelete(this)" uid="${item.username}">
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
<%@include file="footer.jsp" %>

<script>
    $(document).ready(function () {
        $("#addUser").click(function () {
            var username = $("input[name='username']").val();
            var password = $("input[name='password']").val();
            var fullname = $("input[name='fullname']").val();
            var email = $("input[name='email']").val();
            var phone = $("input[name='phone']").val();
            var address = $("input[name='address']").val();
            var role = $("select[name='role'] option:selected").val();

            $.ajax({
                url: "${pageContext.request.contextPath}/user/add",
                method: "POST",
                data: {
                    username: username,
                    password: password,
                    fullname: fullname,
                    email: email,
                    phone: phone,
                    address: address,
                    role: role
                },
                success: function (data, textStatus, xhr) {
                    swal("Thành công", "Thêm user mới thành công", "success");
                    var editElm = '<a class="btn rounded bg-warning" id="editBtn" ' + "onclick='onEdit(this)' uid='" + username + "'>"
                        + "<i class='ti-pencil text-white'></i></a>";
                    var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(this)" uid="' + username + '">' +
                        "<i class='ti-trash text-white'></i></a>";

                    $('#bootstrap-data-table-export').DataTable().row.add(
                        [
                            username,
                            fullname,
                            email,
                            phone,
                            address,
                            role,
                            editElm + "\n" + delElm
                        ]
                    ).draw(false);
                    clearValue();
                    closeModal();
                },
                error: function (data, textStatus, xhr) {
                    if (data.status === 400 || data.status === 404 || data.status === 500)
                        swal("Thất bại", "Thêm user mới thất bại do sai định dạng dữ liệu đầu vào", "error");
                    else if (data.status === 409)
                        swal("Thất bại", "User đã tồn tại", "error");
                }
            })
        })

    })

</script>

<script>
    var tr;

    function onDelete(elm) {
        var uid = $(elm).attr('uid');
        tr = $(elm).parents("tr");
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
                tr.remove();
                $('#bootstrap-data-table-export').DataTable().row(tr).remove().draw();
                clearValue();
                closeModal();
            },
            error: function (data) {
                if (data.status === 500 || data.status === 404)
                    swal("Thất bại", "User không tồn tại", "error")
            }
        })
    })
</script>

<script>

    var editRow;

    function onEdit(element) {
        editRow = $(element).parents("tr").children();
        var uid = $(element).attr('uid');
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
        var fullname = $("input[name='editfullname']").val();
        var email = $("input[name='editemail']").val();
        var phone = $("input[name='editphone']").val();
        var address = $("input[name='editaddress']").val();
        var role = $("select[name='editrole'] option:selected").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/user/edit",
            method: "POST",
            data: {
                username: username,
                fullname: fullname,
                email: email,
                phone: phone,
                address: address,
                role: role
            },
            success: (data) => {
                swal("Thành công", "Cập nhật user thành công", "success");
                closeModal();
                clearValue();
                editRow.eq(1).text(fullname);
                editRow.eq(2).text(email);
                editRow.eq(3).text(phone);
                editRow.eq(4).text(address);
                editRow.eq(5).text(role);
            },
            error: (data) => {
                swal("Thất bại", "Cập nhật user thất bại do sai dữ liệu đầu vào", "error");
            }
        });
    });

    function setEditModalValue(data) {
        $("input[name='editusername']").val(data.username);
        $("input[name='editfullname']").val(data.fullname);
        $("input[name='editemail']").val(data.email);
        $("input[name='editphone']").val(data.phone);
        $("input[name='editaddress']").val(data.address);
        $("select[name='editrole']").val(data.role);
    }
</script>

<script src="assets/js/lib/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/lib/data-table/currency.js"></script>