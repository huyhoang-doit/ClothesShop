<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit</title>
        <link rel="stylesheet" type="text/css" href="view/assets/admin/css/main.css">
        <script src="view/assets/admin/js/main.js"></script>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
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
    <body>
        <form id="form" action="EditProductServlet" method="get">
            <div class="" >
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
                                    <label class="control-label">Mã sản phẩm</label>
                                    <input class="form-control" type="text" readonly name="product_id" value="${pid}">
                                </div>

                                <div class="form-group col-md-6">
                                    <label class="control-label">Số lượng</label>
                                    <input class="form-control" type="text" name="product_stock" value="${pstock}">
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="exampleSelect1" class="control-label">Danh mục</label>
                                    <select name="category_id" class="form-control" id="exampleSelect1">
                                        <c:forEach items="${requestScope.LIST_CATEGORIES}" var="cat">
                                            <option ${cat.id == pcategory.id ? "selected" : ""} value="${cat.id}">${cat.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="exampleSelect2" class="control-label">Loại</label>
                                    <select name="type_id" class="form-control" id="exampleSelect2">
                                        <c:forEach items="${requestScope.LIST_TYPES}" var="type">
                                            <option ${type.id == ptype.id ? "selected" : ""} value="${type.id}">${type.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="exampleSelect3" class="control-label">Hãng</label>
                                    <select name="supplier_id" class="form-control" id="exampleSelect3">
                                        <c:forEach items="${requestScope.LIST_SUPPLIERS}" var="sup">
                                            <option ${sup.id == psupplier.id ? "selected" : ""} value="${sup.id}">${sup.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Tên sản phẩm</label>
                                    <input class="form-control" type="text" name="product_name" required value="${pname}">
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Giá</label>
                                    <input class="form-control" type="number" name="product_price" required value="${pprice}">
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="control-label">Màu</label>
                                    <input class="form-control" name="product_color" type="text" value="<c:forEach items="${pcolors}" var="c" varStatus="loop">${c}<c:if test="${not loop.last}">,</c:if></c:forEach>"/>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="control-label">Size</label>
                                            <input class="form-control" name="product_size" type="text" value="<c:forEach items="${psize}" var="s" varStatus="loop">${s}<c:if test="${not loop.last}">,</c:if></c:forEach>"/>
                                        </div>

                                        <div class="form-group col-md-6">
                                            <label class="control-label">Giảm giá</label>
                                            <input class="form-control" name="product_discount" type="text" value="${pdiscount}">
                                </div>

                                <div class="form-group col-md-12">
                                    <label class="control-label">Thông tin</label>
                                    <textarea class="form-control" type="text" name="product_description">${pdescription}</textarea>
                                </div>
                                <div class="form-group col-md-12">
                                    <label class="control-label">Release Date</label><br/>
                                    <input type="hidden" id="stringdateolb" value="${preleasedate}">
                                    <input type="hidden" name="date" value="" id="here"/>
                                    <select class="bear-dates" id="dobDay"></select>
                                    <select class="bear-months" id="dobMonth"></select>
                                    <select class="bear-years" id="dobYear"></select>
                                </div>
                                <div class="form-group col-md-12">
                                    <label class="control-label">Ảnh sản phẩm</label>
                                    <div id="myfileupload">
                                        <input multiple type="file" id="uploadfile" name="product_img" value="${pimages[0]}" onchange="readURL(this);" />
                                    </div>
                                    <div id="thumbbox">
                                        <img height="450" width="400" alt="Thumb image" id="thumbimage" style="display: none" />
                                        <a class="removeimg" href="javascript:"></a>
                                    </div>
                                </div>
                            </div>
                            <BR>
                            <button onclick="setValue()" class="btn btn-save" name="action" value="update" type="submit">Lưu lại</button>
                            <a class="btn btn-cancel" data-dismiss="modal" href="ManageProductServlet">Hủy bỏ</a>
                            <BR>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <script  type="text/javascript">
            function addOption(selectElement, value, text) {
                var option = document.createElement("option");
                option.value = value;
                option.text = text;
                selectElement.add(option);
            }

            var defaultReleaseDate = document.getElementById("stringdateolb").value;
            var defaultDateArray = defaultReleaseDate.split('-');
            var defaultDay = parseInt(defaultDateArray[2]);
            var defaultMonth = parseInt(defaultDateArray[1]);
            var defaultYear = parseInt(defaultDateArray[0]);

            var daysSelect = document.getElementById('dobDay');
            var monthsSelect = document.getElementById('dobMonth');
            var yearsSelect = document.getElementById('dobYear');

            for (var day = 1; day <= 31; day++) {
                addOption(daysSelect, day, day);
            }

            for (var month = 1; month <= 12; month++) {
                addOption(monthsSelect, month, month);
            }

            var currentYear = new Date().getFullYear();
            for (var year = currentYear; year >= 1900; year--) {
                addOption(yearsSelect, year, year);
            }

            daysSelect.value = defaultDay;
            monthsSelect.value = defaultMonth;
            yearsSelect.value = defaultYear;


            function setValue() {
                var here = document.querySelector('#here');
                var dobDay = document.getElementById('dobDay').value;
                var dobMonthText = document.getElementById('dobMonth').value;
                var dobYear = document.getElementById('dobYear').value;
                if (dobMonthText < 10 && dobDay < 10) {
                    dobFull = dobYear + '-0' + dobMonthText + '-0' + dobDay;
                } else if (dobMonthText < 10 && !(dobDay < 10)) {
                    dobFull = dobYear + '-0' + dobMonthText + '-' + dobDay;
                } else if (dobDay < 10 && !(dobMonthText < 10)) {
                    dobFull = dobYear + '-' + dobMonthText + '-0' + dobDay;
                } else {
                    dobFull = dobYear + '-' + dobMonthText + '-' + dobDay;
                }
                here.value = dobFull;
            }
        </script>
    </body>
</html>