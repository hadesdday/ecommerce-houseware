<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="productList" scope="request" type="java.util.List"/>

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
                                    <option value="gia-dung">Gia dụng nhà bếp</option>
                                    <option value="may-xay-vat-ep">Máy xay, vắt, ép</option>
                                    <option value="dung-cu-nha-bep">Dụng cụ nhà bếp</option>
                                    <option value="noi-chien-khong-dau">Nồi chiên không dầu</option>
                                    <option value="noi-com">Nồi cơm</option>
                                    <option value="may-xay-sinh-to">Máy xay sinh tố</option>
                                    <option value="noi-ap-suat">Nồi áp suất</option>
                                    <option value="lo-nuong">Lò nướng</option>
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
                                <textarea name="ctSP" rows="15" cols="95%" class="text__ctsp"></textarea>
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

                <!-- modal sua thong tin san pham -->
                <div id="editModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Sửa thông tin sản phẩm</h2>
                        </div>
                        <div class="custom-modal-body">
                            <%--                            <label>Mã sản phẩm</label>--%>
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
                                    <option value="gia-dung">Gia dụng nhà bếp</option>
                                    <option value="may-xay-vat-ep">Máy xay, vắt, ép</option>
                                    <option value="dung-cu-nha-bep">Dụng cụ nhà bếp</option>
                                    <option value="noi-chien-khong-dau">Nồi chiên không dầu</option>
                                    <option value="noi-com">Nồi cơm</option>
                                    <option value="may-xay-sinh-to">Máy xay sinh tố</option>
                                    <option value="noi-ap-suat">Nồi áp suất</option>
                                    <option value="lo-nuong">Lò nướng</option>
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
                                <textarea name="editctSP" rows="15" cols="95%" class="text__ctsp"></textarea>
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
                        </div>
                        <div class="custom-modal-footer">
                            <input type="hidden" name="pidDelete">
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
                                    <table id="products-table"
                                           class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>Mã sản phẩm</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Loại sản phẩm</th>
                                            <th>Giá</th>
                                            <th>Khuyến mãi</th>
                                            <th>Thương hiệu</th>
                                            <th>Số lượng</th>
                                            <th>Active</th>
                                            <th>Mô tả</th>
                                            <th>Hành động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${productList}" var="item">
                                            <tr>
                                                <td>${item.id_sanpham}</td>
                                                <td>${item.ten_sp}</td>
                                                <td>${item.ma_loaisp}</td>
                                                <td>${item.gia} đ</td>
                                                <td>${item.id_km}</td>
                                                <td>${item.thuonghieu}</td>
                                                <td>${item.soluongton}</td>
                                                <td>${item.active}</td>
                                                <td>${item.mota}</td>
                                                <td>
                                                    <a class="btn rounded bg-warning" id="editBtn"
                                                       onclick="onEdit(this)" pid="${item.id_sanpham}">
                                                        <i class="ti-pencil text-white"></i>
                                                    </a>
                                                    <a class="btn rounded bg-danger delAct" id="deleteAction"
                                                       onclick="onDelete(this)" pid="${item.id_sanpham}">
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
    $("input[name='maSP']").on("input", () => {
        var val = $("input[name='maSP']").val();
        $("input[name='maSP']").attr("value", val);
    });
    $("input[name='tenSP']").on("input", () => {
        var val = $("input[name='tenSP']").val();
        $("input[name='tenSP']").attr("value", val);
    });
    $("input[name='giaSP']").on("input", () => {
        var val = $("input[name='giaSP']").val();
        $("input[name='giaSP']").attr("value", val);
    });
    $("input[name='kmSP']").on("input", () => {
        var val = $("input[name='kmSP']").val();
        $("input[name='kmSP']").attr("value", val);
    });
    $("input[name='hangSP']").on("input", () => {
        var val = $("input[name='hangSP']").val();
        $("input[name='hangSP']").attr("value", val);
    });
    $("input[name='slSP']").on("input", () => {
        var val = $("input[name='slSP']").val();
        $("input[name='slSP']").attr("value", val);
    });
</script>
<%--add product--%>
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
                    var editElm = '<a class="btn rounded bg-warning" id="editBtn" ' + "onclick='onEdit(this)' pid='" + maSP + "'>"
                        + "<i class='ti-pencil text-white'></i></a>";
                    var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(this)" pid="' + maSP + '">' +
                        "<i class='ti-trash text-white'></i></a>";
                    $('#products-table').DataTable().row.add(
                        [
                            maSP,
                            tenSP,
                            loaiSP,
                            giaSP + " đ",
                            kmSP,
                            hangSP,
                            slSP,
                            active,
                            ctSP,
                            editElm + "\n" + delElm
                        ]
                    ).draw(false);
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
    var tr;

    function onDelete(elm) {
        var pid = $(elm).attr('pid');
        tr = $(elm).parents("tr");
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
                tr.remove();
                $('#products-table').DataTable().row(tr).remove().draw();
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
    var editRow;

    function onEdit(element) {
        editRow = $(element).parents("tr").children();
        var pid = $(element).attr('pid');
        $.ajax({
            url: "${pageContext.request.contextPath}/product/edit",
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
            url: "${pageContext.request.contextPath}/product/edit",
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
                closeModal();
                clearValue();
                editRow.eq(1).text(tenSP);
                editRow.eq(2).text(loaiSP);
                editRow.eq(3).text(giaSP +" đ");
                editRow.eq(4).text(kmSP);
                editRow.eq(5).text(hangSP);
                editRow.eq(6).text(slSP);
                editRow.eq(7).text(active);
                editRow.eq(8).text(ctSP);
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