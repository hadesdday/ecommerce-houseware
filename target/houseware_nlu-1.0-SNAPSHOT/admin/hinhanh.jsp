<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="header.jsp" %>

<title>Quản lý hình ảnh | NLU</title>
<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <h2>Quản lý hình ảnh</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">

                <button id="addBtn" type="button" class="btn btn-primary">Thêm hình ảnh</button>
                <!--modal them hoa don-->

                <div id="addModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Thêm hình ảnh</h2>
                        </div>
                        <div class="custom-modal-body">
                            <label>Mã ảnh</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="id">
                            </div>

                            <label>Hình ảnh</label>
                            <form action="${pageContext.request.contextPath}/UploadFile" method="post"
                                  enctype="multipart/form-data" id="uploadForm" class="uploadForm">
                                <input type="file" name="fileName" id="fileName">
                                <input type="hidden" name="filePath">
                                <br>
                                <button type="button" id="uploadSubmit">Upload</button>
                            </form>

                            <label>Mã sản phẩm</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="maSP">
                            </div>

                        </div>
                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="button" class="btn btn-primary" id="addImage">Lưu</button>
                        </div>
                    </div>
                </div>

                <!-- modal sua thong tin hoa don -->
                <div id="editModal" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Sửa thông tin hình ảnh</h2>
                        </div>
                        <div class="custom-modal-body">
                            <div class="input-group mb-3">
                                <input type="hidden" class="form-control" name="eid">
                            </div>

                            <label>Mã sản phẩm</label>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" name="eMaSP">
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
                            <input type="hidden" name="iidDelete">
                            <input type="hidden" name="urlDel">
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
                                                Mã ảnh
                                            </th>
                                            <th>
                                                Ảnh
                                            </th>
                                            <th>
                                                Mã sản phẩm
                                            </th>
                                            <th>Hành động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <jsp:useBean id="imageList" scope="request" type="java.util.List"/>
                                        <c:forEach items="${imageList}" var="item">
                                            <tr>
                                                <td>
                                                        ${item.ID_ANH}
                                                </td>
                                                <td>
                                                    <img src="${pageContext.request.contextPath}/image/${item.LINK_ANH}"
                                                         width="50px"
                                                         height="50px"/>
                                                </td>
                                                <td>
                                                        ${item.ID_SANPHAM}
                                                </td>
                                                <td>
                                                    <a class=" btn rounded bg-warning" id="editBtn"
                                                       onclick="onEdit(this)" iid=${item.ID_ANH}>
                                                        <i class="ti-pencil text-white"></i>
                                                    </a>
                                                    <a class="btn rounded bg-danger delAct" id="deleteAction"
                                                       onclick="onDelete(this)" iid=${item.ID_ANH}>
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
    $("#uploadSubmit").click(() => {
        var form = document.getElementById("uploadForm");
        if (document.getElementById("fileName").files.length == 0) {
            toastr.error('Hình ảnh chưa được upload', 'Thất bại')
        } else {
            $.ajax({
                url: "${pageContext.request.contextPath}/UploadFile",
                type: 'POST',
                data: new FormData(form),
                processData: false,
                contentType: false,
                success: function (data) {
                    $("input[name='filePath']").val(data);
                    toastr.success('Upload hình ảnh thành công', 'Thành công')
                },
                error: function (data) {
                    toastr.error('Upload hình ảnh thất bại', 'Thất bại')
                }
            });
        }
    })
</script>
<script>
    $("#addImage").click(() => {
        var id = $("input[name='id']").val();
        var url = $("input[name='filePath']").val();
        var maSP = $("input[name='maSP']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/image/upload",
            type: 'POST',
            data: {
                id: id,
                url: url,
                maSP: maSP
            },
            success: function (data, textStatus, xhr) {
                swal("Thành công", "Thêm hình ảnh mới thành công", "success");
                var editElm = '<a class="btn rounded bg-warning" id="editBtn" ' + "onclick='onEdit(this)' iid='" + id + "'>"
                    + "<i class='ti-pencil text-white'></i></a>";
                var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(this)" iid="' + id + '">' +
                    "<i class='ti-trash text-white'></i></a>";

                const imageElm = '<img src="${pageContext.request.contextPath}/image/' + url + '"width="50px" height="50px"/>';

                $('#bootstrap-data-table-export').DataTable().row.add(
                    [
                        id,
                        imageElm,
                        maSP,
                        editElm + "\n" + delElm
                    ]
                ).draw(false);
                clearValue();
                closeModal();
            },
            error: function (data, textStatus, xhr) {
                if (data.status === 400 || data.status === 404 || data.status === 500)
                    swal("Thất bại", "Thêm hình ảnh mới thất bại do chưa upload ảnh hoặc thiếu dữ liệu đầu vào", "error");
                else if (data.status === 406)
                    swal("Thất bại", "Hình ảnh đã tồn tại", "error");
            }
        })
    });
</script>

<script>
    var tr;

    function onDelete(elm) {
        var iid = $(elm).attr('iid');
        tr = $(elm).parents("tr");
        $("input[name='iidDelete']").val(iid);

        $.ajax({
            url: "${pageContext.request.contextPath}/GetPath",
            method: 'GET',
            data: {
                id: iid
            },
            success: function (data) {
                $("input[name='urlDel']").val(data);
            }
        });
        showDeleteModal();
    }

    $(".delAct").first().click(() => {
        onDelete($(".delAct").first());
    });

    $("#confirmDelAct").click(() => {
        var id = $("input[name='iidDelete']").val();
        var url = $("input[name='urlDel']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/image/delete",
            method: "POST",
            data: {
                id: id,
                url: url
            },
            success: function (data) {
                swal("Thành công", "Xóa hình ảnh thành công", "success")
                tr.remove();
                $('#bootstrap-data-table-export').DataTable().row(tr).remove().draw();
                clearValue();
                closeModal();
            },
            error: function (data) {
                if (data.status === 500 || data.status === 404)
                    swal("Thất bại", "Hình ảnh không tồn tại", "error")
            }
        })
    })
</script>

<script>
    function setEditModalValue(data) {
        $("input[name='eid']").val(data.ID_ANH);
        $("input[name='eMaSP']").val(data.ID_SANPHAM);
    }

    var editRow;

    function onEdit(element) {
        editRow = $(element).parents("tr").children();
        var iid = $(element).attr('iid');
        $.ajax({
            url: "${pageContext.request.contextPath}/image/update",
            method: "GET",
            data: {
                id: iid
            },
            success: function (data) {
                setEditModalValue(data);
                showEditModal();
            },
            error: function (data) {
                swal("Thất bại", "Không tìm thấy hình ảnh", "error");
            }
        })
    }

    $("#editAction").click(() => {
        var id = $("input[name='eid']").val();
        var maSP = $("input[name='eMaSP']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/image/update",
            method: "POST",
            data: {
                id: id,
                maSP: maSP
            },
            success: (data) => {
                swal("Thành công", "Cập nhật thành công", "success");
                closeModal();
                clearValue();
                editRow.eq(2).text(maSP);
            },
            error: (data) => {
                swal("Thất bại", "Cập nhật thất bại", "error");
            }
        });
    });
</script>

<script src="assets/js/lib/toastr/toastr.min.js"></script>
<script src="assets/js/lib/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/lib/data-table/currency.js"></script>