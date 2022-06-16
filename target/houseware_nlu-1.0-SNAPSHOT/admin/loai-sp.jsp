<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="categoryList" scope="request" type="java.util.List"/>

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

                <div id="editModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Sửa thông tin sản phẩm</h2>
                        </div>
                        <div class="custom-modal-body">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editmaLoaiSP" hidden>
                            </div>

                            <label>Tên loại sản phẩm</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="edittenLoai">
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
                                    <table id="bootstrap-data-table-export"
                                           class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>Mã loại sản phẩm</th>
                                            <th>Tên loại sản phẩm</th>
                                            <th>Ngày tạo</th>
                                            <th>Hành động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${categoryList}" var="item">
                                            <tr>
                                                <td>${item.ma_loaisp}</td>
                                                <td>${item.ten_loaisp}</td>
                                                <td>${item.createdAt}</td>
                                                <td>
                                                    <a class="btn rounded bg-warning" id="editBtn"
                                                       onclick="onEdit(this)" cid="${item.ma_loaisp}">
                                                        <i class="ti-pencil text-white"></i>
                                                    </a>
                                                    <a class="btn rounded bg-danger delAct" id="deleteAction"
                                                       onclick="onDelete(this)" cid="${item.ma_loaisp}">
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
<%@include file="script.jsp" %>

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
                var today = new Date();
                var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
                var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
                var dateTime = date + ' ' + time;

                swal("Thành công", "Thêm loại sản phẩm mới thành công", "success");
                var editElm = '<a class="btn rounded bg-warning" id="editBtn" ' + "onclick='onEdit(this)' cid='" + maLoai + "'>"
                    + "<i class='ti-pencil text-white'></i></a>";
                var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(this)" cid="' + maLoai + '">' +
                    "<i class='ti-trash text-white'></i></a>";
                $('#bootstrap-data-table-export').DataTable().row.add(
                    [
                        maLoai,
                        tenLoai,
                        dateTime,
                        editElm + "\n" + delElm
                    ]
                ).draw(false);
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
    var tr;

    function onDelete(elm) {
        var cid = $(elm).attr('cid');
        tr = $(elm).parents("tr");
        $("input[name='cidDelete']").val(cid);
        showDeleteModal();
    }

    $(".delAct").first().click(() => {
        onDelete($(".delAct").first());
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
                tr.remove();
                $('#bootstrap-data-table-export').DataTable().row(tr).remove().draw();
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
    var editRow;

    function onEdit(element) {
        editRow = $(element).parents("tr").children();
        var cid = $(element).attr('cid');
        $.ajax({
            url: "${pageContext.request.contextPath}/category/edit",
            method: "GET",
            data: {
                maLoai: cid
            },
            success: function (data) {
                setEditModalValue(data);
                showEditModal();
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
                closeModal();
                clearValue();
                editRow.eq(1).text(tenLoai);
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