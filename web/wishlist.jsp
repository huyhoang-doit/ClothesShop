<%@page import="dal.ProductDAO"%>
<%@page import="model.ProductDTO"%>
<%@page import="model.WishListDTO"%>
<%@page import="java.util.List"%>
<%@page import="dal.WishlistDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Clothes-Wishlist</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets\img\favicon.png">

        <!-- all css here -->
        <%@include file="/common/web/add_css.jsp"%>
    </head>
    <body>
        <!-- Add your site or application content here -->

        <!--pos page start-->
        <div class="pos_page">
            <div class="container">
                <!--pos page inner-->
                <div class="pos_page_inner">  
                    <!--header area -->
                    <%@include file="/common/web/header.jsp"%>
                    <!--header end -->
                    <!--breadcrumbs area start-->
                    <div class="breadcrumbs_area">
                        <div class="row">
                            <div class="col-12">
                                <div class="breadcrumb_content">
                                    <ul>
                                        <li><a href="home.jsp">home</a></li>
                                        <li><i class="fa fa-angle-right"></i></li>
                                        <li>wishlist</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs area end-->
                    <%
                        WishlistDAO wl = new WishlistDAO();
                        ProductDAO pr = new ProductDAO();
                        List<WishListDTO> list = wl.getWishlist();

                    %>
                    <!--shopping cart area start -->
                    <div class="shopping_cart_area">
                        <form action="#"> 
                            <div class="row">
                                <div class="col-12">
                                    <div class="table_desc wishlist">
                                        <div class="cart_page table-responsive">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th class="product_remove">Delete</th>
                                                        <th class="product_thumb">Image</th>
                                                        <th class="product_name">Product</th>
                                                        <th class="product-price">Price</th>
                                                        <th class="product_quantity">Stock Status</th>
                                                        <th class="product_total">Add To Cart</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%                                                        for (WishListDTO wls : list) {

                                                            List<ProductDTO> productList = pr.getProductsforId(String.valueOf(wls.getProductID()));
                                                            for (ProductDTO p : productList) {
                                                    %>
                                                    <tr>
                                                        <td class="product_remove"><a href="#">X</a></td>
                                                        <td class="product_thumb"><a href="#"><img src=<%= p.getImages()[0]%> alt=""></a></td>
                                                        <td class="product_name"><a href="#"><%= p.getProductName()%></a></td>
                                                        <td class="product-price"><%= p.getPrice()%>&#8363</td>
                                                        <%
                                                            if (p.getStock() > 0) {
                                                        %>
                                                        <td class="product_quantity">In Stock</td>
                                                        <%} else {%>
                                                        <td class="product_quantity">Out Stock</td>
                                                        <%}%>
                                                        <td class="product_total"><a href="#">Add To Cart</a></td>
                                                    </tr>
                                                    <%}
                                                        }%>

                                                </tbody>
                                            </table>   
                                        </div>  

                                    </div>
                                </div>
                            </div>

                        </form> 
                        <div class="row">
                            <div class="col-12">
                                <div class="wishlist-share">
                                    <h4>Share on:</h4>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-rss"></i></a></li>           
                                        <li><a href="#"><i class="fa fa-vimeo"></i></a></li>           
                                        <li><a href="#"><i class="fa fa-tumblr"></i></a></li>           
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>        
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>        
                                    </ul>      
                                </div>
                            </div> 
                        </div>

                    </div>
                    <!--shopping cart area end -->

                </div>
                <!--pos page inner end-->
            </div>
        </div>
        <!--pos page end-->

        <!--footer area start-->
        <%@include file="/common/web/footer.jsp"%>
        <!--footer area end-->






        <!-- all js here -->
        <%@include file="/common/web/add_js.jsp"%>
    </body>
</html>
