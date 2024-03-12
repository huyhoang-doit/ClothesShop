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
    </head>

    <body onload="time()" class="app sidebar-mini rtl">
        <!-- Navbar-->
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
                                    <a class="btn btn-add btn-sm" href="productmanager?action=insert" title="Thêm"><i class="fas fa-plus"></i>
                                        Tạo mới sản phẩm</a>
                                </div>
                                <div class="col-sm-2">
                                    <a class="btn btn-delete btn-sm print-file" type="button" title="In" onclick="myApp.printTable()"><i
                                            class="fas fa-print"></i> In dữ liệu</a>
                                </div>
                            </div>
                            <form action="productmanager?action=updateproduct" method="POST">
                                <table class="table table-hover table-bordered" id="sampleTable">
                                    <thead>
                                        <tr>
                                            <th>Mã sản phẩm</th>
                                            <th>Danh mục</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Giá</th>
                                            <th>Size</th>
                                            <th>Màu</th>
                                            <th>Thông tin</th>
                                            <th>Số lượng</th>
                                            <th>Ảnh</th>
                                            <th>Chức năng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${ProductData}" var="p">
                                            <tr>
                                                <td>${p.product_id}</td>
                                                <td>${p.cate.category_name}</td>
                                                <td>${p.product_name}</td>
                                                <td>${p.product_price}</td>
                                                <td>
                                                    <c:forEach items="${SizeData}" var="s">
                                                        <c:if test="${p.product_id==s.product_id}">
                                                            ${s.size}   
                                                        </c:if>
                                                    </c:forEach>
                                                </td>

                                                <td>
                                                    <c:forEach items="${ColorData}" var="c">
                                                        <c:if test="${p.product_id==c.product_id}">
                                                            ${c.color}   
                                                        </c:if>
                                                    </c:forEach>
                                                </td>
                                                <td>${p.product_describe}</td>
                                                <td>${p.quantity}</td>
                                                <td><img src="${p.img}" alt="" width="100px;"></td>

                                                <td>
                                                    <button class="btn btn-primary btn-sm trash" type="button" title="Xóa" value="${p.product_id}"><i
                                                            class="fas fa-trash-alt"></i>
                                                    </button>
                                                    <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                                            data-toggle="modal" data-target="#ModalUP${p.product_id}"><i class="fas fa-edit"></i>
                                                    </button>
                                                </td>
                                            </tr>

                                            <!--
                                            MODAL
                                            -->

                                        <div class="modal fade" id="ModalUP${p.product_id}" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static"
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
                                                            <!--anh san pham-->
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
