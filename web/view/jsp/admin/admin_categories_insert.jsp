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
                top: 5px;
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
                    <li class="breadcrumb-item">Danh sách danh mục</li>
                    <li class="breadcrumb-item"><a href="">Tạo mới danh mục</a></li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tile">
                        <h3 class="tile-title">Tạo mới danh mục</h3>
                        <div class="tile-body">
                            <form class="row" action="InsertCategoryServlet" method="get">
                                <div class="form-group  col-md-3">
                                    <label class="control-label">Tên danh mục</label>
                                    <input class="form-control" required="" name="newcate" type="text">
                                </div>
                                <div class="form-group col-md-3">
                                    <label for="exampleSelect1" class="control-label">Type</label>
                                    <select name="type_id" class="form-control" id="exampleSelect1">
                                        <c:forEach items="${requestScope.LIST_TYPES}" var="type">
                                            <option value="${type.id}">${type.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="exampleSelect1" class="control-label">Danh mục hiện có</label>
                                    <select class="form-control" id="exampleSelect1">
                                        <c:forEach items="${requestScope.LIST_CATEGORIES}" var="cat">
                                            <option value="${cat.id}">${cat.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group col-md-12">
                                    <button onclick="setValue()" class="btn btn-save" type="submit">Lưu lại</button>
                                    &nbsp;
                                    <a class="btn btn-cancel" href="ManageCategoryServlet">Hủy bỏ</a>
                                </div>
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
