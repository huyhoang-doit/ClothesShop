<%-- 
    Document   : chart
    Created on : Feb 22, 2024, 4:45:02 PM
    Author     : HuuThanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <!-- or -->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

        <!-- Font-icon css-->
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

        <!-- Customized Bootstrap Stylesheet -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <!-- Template Stylesheet -->
        <link rel="stylesheet" type="text/css" href="view/assets/admin/css/main.css">
    </head>
    <body  onload="time()" class="app sidebar-mini rtl">
        <%@include file="../../common/admin/sidebar.jsp"%>

        <main class="app-content">
            <div class="app-title">
                <ul class="app-breadcrumb breadcrumb side">
                    <li class="breadcrumb-item active"><a href="#"><b>Biểu đồ</b></a></li>
                </ul>
                <div id="clock"></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <div class="tile-body">
                            <div class="content">
                                <div class="row g-4">
                                    <div style="margin-bottom: 30px" class="col-sm-12 col-xl-6">
                                        <div class="bg-light text-center rounded p-4">
                                            <div class="d-flex align-items-center justify-content-between mb-4">
                                                <h6 class="mb-0">Revenue by month</h6>
                                            </div>
                                            <canvas id="worldwide-sales"></canvas>
                                        </div>
                                    </div>
                                    <div style="margin-bottom: 30px" class="col-sm-12 col-xl-6">
                                        <div class="bg-light text-center rounded p-4">
                                            <div class="d-flex align-items-center justify-content-between mb-4">
                                                <h6 class="mb-0">Revenue by year</h6>
                                            </div>
                                            <canvas id="sale-revenue"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="view/assets/admin/js/chart.min.js"></script>
        <script type="text/javascript">
        // Worldwide Sales Chart
        var ctx1 = document.getElementById("worldwide-sales").getContext("2d");
        var myChart1 = new Chart(ctx1, {
            type: "bar",
            data: {
                labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "No", "Dec"],
                datasets: [{
                        label: "Revenue",
                        data: [${MONTH1}, ${MONTH2}, ${MONTH3}, ${MONTH4}, ${MONTH5}, ${MONTH6}, ${MONTH7}, ${MONTH8}, ${MONTH9}, ${MONTH10}
                            ,${MONTH11}, ${MONTH12}],
                        backgroundColor: "rgba(0, 156, 255, .7)"
                    }
                ]
            },
            options: {
                responsive: true
            }
        });
        // Salse & Revenue Chart
        var ctx2 = document.getElementById("sale-revenue").getContext("2d");
        var myChart2 = new Chart(ctx2, {
            type: "line",
            data: {
                labels: ["2018", "2019", "2020", "2021", "2022", "2023", "2024"],
                datasets: [{
                        label: "Revenue",
                        data: [${YEAR18}, ${YEAR19}, ${YEAR20}, ${YEAR21}, ${YEAR22}, ${YEAR23}, ${YEAR24}],
                        backgroundColor: "rgba(0, 156, 255, .5)",
                        fill: true
                    }
                ]
            },
            options: {
                responsive: true
            }
        });
        </script>
    </body>
</html>
