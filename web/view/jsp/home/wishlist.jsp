<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Clothes-Wishlist</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="view\assets\home\img\favicon.png">

        <!-- all css here -->
        <%@include file="../../common/web/add_css.jsp"%>
    </head>
    <body>
        <!-- Add your site or application content here -->

        <!--pos page start-->
        <div class="pos_page">
            <div class="container">
                <!--pos page inner-->
                <div class="pos_page_inner">  
                    <!--header area -->
                    <%@include file="../../common/web/header.jsp"%>
                    <!--header end -->
                    <!--breadcrumbs area start-->
                    <div class="breadcrumbs_area">
                        <div class="row">
                            <div class="col-12">
                                <div class="breadcrumb_content">
                                    <ul>
                                        <li><a href="DispatchServlet">home</a></li>
                                        <li><i class="fa fa-angle-right"></i></li>
                                        <li>wishlist</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs area end-->

                    <!--shopping cart area start -->
                    <div class="shopping_cart_area">
                        <form action="#"> 
                            <div class="row">
                                <div class="col-12">
                                    <div class="table_desc wishlist" style="max-height: 600px; overflow-y: auto;">
                                        <div class="cart_page table-responsive">
                                            <c:if test="${sessionScope.WISHLIST == null || sessionScope.WISHLIST.size() == 0}">
                                                <div style="text-align: center;">
                                                    <img  src="view/assets/home/img/cart/emptycart2.png" alt="Empty cart">
                                                </div>
                                            </c:if>
                                            <c:if test="${sessionScope.WISHLIST != null && sessionScope.WISHLIST.size() != 0}">
                                                <table>
                                                    <thead>
                                                        <tr><th class="product_thumb" style="min-width: 165px;">Image</th>
                                                            <th class="product_name" style="min-width: 280px;">Product</th>
                                                            <th class="product-price">Price</th>
                                                            <th class="product_quantity"style="min-width: 150px;">Stock Status</th>
                                                            <th class="product_total">Add To Cart</th>
                                                            <th class="product_remove">Delete</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${sessionScope.WISHLIST}" var="p">
                                                            <tr>
                                                                <td class="product_thumb"><a href="SingleProductServlet?product_id=${p.id}"><img src="${p.images[0]}" alt=""></a></td>
                                                                <td class="product_name"><a href="SingleProductServlet?product_id=${p.id}">${p.name}</a></td>
                                                                <td class="product-price">${p.salePrice}đ</td>
                                                                <c:if test="${p.status == true}">
                                                                    <td class="product_quantity">
                                                                        In Stock
                                                                    </td>
                                                                    <td class="product_total">
                                                                        <button style="color: #00bba6;
                                                                                border: none;
                                                                                border-radius: 4px;
                                                                                font-size: 13px;
                                                                                padding: 2px 11px;
                                                                                font-weight: 600;" onclick="addProductToCart('Add',${p.id}, 1)">Add To Cart
                                                                        </button>
                                                                    </td>
                                                                </c:if>
                                                                <c:if test="${p.status == false}">
                                                                    <td class="product_quantity">
                                                                        Out of Stock
                                                                    </td>
                                                                    <td class="product_total"><a href="WishlistServlet?action=Delete&product_id=${p.id}">Remove</a></td>
                                                                </c:if>
                                                                <td class="product_remove"><a href="WishlistServlet?action=Delete&product_id=${p.id}">X</a></td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>   
                                            </c:if>

                                        </div>  

                                    </div>
                                </div>
                            </div>

                        </form> 
                    </div>
                    <!--shopping cart area end -->

                </div>
                <!--pos page inner end-->
            </div>
        </div>
        <!--pos page end-->

        <!--footer area start-->
        <%@include file="../../common/web/footer.jsp"%>
        <!--footer area end-->






        <!-- all js here -->
        <%@include file="../../common/web/add_js.jsp"%>
    </body>
</html>
