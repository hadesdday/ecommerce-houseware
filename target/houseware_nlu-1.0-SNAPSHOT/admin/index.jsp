<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="header.jsp" %>

<title>Dashboard | NLU</title>

<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <div class="page-header">
                        <div class="page-title">
                            <h1>Xin chào , Admin</h1>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
                <div class="col-lg-4 p-l-0 title-margin-left">
                    <div class="page-header">
                        <div class="page-title">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">Trang
                                    chủ</a></li>
                                <li class="breadcrumb-item active">Tổng quan</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
            </div>
            <!-- /# row -->
            <section id="main-content">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="stat-widget-one">
                                <div class="stat-icon dib"><i class="ti-money color-success border-success"></i>
                                </div>
                                <div class="stat-content dib">
                                    <div class="stat-text">Tổng Doanh thu</div>
                                    <div class="stat-digit" id="sumTurnover">0</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="stat-widget-one">
                                <div class="stat-icon dib"><i class="ti-user color-primary border-primary"></i>
                                </div>
                                <div class="stat-content dib">
                                    <div class="stat-text">Số khách hàng</div>
                                    <div class="stat-digit" id="totalCustomer">0</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="stat-widget-one">
                                <div class="stat-icon dib"><i class="ti-receipt color-pink border-pink"></i>
                                </div>
                                <div class="stat-content dib">
                                    <div class="stat-text">Hóa đơn</div>
                                    <div class="stat-digit" id="totalOrder">0</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Tổng quan cửa hàng</h4>
                                <%--                                <div id="morris-bar-chart"></div>--%>
                                <div>
                                    <canvas id="myChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section>
        </div>
    </div>
</div>

<!-- jquery vendor -->
<script src="assets/js/lib/jquery.min.js"></script>
<!-- nano scroller -->
<script src="assets/js/lib/menubar/sidebar.js"></script>
<!-- sidebar -->

<script src="assets/js/lib/bootstrap.min.js"></script>
<script src="assets/js/scripts.js"></script>


<script src="assets/js/lib/morris-chart/raphael-min.js"></script>
<%--<script src="assets/js/lib/morris-chart/morris.js"></script>--%>
<%--<script src="assets/js/lib/morris-chart/morris-init.js"></script>--%>
<script src="assets/js/lib/bootstrap.min.js"></script>
<script src="assets/js/scripts.js"></script>

<script>
    // var totalTurnover = [];

    $(() => {
        var array = [];

        $.ajax({
            url: "${pageContext.request.contextPath}/admin/stats",
            method: "GET",
            success: function (data, textStatus, xhr) {
                $("#sumTurnover").text(new Intl.NumberFormat("vi-VN").format(data[0]) + " đ");
                $("#totalCustomer").text(data[1]);
                $("#totalOrder").text(data[2]);

                let se = data[3];
                let re = [];
                for (let i = 1; i <= 12; i++) {
                    re.push(se[i]);
                }

                array = [...re];
                drawChart(array);
            },
            error: function (data, textStatus, xhr) {
                console.log("error")
                console.log(data);
            }
        })

        function drawChart(arrayData) {
            const labels = [
                'Tháng 1',
                'Tháng 2',
                'Tháng 3',
                'Tháng 4',
                'Tháng 5',
                'Tháng 6',
                'Tháng 7',
                'Tháng 8',
                'Tháng 9',
                'Tháng 10',
                'Tháng 11',
                'Tháng 12'
            ];

            const data = {
                labels: labels,
                datasets: [{
                    label: 'Doanh thu',
                    backgroundColor: 'rgb(255, 99, 132)',
                    borderColor: 'rgb(255, 99, 132)',
                    data: arrayData,
                }]
            };

            const config = {
                type: 'line',
                data: data,
                options: {}
            };
            const myChart = new Chart(
                document.getElementById('myChart'),
                config
            );
        }
    });
</script>
</body>

</html>
