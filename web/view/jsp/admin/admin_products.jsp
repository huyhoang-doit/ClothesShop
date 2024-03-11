<%-- 
    Document   : admin_products
    Created on : Feb 19, 2024, 11:14:33 PM
    Author     : HuuThanh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Danh sách sản phẩm | Quản trị Admin</title>
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
        <style type="text/css">
            select {
                width: 32.3%;
                margin: 0;
                font-size: 100%;
                padding: 5px 10px 5px 10px;
                font-family: Segoe UI, Helvetica, sans-serif;
                border: 1px solid #D0D0D0;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                border-radius: 20px;
                outline: none;
            }
        </style>
    </head>

    <body onload="time()" class="app sidebar-mini rtl">
        <%@include file="../../common/admin/sidebar.jsp"%>
        <main class="app-content">
            <div class="app-title">
                <ul class="app-breadcrumb breadcrumb side">
                    <li class="breadcrumb-item active"><a href="#"><b>Danh sách sản phẩm</b></a></li>
                </ul>
                <div id="clock"></div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <div class="tile-body">
                            <div class="row element-button">
                                <div class="col-sm-2">
                                    <a class="btn btn-add btn-sm" href="ManageProductServlet?action=Insert" title="Thêm"><i class="fas fa-plus"></i>
                                        Tạo mới sản phẩm</a>
                                </div>
                                <div class="col-sm-2">
                                    <a class="btn btn-delete btn-sm print-file" type="button" title="In" onclick="myApp.printTable()"><i
                                            class="fas fa-print"></i> In dữ liệu</a>
                                </div>
                            </div>
                            <h3 style="color: green; text-align: center; margin: 20px 0">${requestScope.mess}</h3>
                            <form action="EditProductServlet" method="POST">
                                <table class="table table-hover table-bordered" id="sampleTable">
                                    <thead>
                                        <tr>
                                            <th>Mã sản phẩm</th>
                                            <th>Danh mục</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Giá</th>
                                            <th>Size</th>
                                            <th>Màu</th>
                                            <th>Số lượng</th>
                                            <th>Ảnh</th>
                                            <th>Chức năng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${requestScope.LIST_PRODUCTS}" var="p">
                                            <tr>
                                                <td>${p.id}</td>
                                                <td>${p.getCategory().getName()}</td>
                                                <td style="max-width: 200px">${p.name}</td>
                                                <td>${p.getPrice()}</td>
                                                <td>
                                                    <c:forEach items="${p.size}" var="s" varStatus="loop">
                                                        ${s}<c:if test="${not loop.last}">,</c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>
                                                    <c:forEach items="${p.colors}" var="c" varStatus="loop">    
                                                        ${c}<c:if test="${not loop.last}">,</c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>${p.getStock()}</td>
                                                <td><img src="${p.images[0]}" alt="" width="100px;"></td>

                                                <td>
                                                    <a class="btn btn-primary btn-sm trash" id="logout" data-toggle="modal" data-target="#modal_box" href="#" onclick="confirmDelete('modal_box', ${p.id})">
                                                        <i class="fas fa-trash-alt"></i>
                                                    </a>
                                                    <a class="btn btn-primary btn-sm edit" href="EditProductServlet?product_id=${p.id}"><i class="fas fa-edit"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <div class="modal fade" id="modal_box" role="dialog"></div>
        <!-- Essential javascripts for application to work-->
        <script src="view/assets/admin/js/jquery-3.2.1.min.js"></script>
        <script src="view/assets/admin/js/popper.min.js"></script>
        <script src="view/assets/admin/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="view/assets/admin/js/main.js"></script>
        <!-- Page specific javascripts-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
        <!-- Data table plugin-->
        <script type="text/javascript" src="view/assets/admin/js/plugins/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="view/assets/admin/js/plugins/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript">
                                                        function confirmDelete(modalID, pid) {
                                                            let modalElement = document.getElementById(modalID);
                                                            let modal = '<div class="modal-dialog modal-dialog-centered" role="document" style="text-align:center">' +
                                                                    '<div class="modal-content" style="width:500px; margin: 0 auto">' +
                                                                    '<div class="modal-header" style="color: black; font-size:28px; font-weight: 600; margin: 15px auto">Cảnh báo</div>' +
                                                                    '<div class="swal-text">Bạn có chắc chắn là muốn xóa sản phẩm này?</div>' +
                                                                    '<div class="swal-footer">' +
                                                                    '<div class="swal-button-container">' +
                                                                    '<button data-dismiss="modal" aria-hidden="true" class="swal-button swal-button--cancel">Hủy bỏ</button>' +
                                                                    '</div>' +
                                                                    '<div class="swal-button-container">' +
                                                                    '<a href="DeleteProductServlet?pid=' + pid + '" class="swal-button swal-button--confirm">Xác nhận</a>' +
                                                                    '</div>' +
                                                                    '</div>' +
                                                                    '</div>' +
                                                                    '</div>';
                                                            console.log(modal);
                                                            let result = modalElement.innerHTML = modal;
                                                            return result;
                                                        }
        </script>
        <script>
                //In
                $('#sampleTable').DataTable();
                var myApp = new function () {
                    this.printTable = function () {
                        var tab = document.getElementById('sampleTable');
                        var win = window.open('', '', 'height=700,width=700');
                        win.document.write(tab.outerHTML);
                        win.document.close();
                        win.print();
                    };
                }
                ;
        </script>
    </body>

</html>
