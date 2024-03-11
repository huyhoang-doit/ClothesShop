<%-- 
    Document   : admin_products
    Created on : Feb 19, 2024, 11:14:33 PM
    Author     : HuuThanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <title>Thêm sản phẩm | Quản trị Admin</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Main CSS-->
        <link rel="stylesheet" type="text/css" href="view/assets/admin/css/main.css">
        <!-- Font-icon css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <!-- or -->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
        <script>

            function readURL(input, thumbimage) {
                if (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $("#thumbimage").attr('src', e.target.result);
                    }
                    reader.readAsDataURL(input.files[0]);
                } else { // Sử dụng cho IE
                    $("#thumbimage").attr('src', input.value);
                }
                $("#thumbimage").show();
                $('.filename').text($("#uploadfile").val());
                $('.Choicefile').css('background', '#14142B');
                $('.Choicefile').css('cursor', 'default');
                $(".removeimg").show();
                $(".Choicefile").unbind('click');

            }
            $(document).ready(function () {
                $(".Choicefile").bind('click', function () {
                    $("#uploadfile").click();

                });
                $(".removeimg").click(function () {
                    $("#thumbimage").attr('src', '').hide();
                    $("#myfileupload").html('<input type="file" id="uploadfile"  onchange="readURL(this);" />');
                    $(".removeimg").hide();
                    $(".Choicefile").bind('click', function () {
                        $("#uploadfile").click();
                    });
                    $('.Choicefile').css('background', '#14142B');
                    $('.Choicefile').css('cursor', 'pointer');
                    $(".filename").text("");
                });
            })
        </script>
        <style>
            select {
                width: 32.3%;
                margin: 0;
                font-size: 100%;
                padding: 10px;
                font-family: Segoe UI, Helvetica, sans-serif;
                border: 1px solid #D0D0D0;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                border-radius: 15px;
                outline: none;
            }

            .Choicefile {
                display: block;
                background: #14142B;
                border: 1px solid #fff;
                color: #fff;
                width: 150px;
                text-align: center;
                text-decoration: none;
                cursor: pointer;
                padding: 5px 0px;
                border-radius: 5px;
                font-weight: 500;
                align-items: center;
                justify-content: center;
            }

            .Choicefile:hover {
                text-decoration: none;
                color: white;
            }

            #uploadfile,
            .removeimg {
                display: none;
            }

            #thumbbox {
                position: relative;
                width: 100%;
                margin-bottom: 20px;
            }

            .removeimg {
                height: 25px;
                position: absolute;
                background-repeat: no-repeat;
                top: 0px;
                left: 5px;
                background-size: 25px;
                width: 25px;
                /* border: 3px solid red; */
                border-radius: 50%;
            }

            .removeimg::before {
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
                content: '';
                border: 1px solid red;
                background: red;
                text-align: center;
                display: block;
                margin-top: 11px;
                transform: rotate(45deg);
            }

            .removeimg::after {
                /* color: #FFF; */
                /* background-color: #DC403B; */
                content: '';
                background: red;
                border: 1px solid red;
                text-align: center;
                display: block;
                transform: rotate(-45deg);
                margin-top: -2px;
            }
        </style>
    </head>

    <body class="app sidebar-mini rtl">
        <!-- Navbar-->
        <%@include file="../../common/admin/sidebar.jsp"%>
        <main class="app-content">
            <div class="app-title">
                <ul class="app-breadcrumb breadcrumb">
                    <li class="breadcrumb-item">Danh sách sản phẩm</li>
                    <li class="breadcrumb-item"><a href="">Thêm sản phẩm</a></li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <h3 class="tile-title">Tạo mới sản phẩm</h3>
                        <div class="tile-body">
                            <div class="row element-button">
                                <div class="col-sm-2">
                                    <a class="btn btn-add btn-sm" data-toggle="modal" data-target="#adddanhmuc"><i
                                            class="fas fa-folder-plus"></i> Thêm danh mục</a>
                                </div>
                                <c:if test="${requestScope.STATUS_INSERT_CATE == 'success'}">
                                    <span class="form-messege" style='color: green;'>${requestScope.MSG_INSERT_CATE}</span>
                                </c:if>
                                <c:if test="${requestScope.STATUS_INSERT_CATE == 'fail'}">
                                    <span class="form-messege" style='color: red;'>${requestScope.MSG_INSERT_CATE}</span>
                                </c:if>
                            </div>

                            <form class="row" action="InsertProductServlet" method="get">
                                <div class="form-group col-md-3">
                                    <label class="control-label">Tên sản phẩm</label>
                                    <input class="form-control" name="product_name" type="text">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="exampleSelect1" class="control-label">Danh mục</label>
                                    <select name="category_id" class="form-control" id="exampleSelect1">
                                        <c:forEach items="${requestScope.LIST_CATEGORIES}" var="cat">
                                            <option value="${cat.id}">${cat.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="exampleSelect1" class="control-label">Hãng</label>
                                    <select name="supplier_id" class="form-control" id="exampleSelect1">
                                        <c:forEach items="${requestScope.LIST_SUPPLIERS}" var="sup">
                                            <option value="${sup.id}">${sup.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="exampleSelect1" class="control-label">Loại</label>
                                    <select name="type_id" class="form-control" id="exampleSelect1">
                                        <c:forEach items="${requestScope.LIST_TYPES}" var="type">
                                            <option value="${type.id}">${type.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group  col-md-3">
                                    <label class="control-label">Giá bán</label>
                                    <input class="form-control" name="price" min="0" step="0.01" type="number">
                                </div>
                                <div class="form-group  col-md-3">
                                    <label class="control-label">Giảm giá</label>
                                    <input class="form-control" name="discount" type="number" min="0" max="1" step="0.01">
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="control-label">Size</label>
                                    <input class="form-control" name="size" type="text" placeholder="S,L,XL,...">
                                </div>
                                <div class="form-group col-md-3">
                                    <label class="control-label">Màu</label>
                                    <input class="form-control" placeholder="Blue,Gray,..." name="color" type="text">
                                </div>
                                <div class="form-group  col-md-3">
                                    <label class="control-label">Số lượng</label>
                                    <input class="form-control" name="stock" min="0" type="number">
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Release Date</label><br/>
                                    <input type="hidden" id="stringdateolb" value="">
                                    <input type="hidden" name="date" value="" id="here"/>
                                    <select class="bear-dates" id="dobDay"></select>
                                    <select class="bear-months" id="dobMonth"></select>
                                    <select class="bear-years" id="dobYear"></select>
                                </div>
                                <div class="form-group col-md-12">
                                    <label class="control-label">Ảnh sản phẩm</label>
                                    <div id="myfileupload">
                                        <input type="file" id="uploadfile" multiple="" name="product_img" onchange="readURL(this);" />
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
                                <div class="form-group col-md-12">
                                    <label class="control-label">Mô tả sản phẩm</label>
                                    <textarea class="form-control" name="description" id="describe"></textarea>
                                </div>
                                <button onclick="setValue()" class="btn btn-save" type="submit">Lưu lại</button>
                                &nbsp;
                                <a class="btn btn-cancel" href="productmanager">Hủy bỏ</a>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </main>

        <script src="view/assets/admin/js/jquery-3.2.1.min.js"></script>
        <script src="view/assets/admin/js/popper.min.js"></script>
        <script src="view/assets/admin/js/bootstrap.min.js"></script>
        <script src="view/assets/admin/js/main.js"></script>
        <script src="view/assets/admin/js/plugins/pace.min.js"></script>
        <script>
                                    const inpFile = document.getElementById("inpFile");
                                    const loadFile = document.getElementById("loadFile");
                                    const previewContainer = document.getElementById("imagePreview");
                                    const previewContainer = document.getElementById("imagePreview");
                                    const previewImage = previewContainer.querySelector(".image-preview__image");
                                    const previewDefaultText = previewContainer.querySelector(".image-preview__default-text");
                                    const object = new ActiveXObject("Scripting.FileSystemObject");
                                    inpFile.addEventListener("change", function () {
                                        const file = this.files[0];
                                        if (file) {
                                            const reader = new FileReader();
                                            previewDefaultText.style.display = "none";
                                            previewImage.style.display = "block";
                                            reader.addEventListener("load", function () {
                                                previewImage.setAttribute("src", this.result);
                                            });
                                            reader.readAsDataURL(file);
                                        }
                                    });


        </script>
    </body>

</html>
