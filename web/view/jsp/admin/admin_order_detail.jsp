<%-- 
    Document   : admin_order_detail
    Created on : Feb 24, 2024, 1:30:11 PM
    Author     : lvhho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Chi tiết đơn hàng | Quản trị Admin</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Main CSS-->
        <link rel="stylesheet" type="text/css" href="view/assets/admin/css/main.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <!-- or -->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

        <!-- Font-icon css-->
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

    </head>

    <body onload="time()" class="app sidebar-mini rtl">
        <%@include file="../../common/admin/sidebar.jsp"%>
        <main class="app-content">
            <div class="app-title">
                <ul class="app-breadcrumb breadcrumb side">
                    <li class="breadcrumb-item active"><a href="#"><b>Chi tiết đơn hàng</b></a></li>
                </ul>
                <div id="clock"></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <div class="tile-body">
                            <div class="row element-button">
                                <div class="col-sm-2">
                                    <a class="btn btn-delete btn-sm print-file" type="button" title="In" onclick="myApp.printTable()"><i
                                            class="fas fa-print"></i> In dữ liệu</a>
                                </div>
                            </div>
                            <table class="table table-hover table-bordered" id="sampleTable">
                                <thead>
                                    <tr>
                                        <th>Ảnh</th>
                                        <th>Mã sản phẩm</th>
                                        <th>Tên sản phẩm</th>
                                        <th>Size</th>
                                        <th>Màu</th>
                                        <th>Số lượng</th>
                                        <th>Đơn giá</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${LIST_PRODUCTS_IN_ORDER}" var="d">
                                        <tr>
                                            <td><img src="${d.product.images[0]}" alt="" width="100px;"></td>
                                            <td>${d.product.id}</td>
                                            <td>${d.product.name}</td>
                                            <td>${d.product.size[0]}</td>
                                            <td>${d.product.colors[0]}</td>
                                            <td>${d.quantity}</td>
                                            <td>${d.price}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>



        <!-- Essential javascripts for application to work-->
        <script src="view/assets/admin/js/jquery-3.2.1.min.js"></script>
        <script src="view/assets/admin/js/popper.min.js"></script>
        <script src="view/assets/admin/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="view/assets/admin/js/main.js"></script>
        <!-- The javascript plugin to display page loading on top-->
        <script src="view/assets/admin/js/plugins/pace.min.js"></script>
        <!-- Page specific javascripts-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
        <!-- Data table plugin-->
        <script type="text/javascript" src="view/assets/admin/js/plugins/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="view/assets/admin/js/plugins/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript">
                                        $('#sampleTable').DataTable();
                                        //Thời Gian
                                        function time() {
                                            var today = new Date();
                                            var weekday = new Array(7);
                                            weekday[0] = "Chủ Nhật";
                                            weekday[1] = "Thứ Hai";
                                            weekday[2] = "Thứ Ba";
                                            weekday[3] = "Thứ Tư";
                                            weekday[4] = "Thứ Năm";
                                            weekday[5] = "Thứ Sáu";
                                            weekday[6] = "Thứ Bảy";
                                            var day = weekday[today.getDay()];
                                            var dd = today.getDate();
                                            var mm = today.getMonth() + 1;
                                            var yyyy = today.getFullYear();
                                            var h = today.getHours();
                                            var m = today.getMinutes();
                                            var s = today.getSeconds();
                                            m = checkTime(m);
                                            s = checkTime(s);
                                            nowTime = h + " giờ " + m + " phút " + s + " giây";
                                            if (dd < 10) {
                                                dd = '0' + dd
                                            }
                                            if (mm < 10) {
                                                mm = '0' + mm
                                            }
                                            today = day + ', ' + dd + '/' + mm + '/' + yyyy;
                                            tmp = '<span class="date"> ' + today + ' - ' + nowTime +
                                                    '</span>';
                                            document.getElementById("clock").innerHTML = tmp;
                                            clocktime = setTimeout("time()", "1000", "Javascript");

                                            function checkTime(i) {
                                                if (i < 10) {
                                                    i = "0" + i;
                                                }
                                                return i;
                                            }
                                        }
        </script>
        <script>

            $(document).ready(jQuery(function () {
                jQuery(".trash").click(function () {
                    swal({
                        title: "Cảnh báo",
                        text: "Bạn có chắc chắn là muốn xóa sản phẩm này?",
                        buttons: ["Hủy bỏ", "Đồng ý"],
                    })
                            .then((willDelete) => {
                                if (willDelete) {
                                    window.location = "productmanager?action=deleteproduct&product_id=" + $(this).attr("value");
                                    swal("Đã xóa thành công.!", {
                                    });
                                }
                            });
                });
            }));
        </script>
        <script>
            var myApp = new function () {
                this.printTable = function () {
                    var tab = document.getElementById('sampleTable');
                    var win = window.open('', '', 'height=700,width=700');
                    win.document.write(tab.outerHTML);
                    win.document.close();
                    win.print();
                }
            }
        </script>
    </body>

</html>
