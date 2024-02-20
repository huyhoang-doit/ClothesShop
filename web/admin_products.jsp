<%-- 
    Document   : admin_products
    Created on : Feb 19, 2024, 11:14:33 PM
    Author     : HuuThanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="/common/admin/add_css.jsp" %>
    </head>
    <body>
        <div class="container-xxl position-relative bg-white d-flex p-0">
            <!-- Spinner Start -->
            <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
                <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
            <!-- Spinner End -->


            <!-- Sidebar Start -->
            <%@include file="/common/admin/sidebar.jsp" %>
            <!-- Sidebar End -->


            <!-- Content Start -->
            <div class="content">
                <!-- Navbar Start -->
                <%@include file="/common/admin/header.jsp" %>
                <!-- Navbar End -->


                <!-- Table Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="row g-4">
                        <div class="col-12">
                            <div class="bg-light rounded h-100 p-4">
                                <h6 class="mb-4">Products List</h6>
                                <div class="table-responsive">
                                    <button style="margin-bottom: 20px" class="button touch new"></button>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">ID</th>
                                                <th scope="col">Product Name</th>
                                                <th scope="col">Image</th>
                                                <th scope="col">Release Date</th>
                                                <th scope="col">Price</th>
                                                <th scope="col">Stock</th>
                                                <th scope="col">Unit Sold</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:if test="${requestScope.LISTPRODUCTS != null && !requestScope.LISTPRODUCTS.isEmpty()}">
                                                <c:forEach items="${requestScope.LISTPRODUCTS}" var="p">
                                                    <tr>
                                                        <th style="font-size: 12px">${p.id}</th>
                                                        <td style="font-size: 14px; max-width: 190px">${p.productName}</td>
                                                        <td><img src="${p.images[0]}" width="60"></td>
                                                        <td>${p.releasedate}</td>
                                                        <td>${p.price}</td>
                                                        <td>${p.stock}</td>
                                                        <td>${p.unitSold}</td>
                                                        <td>
                                                            <button class="button touch edit"></button>
                                                            <button class="button touch delete"></button>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </c:if>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Table End -->


                <!-- Footer Start -->
                <%@include file="/common/admin/footer.jsp" %>
                <!-- Footer End -->
            </div>
            <!-- Content End -->


            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
                <%@include file="/common/admin/add_js.jsp" %>
    </body>
</html>
