<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="orderList" scope="request" type="java.util.List"/>

<%@include file="header.jsp" %>

<title>Quản lý hóa đơn | NLU</title>
<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <h2>Quản lý hóa đơn</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">

                <button id="addBtn" type="button" class="btn btn-primary">Thêm hóa đơn</button>
                <!--modal them hoa don-->

                <form action="#">
                    <div id="addModal" class="custom-modal">
                        <div class="custom-modal-content">
                            <div class="custom-modal-header">
                                <span class="custom-close">&times;</span>
                                <h2>Thêm hóa đơn</h2>
                            </div>
                            <div class="custom-modal-body">
                                <label>Mã hóa đơn</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="maHD">
                                </div>

                                <label>Mã khách hàng</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="maKH">

                                </div>

                                <label>Đơn giá</label>
                                <div class="input-group mb-3">
                                    <input type="number" class="form-control" name="dongia">
                                </div>

                                <label>Ngày mua</label>
                                <div class="input-group mb-3">
                                    <input type="date" class="form-control" name="ngaymua">
                                </div>

                                <label>Phương thức thanh toán</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="thanhtoan">
                                </div>

                                <label>Mã giảm giá</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="coupon">
                                </div>

                                <label>Trạng thái</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="status">
                                </div>
                            </div>
                            <div class="custom-modal-footer">
                                <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                                <button type="submit" class="btn btn-primary">Lưu</button>
                            </div>

                        </div>
                    </div>
                </form>

                <!-- modal sua thong tin hoa don -->
                <form action="#">
                    <div id="editModal" class="custom-modal">
                        <div class="custom-modal-content">
                            <div class="custom-modal-header">
                                <span class="custom-close">&times;</span>
                                <h2>Sửa thông tin hóa đơn</h2>
                            </div>
                            <div class="custom-modal-body">
                                <label>Mã hóa đơn</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="maHD">
                                </div>

                                <label>Mã khách hàng</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="maKH">

                                </div>

                                <label>Đơn giá</label>
                                <div class="input-group mb-3">
                                    <input type="number" class="form-control" name="dongia">
                                </div>

                                <label>Ngày mua</label>
                                <div class="input-group mb-3">
                                    <input type="date" class="form-control" name="ngaymua">
                                </div>

                                <label>Phương thức thanh toán</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="thanhtoan">
                                </div>

                                <label>Mã giảm giá</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="coupon">
                                </div>

                                <label>Trạng thái</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="status">
                                </div>
                            </div>
                            <div class="custom-modal-footer">
                                <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                                <button type="submit" class="btn btn-primary">Lưu</button>
                            </div>
                        </div>
                    </div>
                </form>

                <form action="#">
                    <div id="confirmDelete" class="custom-modal">
                        <div class="custom-modal-content">
                            <div class="custom-modal-header">
                                <span class="custom-close">&times;</span>
                                <h2>Xác nhận</h2>
                            </div>
                            <div class="custom-modal-body">
                                <h6>Bạn có chắc chắn muốn xóa hóa đơn này ?</h6>
                            </div>
                            <div class="custom-modal-footer">
                                <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                                <button type="submit" class="btn btn-primary">Đồng ý</button>
                            </div>
                        </div>
                    </div>
                </form>

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
                                            <th>Mã hóa đơn</th>
                                            <th>Mã khách hàng</th>
                                            <th>Ngày lập hóa đơn</th>
                                            <th>Mã giảm giá</th>
                                            <th>Phương thức thanh toán</th>
                                            <th>Trị giá</th>
                                            <th>Trạng thái</th>
                                            <th>Hành động</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${orderList}" var="item">
                                            <tr>
                                                <td>${item. ID_HOADON} </td>
                                                <td>${item.ID_KHACHHANG}</td>
                                                <td>${item.NGAYLAPHD}</td>
                                                <td>${item.ID_MAGG}</td>
                                                <td>${item.MAPTTTT}</td>
                                                <td>${item.TRIGIA}</td>
                                                <td>${item.TRANGTHAI}</td>
                                                <td>
                                                    <a href="#" class="btn rounded bg-warning" id="editBtn"
                                                       onclick="showEditModal()">
                                                        <i class="ti-pencil"></i>
                                                    </a>
                                                    <a href="#" class="btn rounded bg-danger" id="deleteAction"
                                                       onclick="showDeleteModal()">
                                                        <i class="ti-trash"></i>
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
<script src="assets/js/lib/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/lib/data-table/currency.js"></script>
</body>
</html>