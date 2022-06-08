<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="paymentMethodList" scope="request" type="java.util.List"/>

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
                <!--modal them hoa don-->

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
                            <h2>Sửa phương thức thanh toán</h2>
                        </div>
                        <div class="custom-modal-body">
                            <label>Mã phương thức thanh toán</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editmethodId" disabled>
                            </div>

                            <label>Tên phương thức thanh toán</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editmethodName">
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
                                    <table id="bootstrap-data-table-export"
                                           class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>Mã phương thức thanh toán</th>
                                            <th>Tên phương thức thanh toán</th>
                                            <th>Ngày tạo</th>
                                            <th>Hành động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${paymentMethodList}" var="item">
                                            <tr>
                                                <td>${item.mapttt}</td>
                                                <td>${item.tenpttt}</td>
                                                <td>${item.createdAt}</td>
                                                <td>
                                                    <a class="btn rounded bg-warning" id="editBtn"
                                                       onclick="onEdit(this)" mid="${item.mapttt}">
                                                        <i class="ti-pencil text-white"></i>
                                                    </a>
                                                    <a class="btn rounded bg-danger delAct" id="deleteAction"
                                                       onclick="onDelete(this)" mid="${item.mapttt}">
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

<script>
    $("#addAction").click(() => {
        var id = $("input[name='methodId']").val();
        var name = $("input[name='methodName']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/payment-method/add",
            method: "POST",
            data: {
                id: id,
                name: name
            },
            success: function (data, textStatus, xhr) {
                var today = new Date();
                var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
                var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
                var dateTime = date + ' ' + time;

                swal("Thành công", "Thêm loại sản phẩm mới thành công", "success");
                var editElm = '<a class="btn rounded bg-warning" id="editBtn" ' + "onclick='onEdit(this)' mid='" + id + "'>"
                    + "<i class='ti-pencil text-white'></i></a>";
                var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(this)" mid="' + id + '">' +
                    "<i class='ti-trash text-white'></i></a>";
                $('#bootstrap-data-table-export').DataTable().row.add(
                    [
                        id,
                        name,
                        dateTime,
                        editElm + "\n" + delElm
                    ]
                ).draw(false);
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
        var mid = $(elm).attr('mid');
        tr = $(elm).parents("tr");
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
                tr.remove();
                $('#bootstrap-data-table-export').DataTable().row(tr).remove().draw();
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
    }
</script>

<script>
    var editRow;

    function onEdit(element) {
        editRow = $(element).parents("tr").children();
        var mid = $(element).attr('mid');
        $.ajax({
            url: "${pageContext.request.contextPath}/payment-method/edit",
            method: "GET",
            data: {
                id: mid
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
        var id = $("input[name='editmethodId']").val();
        var name = $("input[name='editmethodName']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/payment-method/edit",
            method: "POST",
            data: {
                id: id,
                name: name
            },
            success: (data) => {
                swal("Thành công", "Cập nhật phương thức thanh toán thành công", "success");
                closeModal();
                clearValue();
                editRow.eq(1).text(name);
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