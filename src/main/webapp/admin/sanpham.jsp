<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@include file="header.jsp" %>

<title>Quản Lý Sản Phẩm | NLU</title>

<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <h2>Quản lý sản phẩm</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">

                <button id="addBtn" type="button" class="btn btn-primary">Thêm sản phẩm</button>
                <!--modal them san pham-->
                <div id="addModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Thêm sản phẩm</h2>
                        </div>
                        <div class="custom-modal-body">
                            <label>Mã sản phẩm</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="maSP">
                            </div>

                            <label>Tên sản phẩm</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="tenSP">
                            </div>

                            <label>Loại sản phẩm</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="loaiSP">
                                    <option selected hidden disabled value="0">Chọn loại sản phẩm</option>
                                </select>
                            </div>

                            <label>Giá</label>
                            <div class="input-group mb-3">
                                <input type="number" class="form-control" name="giaSP" min="0">
                            </div>

                            <label>Khuyến mãi</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="kmSP">
                            </div>

                            <label>Thương hiệu</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="hangSP">
                            </div>

                            <label>Thông tin sản phẩm</label>
                            <div class="input group mb-3">
                                <textarea name="ctSP" rows="15" cols="95%" class="text__details"></textarea>
                            </div>

                            <label>Số lượng tồn kho</label>
                            <div class="input-group mb-3">
                                <input type="number" class="form-control" name="slSP" min="0">
                            </div>

                            <label>Active</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="active">
                                    <option selected hidden disabled value="0">Chọn trạng thái cho sản phẩm</option>
                                    <option value="1">Còn Hàng</option>
                                    <option value="2">Hết Hàng</option>
                                </select>
                            </div>
                        </div>
                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="button" class="btn btn-primary" id="add-product">Lưu</button>
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
                                <input type="hidden" class="form-control" name="editMaSP" disabled>
                            </div>

                            <label>Tên sản phẩm</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editTenSP">
                            </div>

                            <label>Loại sản phẩm</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="editLoaiSP">
                                    <option selected hidden disabled value="0">Chọn loại sản phẩm</option>
                                </select>
                            </div>

                            <label>Giá</label>
                            <div class="input-group mb-3">
                                <input type="number" class="form-control" name="editGiaSP" min="0">
                            </div>

                            <label>Khuyến mãi</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editKmSP">
                            </div>

                            <label>Thương hiệu</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="editHangSP">
                            </div>

                            <label>Thông tin sản phẩm</label>
                            <div class="input group mb-3">
                                <textarea name="editctSP" rows="15" cols="95%" class="text__details"></textarea>
                            </div>

                            <label>Số lượng tồn kho</label>
                            <div class="input-group mb-3">
                                <input type="number" class="form-control" name="editSlSP" min="0">
                            </div>

                            <label>Active</label>
                            <div class="input-group mb-3">
                                <select class="custom-select" name="editActive">
                                    <option selected hidden disabled value="0">Chọn trạng thái cho sản phẩm</option>
                                    <option value="1">Còn Hàng</option>
                                    <option value="2">Hết Hàng</option>
                                </select>
                            </div>
                        </div>
                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="button" class="btn btn-primary" id="editAction">Lưu</button>
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
                            <h6>Bạn có chắc chắn muốn xóa sản phẩm này ?</h6>
                            <input type="hidden" name="pidDelete">
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
                        <div class="card" style="margin-right: -15px;">
                            <div class="bootstrap-data-table-panel">
                                <div class="table-responsive">
                                    <table id="products__table"
                                           class="table table-striped table-bordered" width="100%">
                                        <thead>
                                        <tr>
                                            <th>Mã sản phẩm</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Mã loại sản phẩm</th>
                                            <th>Giá</th>
                                            <th>Khuyến mãi</th>
                                            <th>Thương hiệu</th>
                                            <th>Số lượng</th>
                                            <th>Active</th>
                                            <th>Mô tả</th>
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
<%--add product--%>
<script>
    $(document).ready(function () {
        $("#products__table").DataTable({
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
                "url": "${pageContext.request.contextPath}/admin/product",
                "dataSrc": ""
            },
            "columnDefs": [
                {
                    "targets": 4,
                    "render": function (data) {
                        return (data === undefined || data === "") ? "" : data;
                    }
                },
                {
                    "targets": 9,
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
                {"data": "id_sanpham"},
                {"data": "ten_sp"},
                {"data": "ma_loaisp"},
                {"data": "gia"},
                {"data": "id_km"},
                {"data": "thuonghieu"},
                {"data": "soluongton"},
                {"data": "active"},
                {"data": "mota"},
            ],
        });
    });

    $.ajax({
        url: "${pageContext.request.contextPath}/admin/category",
        method: "get",
        success: function (data, textStatus, xhr) {
            var lastEdit = $("select[name='editLoaiSP'] option").last();
            var lastAdd = $("select[name='loaiSP'] option").last();
            data.map((x) => {
                lastEdit.after("<option value='" + x["ma_loaisp"] + "'>" + x["ten_loaisp"] + "</option>");
            });
            data.map((x) => {
                lastAdd.after("<option value='" + x["ma_loaisp"] + "'>" + x["ten_loaisp"] + "</option>");
            });
        },
        error: function (data, textStatus, xhr) {
            console.log("error while fetch product category");
            console.log(textStatus);
        }
    })

    function reloadTable() {
        $("#products__table").DataTable().ajax.reload(null, false);
        setFixedSize();
    }

    function setFixedSize() {
        $("#products__table").css("width", "100%");
        $("#products__table").DataTable().columns.adjust().draw();
    }
</script>
<script>
    $(document).ready(function () {
        $("#add-product").click(function () {
            var maSP = $("input[name='maSP']").val();
            var tenSP = $("input[name='tenSP']").val();
            var loaiSP = $("select[name='loaiSP'] option:selected").val()
            var giaSP = $("input[name='giaSP']").val();
            var kmSP = $("input[name='kmSP']").val();
            var hangSP = $("input[name='hangSP']").val();
            var slSP = $("input[name='slSP']").val();
            var active = $("select[name='active'] option:selected").val()
            var ctSP = $("textarea[name='ctSP']").val();
            $.ajax({
                url: "${pageContext.request.contextPath}/product/add",
                method: "POST",
                data: {
                    maSP: maSP,
                    tenSP: tenSP,
                    loaiSP: loaiSP,
                    giaSP: giaSP,
                    kmSP: kmSP,
                    hangSP: hangSP,
                    slSP: slSP,
                    active: active,
                    ctSP: ctSP
                },
                success: function (data, textStatus, xhr) {
                    swal("Thành công", "Thêm sản phẩm mới thành công", "success");
                    reloadTable();
                    clearValue();
                    closeModal();
                },
                error: function (data, textStatus, xhr) {
                    if (data.status === 400 || data.status === 404 || data.status === 500)
                        swal("Thất bại", "Thêm sản phẩm mới thất bại do thiếu dữ liệu đầu vào", "error");
                    else if (data.status === 406)
                        swal("Thất bại", "Sản phẩm đã tồn tại", "error");
                }
            })
        })
    })
</script>
<%--end add product--%>
<script>
    function onDelete(elm) {
        var firstColumn = $(elm).parents("tr").children().first();
        var pid = firstColumn.text();
        $("input[name='pidDelete']").val(pid);
        showDeleteModal();
    }

    $(".delAct").first().click(() => {
        onDelete($(".delAct").first());
    });

    $("#confirmDelAct").click(() => {
        var maSP = $("input[name='pidDelete']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/product/delete",
            method: "POST",
            data: {
                maSP: maSP
            },
            success: function (data) {
                swal("Thành công", "Xóa sản phẩm thành công", "success")
                reloadTable();
                clearValue();
                closeModal();
            },
            error: function (data) {
                if (data.status === 500 || data.status === 404)
                    swal("Thất bại", "Sản phẩm không tồn tại", "error")
            }
        })
    })
</script>
<%--end delete product--%>

<script>
    function setEditModalValue(data) {
        $("input[name='editMaSP']").val(data.id_sanpham);
        $("input[name='editTenSP']").val(data.ten_sp);
        $("select[name='editLoaiSP']").val(data.ma_loaisp);
        $("input[name='editGiaSP']").val(data.gia);
        $("input[name='editKmSP']").val(data.id_km);
        $("input[name='editHangSP']").val(data.thuonghieu);
        $("input[name='editSlSP']").val(data.soluongton);
        $("select[name='editActive']").val(data.active);
        $("textarea[name='editctSP']").val(data.mota);
    }
</script>
<%--edit product--%>
<script>
    function onEdit(element) {
        var firstColumn = $(element).parents("tr").children().first();
        var pid = firstColumn.text();
        $.ajax({
            url: "${pageContext.request.contextPath}/product/update",
            method: "GET",
            data: {
                maSP: pid
            },
            success: function (data) {
                setEditModalValue(data);
                showEditModal();
            },
            error: function (data) {
                swal("Thất bại", "Không tìm thấy sản phẩm", "error");
            }
        })
    }

    $("#editAction").click(() => {
        var maSP = $("input[name='editMaSP']").val();
        var tenSP = $("input[name='editTenSP']").val();
        var loaiSP = $("select[name='editLoaiSP'] option:selected").val();
        var giaSP = $("input[name='editGiaSP']").val();
        var kmSP = $("input[name='editKmSP']").val();
        var hangSP = $("input[name='editHangSP']").val();
        var slSP = $("input[name='editSlSP']").val();
        var active = $("select[name='editActive'] option:selected").val();
        var ctSP = $("textarea[name='editctSP']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/product/update",
            method: "POST",
            data: {
                maSP: maSP,
                tenSP: tenSP,
                loaiSP: loaiSP,
                giaSP: giaSP,
                kmSP: kmSP,
                hangSP: hangSP,
                slSP: slSP,
                active: active,
                ctSP: ctSP
            },
            success: (data) => {
                swal("Thành công", "Cập nhật sản phẩm thành công", "success");
                reloadTable();
                closeModal();
                clearValue();
            },
            error: (data) => {
                swal("Thất bại", "Cập nhật sản phẩm thất bại do sai dữ liệu đầu vào", "error");
            }
        });
    });
</script>

<%--end edit product--%>
<script src="assets/js/lib/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/lib/data-table/currency.js"></script>
</body>
</html>