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

                <form action="#">
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

                                <label>Password</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="password">
                                </div>

                                <label>Email</label>
                                <div class="input-group mb-3">
                                    <input type="email" class="form-control" name="email">
                                </div>

                                <label>Mã khách hàng</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="maKH">
                                </div>

                                <label>Role</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="Role">
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
                                <h2>Sửa thông tin người dùng</h2>
                            </div>
                            <div class="custom-modal-body">
                                <label>Username</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="username">
                                </div>

                                <label>Password</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="password">
                                </div>

                                <label>Email</label>
                                <div class="input-group mb-3">
                                    <input type="email" class="form-control" name="email">
                                </div>

                                <label>Mã khách hàng</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="maKH">
                                </div>

                                <label>Role</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="role">
                                </div>

                                <label>Active</label>
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="active">
                                </div>
                            </div>
                            <div class="custom-modal-footer">
                                <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                                <button type="submit" class="btn btn-primary">Lưu</button>
                            </div>
                        </div>
                    </div>
                </form>

                <div id="confirmDelete" class="custom-modal">
                    <div class="custom-modal-content">
                        <div class="custom-modal-header">
                            <span class="custom-close">&times;</span>
                            <h2>Xác nhận</h2>
                        </div>
                        <div class="custom-modal-body">
                            <h6>Bạn có chắc chắn muốn xóa dòng này ?</h6>
                        </div>
                        <div class="custom-modal-footer">
                            <button type="button" class="btn btn-secondary close-btn">Hủy</button>
                            <button type="submit" class="btn btn-primary">Đồng ý</button>
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
                                            <%--                                            <th>Username</th>--%>
                                            <%--                                            <th>Email</th>--%>
                                            <%--                                            &lt;%&ndash;                                            <th>Mã khách hàng</th>&ndash;%&gt;--%>
                                            <%--                                            <th>Role</th>--%>
                                            <%--                                            <th>Active</th>--%>
                                            <th>
                                                username
                                            </th>
                                            <th>
                                                fullname
                                            </th>
                                            <th>
                                                email
                                            </th>
                                            <th>
                                                phone
                                            </th>
                                            <th>
                                                address
                                            </th>
                                            <th>
                                                token
                                            </th>
                                            <th>
                                                role
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
                                                        ${item.token}
                                                </td>
                                                <td>
                                                        ${item.role}
                                                </td>
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
<%@include file="footer.jsp" %>