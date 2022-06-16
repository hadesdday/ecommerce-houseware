<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="reviewList" scope="request" type="java.util.List"/>
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
                <!--modal them hoa don-->

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
                                <textarea name="content" rows="15" cols="95%" class="text__details"></textarea>
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
                                <textarea name="editcontent" rows="15" cols="95%" class="text__details"></textarea>
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
                            <input type="hidden" name="delPid">
                            <input type="hidden" name="delRating">
                            <input type="hidden" name="delUname">
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
                                            <th>Mã sản phẩm</th>
                                            <th>Username</th>
                                            <th>Số sao</th>
                                            <th>Nội dung</th>
                                            <th>Hành động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${reviewList}" var="item">
                                            <tr>
                                                <th>${item.id_sanpham}</th>
                                                <th>${item.username}</th>
                                                <th>${item.rating}</th>
                                                <th>${item.content}</th>
                                                <td>
                                                    <a class="btn rounded bg-warning" id="editBtn"
                                                       onclick="onEdit(this)" pid="${item.id_sanpham}"
                                                       rating="${item.rating}" username="${item.username}">
                                                        <i class="ti-pencil text-white"></i>
                                                    </a>
                                                    <a class="btn rounded bg-danger delAct" id="deleteAction"
                                                       onclick="onDelete(this)" pid="${item.id_sanpham}"
                                                       rating="${item.rating}" username="${item.username}">
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
    $(document).ready(function () {
        $("#addReview").click(function () {
            var pid = $("input[name='productId']").val();
            var username = $("input[name='username']").val();
            var rating = $("input[name='rating']").val();
            var content = $("textarea[name='content']").val();
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
                    var editElm = '<a class="btn rounded bg-warning" id="editBtn" ' + "onclick='onEdit(this)' pid='" + pid + "' rating='" + rating + "' username='" + username + "'>"
                        + "<i class='ti-pencil text-white'></i></a>";
                    var delElm = '<a class="btn rounded bg-danger delAct" id="deleteAction" onclick="onDelete(this)" pid="' + pid + '" rating="' + rating + '" username="' + username + '">' +
                        "<i class='ti-trash text-white'></i></a>";

                    $('#bootstrap-data-table-export').DataTable().row.add(
                        [
                            pid,
                            username,
                            rating,
                            content,
                            editElm + "\n" + delElm
                        ]
                    ).draw(false);
                    clearValue();
                    closeModal();
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

</script>

<script>
    var tr;

    function onDelete(elm) {
        var delPid = $(elm).attr('pid');
        var delRating = $(elm).attr('rating');
        var delUname = $(elm).attr('username');
        tr = $(elm).parents("tr");
        $("input[name='delPid']").val(delPid);
        $("input[name='delRating']").val(delRating);
        $("input[name='delUname']").val(delUname);
        showDeleteModal();
    }

    $(".delAct").first().click(() => {
        onDelete($(".delAct").first());
    });

    $("#confirmDelAct").click(() => {
        var pid = $("input[name='delPid']").val();
        var rating = $("input[name='delRating']").val();
        var username = $("input[name='delUname']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/review/delete",
            method: "POST",
            data: {
                pid: pid,
                username: username,
                rating: rating
            },
            success: function (data) {
                swal("Thành công", "Xóa đánh giá thành công", "success")
                tr.remove();
                $('#bootstrap-data-table-export').DataTable().row(tr).remove().draw();
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
</script>


<script>
    function setEditModalValue(data) {
        $("input[name='editproductId']").val(data.id_sanpham);
        $("input[name='editusername']").val(data.username);
        $("input[name='editrating']").val(data.rating);
        $("textarea[name='editcontent']").val(data.content);
    }
</script>

<script>
    var editRow;

    function onEdit(element) {
        editRow = $(element).parents("tr").children();
        var ePid = $(element).attr('pid');
        var eRating = $(element).attr('rating');
        var eUname = $(element).attr('username');

        $.ajax({
            url: "${pageContext.request.contextPath}/review/edit",
            method: "GET",
            data: {
                pid: ePid,
                username: eUname,
                rating: eRating
            },
            success: function (data) {
                console.log(data);
                setEditModalValue(data);
                showEditModal();
            },
            error: function (data) {
                swal("Thất bại", "Không tìm thấy đánh giá", "error");
            }
        })
    }

    $("#editAction").click(() => {
        var pid = $("input[name='editproductId']").val();
        var username = $("input[name='editusername']").val();
        var rating = $("input[name='editrating']").val();
        var content = $("textarea[name='editcontent']").val();

        $.ajax({
            url: "${pageContext.request.contextPath}/review/edit",
            method: "POST",
            data: {
                pid: pid,
                username: username,
                rating: rating,
                content: content
            },
            success: (data) => {
                swal("Thành công", "Cập nhật đánh giá thành công", "success");
                closeModal();
                clearValue();
                editRow.eq(2).text(rating);
                editRow.eq(3).text(content);
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