<%-- 
    Document   : admin_categories
    Created on : Feb 20, 2024, 12:27:23 AM
    Author     : HuuThanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Danh sách sản phẩm | Quản trị Admin</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Main CSS-->
        <link rel="stylesheet" type="text/css" href="admin/css/main.css">
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
        <!-- Navbar-->
        <%@include file="/common/admin/sidebar.jsp"%>
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
                                    <a class="btn btn-add btn-sm" href="ManageCategoryServlet?action=Insert" title="Thêm"><i class="fas fa-plus"></i>
                                        Tạo mới danh mục</a>
                                </div>
                                <div class="col-sm-2">
                                    <a class="btn btn-delete btn-sm print-file" type="button" title="In" onclick="myApp.printTable()"><i
                                            class="fas fa-print"></i> In dữ liệu</a>
                                </div>
                            </div>
                            <h3 style="color: green; text-align: center; margin: 20px 0">${requestScope.mess}</h3>
                            <form action="productmanager?action=updateproduct" method="POST">
                                <table class="table table-hover table-bordered" id="sampleTable">
                                    <thead>
                                        <tr>
                                            <th>Mã</th>
                                            <th>Tên danh mục</th>
                                            <th>Type</th>
                                            <th>Chức năng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${LIST_CATEGORIES}" var="c">
                                            <tr>
                                                <td>${c.id}</td>
                                                <td>${c.name}</td>
                                                <td>${c.typeId}</td>
                                                <td>
                                                    <a class="btn btn-primary btn-sm trash" id="logout" data-toggle="modal" data-target="#modal_box" href="#" onclick="confirmDelete('modal_box', ${c.id})">
                                                        <i class="fas fa-trash-alt"></i>
                                                    </a>
                                                    <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                                            data-toggle="modal" data-target="#ModalUP${c.id}"><i class="fas fa-edit"></i>
                                                    </button>
                                                </td>
                                            </tr>

                                            <!--
                                            MODAL
                                            -->

                                        <div class="modal fade" id="ModalUP${c.id}" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static"
                                             data-keyboard="false">
                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="form-group  col-md-12">
                                                                <span class="thong-tin-thanh-toan">
                                                                    <h5>Chỉnh sửa thông tin sản phẩm</h5>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="form-group col-md-6">
                                                                <label class="control-label">Mã sản phẩm </label>
                                                                <input class="form-control" type="text" readonly name="product_id" value="${p.product_id}">
                                                            </div>
                                                            <div class="form-group col-md-6">
                                                                <label for="exampleSelect1" class="control-label">Danh mục</label>
                                                                <select name="category_id" class="form-control" id="exampleSelect1">
                                                                    <option>-- Chọn danh mục --</option>
                                                                    <c:forEach items="${CategoryData}" var="cat">
                                                                        <option value="${cat.category_id}">${cat.category_name}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="form-group col-md-6">
                                                                <label class="control-label">Tên sản phẩm</label>
                                                                <input class="form-control" type="text" name="product_name" required value="${p.product_name}">
                                                            </div>
                                                            <div class="form-group col-md-6">
                                                                <label class="control-label">Giá</label>
                                                                <input class="form-control" type="number" name="product_price" required value="${p.product_price}">
                                                            </div>
                                                            <div class="form-group col-md-6">
                                                                <label class="control-label">Màu</label>
                                                                <input class="form-control" name="product_color" type="text" value="<c:forEach items="${ColorData}" var="c"><c:if test="${p.product_id==c.product_id}">${c.color},</c:if></c:forEach>">
                                                                    </div>

                                                                    <div class="form-group col-md-6">
                                                                        <label class="control-label">Size</label>
                                                                        <input class="form-control" name="product_size" type="text" value="<c:forEach items="${SizeData}" var="s"><c:if test="${p.product_id==s.product_id}">${s.size},</c:if></c:forEach>">
                                                                    </div>

                                                                    <div class="form-group col-md-6">
                                                                        <label class="control-label">Thông tin</label>
                                                                        <input class="form-control" type="text" name="product_describe" value="${p.product_describe}">
                                                            </div>

                                                            <div class="form-group col-md-6">
                                                                <label class="control-label">Số lượng</label>
                                                                <input class="form-control" type="text" name="product_quantity" value="${p.quantity}">
                                                            </div>
                                                            anh san pham
                                                            <div class="form-group col-md-12">
                                                                <label class="control-label">Ảnh sản phẩm</label>
                                                                <div id="myfileupload">
                                                                    <input type="file" id="uploadfile" name="product_img" value="${p.img}" onchange="readURL(this);" />
                                                                </div>
                                                                <div id="thumbbox">
                                                                    <img height="450" width="400" alt="Thumb image" id="thumbimage" style="display: none" />
                                                                    <a class="removeimg" href="javascript:"></a>
                                                                </div>
                                                                <div id="boxchoice">
                                                                    <a href="javascript:" class="Choicefile"><i class="fas fa-cloud-upload-alt"></i> Chọn ảnh</a>
                                                                    <p style="clear:both"></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <BR>
                                                        <button class="btn btn-save" type="submit">Lưu lại</button>
                                                        <a class="btn btn-cancel" data-dismiss="modal" href="#">Hủy bỏ</a>
                                                        <BR>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!--
                                      MODAL
                                        -->
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
        <script src="admin/js/jquery-3.2.1.min.js"></script>
        <script src="admin/js/popper.min.js"></script>
        <script src="admin/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="admin/js/main.js"></script>
        <!-- The javascript plugin to display page loading on top-->
        <!-- Page specific javascripts-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
        <!-- Data table plugin-->
        <script type="text/javascript" src="admin/js/plugins/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="admin/js/plugins/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript">
                                                                        function confirmDelete(modalID, cid) {
                                                                            let modalElement = document.getElementById(modalID);
                                                                            let modal = '<div class="modal-dialog modal-dialog-centered" role="document" style="text-align:center">' +
                                                                                    '<div class="modal-content" style="width:500px; margin: 0 auto">' +
                                                                                    '<div class="modal-header" style="color: black; font-size:28px; font-weight: 600; margin: 0 auto">Cảnh báo</div>' +
                                                                                    '<div class="swal-text">Bạn có chắc chắn là muốn xóa sản phẩm này?</div>' +
                                                                                    '<div class="swal-footer">' +
                                                                                    '<div class="swal-button-container">' +
                                                                                    '<button data-dismiss="modal" aria-hidden="true" class="swal-button swal-button--cancel">Hủy bỏ</button>' +
                                                                                    '</div>' +
                                                                                    '<div class="swal-button-container">' +
                                                                                    '<a href="DeleteCategoryServlet?cid=' + cid + '" class="swal-button swal-button--confirm">Xác nhận</a>' +
                                                                                    '</div>' +
                                                                                    '</div>' +
                                                                                    '</div>' +
                                                                                    '</div>';
                                                                            console.log(modal);
                                                                            let result = modalElement.innerHTML = modal;
                                                                            return result;
                                                                        }
        </script>
    </body>

</html>
