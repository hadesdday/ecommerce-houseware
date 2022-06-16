<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="saleList" scope="request" type="java.util.List"/>
<%@include file="header.jsp" %>
<title>Quản lý khuyến mãi | NLU</title>
<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <h2>Quản lý khuyến mãi</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">

                <button id="addBtn" type="button" class="btn btn-primary">Thêm khuyến mãi</button>

                <div id="addModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Thêm khuyến mãi</h2>
                        </div>
                        <div class="custom-modal-body">
                            <label>Mã khuyến mãi</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="maKM">
                            </div>

                            <label>Rate ( tỉ lệ )</label>
                            <div class="input-group mb-3">
                                <input type="number" class="form-control" name="rate" min="0" max="100">
                            </div>

                            <label>Active</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="active">
                                    <option selected hidden disabled value="0">Chọn trạng thái</option>
                                    <option value="1">Hoạt động</option>
                                    <option value="2">Không hoạt động</option>
                                </select>
                            </div>
                        </div>
                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="submit" class="btn btn-primary" id="add-sale">Lưu</button>
                        </div>
                    </div>
                </div>

                <!-- modal sua thong tin hoa don -->
                <div id="editModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Sửa thông tin khuyến mãi</h2>
                        </div>
                        <div class="custom-modal-body">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editmaKM" hidden>
                            </div>

                            <label>Rate ( tỉ lệ )</label>
                            <div class="input-group mb-3">
                                <input type="number" class="form-control" name="editrate" min="0" max="100">
                            </div>

                            <label>Active</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="editactive">
                                    <option selected hidden disabled value="0">Chọn trạng thái</option>
                                    <option value="1">Hoạt động</option>
                                    <option value="2">Không họat động</option>
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
                            <input type="hidden" name="sidDelete">
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
                                            <th>Mã khuyến mãi</th>
                                            <th>Rating</th>
                                            <th>Trạng thái</th>
                                            <th>Hành động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${saleList}" var="item">
                                            <tr>
                                                <th>${item.id_km}</th>
                                                <th>${item.rate * 100} %</th>
                                                <th>${item.active == 1 ? "Hoạt động" : "Không hoạt động"}</th>
                                                <td>
                                                    <a class="btn rounded bg-warning" id="editBtn"
                                                       onclick="onEdit(this)" sid="${item.id_km}">
                                                        <i class="ti-pencil text-white"></i>
                                                    </a>
                                                    <a class="btn rounded bg-danger delAct" id="deleteAction"
                                                       onclick="onDelete(this)" sid="${item.id_km}">
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
    $(document).ready(function () {
        $("#add-sale").click(function () {
            var maKM = $("input[name='maKM']").val();
            var rate = Number($("input[name='rate']").val());
            var active = Number($("select[name='active'] option:selected").val());
            var isActive = active === 1 ? "Hoạt động" : "Không hoạt động";
            $.ajax({
                url: "${pageContext.request.contextPath}/sale/add",
                method: "POST",
                data: {
                    id: maKM,
                    rate: rate / 100,
                    active: active
                },
                success: function (data, textStatus, xhr) {
                    swal("Thành công", "Thêm mã khuyến mãi thành công", "success");
                    var editElm = '<a class="btn rounded bg-warning" id="editBtn" ' + "onclick='onEdit(this)' sid='" + maKM + "'>"
                        + "<i class='ti-pencil text-white'></i></a>";
                    var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(this)" sid="' + maKM + '">' +
                        "<i class='ti-trash text-white'></i></a>";
                    $('#bootstrap-data-table-export').DataTable().row.add(
                        [
                            maKM,
                            rate + " %",
                            isActive,
                            editElm + "\n" + delElm
                        ]
                    ).draw(false);
                    clearValue();
                    closeModal();
                },
                error: function (data, textStatus, xhr) {
                    if (data.status === 400 || data.status === 404 || data.status === 500)
                        swal("Thất bại", "Thêm mã khuyến mãi thất bại do thiếu dữ liệu đầu vào", "error");
                    else if (data.status === 406)
                        swal("Thất bại", "Khuyến mãi đã tồn tại", "error");
                }
            })
        })
    })
</script>

<script>
    var tr;

    function onDelete(elm) {
        var sid = $(elm).attr('sid');
        tr = $(elm).parents("tr");
        $("input[name='sidDelete']").val(sid);
        showDeleteModal();
    }

    $(".delAct").first().click(() => {
        onDelete($(".delAct").first());
    });

    $("#confirmDelAct").click(() => {
        var maKM = $("input[name='sidDelete']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/sale/delete",
            method: "POST",
            data: {
                id: maKM
            },
            success: function (data) {
                swal("Thành công", "Xóa mã khuyến mãi thành công", "success")
                tr.remove();
                $('#bootstrap-data-table-export').DataTable().row(tr).remove().draw();
                clearValue();
                closeModal();
            },
            error: function (data) {
                if (data.status === 500 || data.status === 404)
                    swal("Thất bại", "Mã khuyến mãi không tồn tại", "error")
            }
        })
    })
</script>

<script>
    function setEditModalValue(data) {
        $("input[name='editmaKM']").val(data.id_km);
        $("input[name='editrate']").val(Number(data.rate) * 100);
        $("select[name='editactive']").val(data.active);
    }
</script>
<script>
    var editRow;

    function onEdit(element) {
        editRow = $(element).parents("tr").children();
        var sid = $(element).attr('sid');
        $.ajax({
            url: "${pageContext.request.contextPath}/sale/edit",
            method: "GET",
            data: {
                id: sid
            },
            success: function (data) {
                setEditModalValue(data);
                showEditModal();
            },
            error: function (data) {
                swal("Thất bại", "Không tìm thấy mã khuyến mãi", "error");
            }
        })
    }

    $("#editAction").click(() => {
        var maKM = $("input[name='editmaKM']").val();
        var rate = Number($("input[name='editrate']").val());
        var active = Number($("select[name='editactive'] option:selected").val());
        var isActive = active === 1 ? "Hoạt động" : "Không hoạt động";

        $.ajax({
            url: "${pageContext.request.contextPath}/sale/edit",
            method: "POST",
            data: {
                id: maKM,
                rate: rate / 100,
                active: active
            },
            success: (data) => {
                swal("Thành công", "Cập nhật thông tin mã khuyến mãi thành công", "success");
                closeModal();
                clearValue();
                editRow.eq(1).text(rate + " %");
                editRow.eq(2).text(isActive);
            },
            error: (data) => {
                swal("Thất bại", "Cập nhật thông tin mã khuyến mãi thất bại do sai dữ liệu đầu vào", "error");
            }
        });
    });
</script>

<script src="assets/js/lib/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/lib/data-table/currency.js"></script>
</body>
</html>