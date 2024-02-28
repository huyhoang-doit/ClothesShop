<%@page import="model.WishListDTO"%>
<%@page import="dal.WishlistDAO"%>
<%@page import="model.ProductDTO"%>
<%@page import="java.util.List"%>
<%@page import="dal.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Clothes - Shop</title>
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

                    <!--pos home section-->
                    <div class=" pos_home_section">
                        <div class="row pos_home">
                            <div class="col-lg-3 col-md-8 col-12">
                                <!--sidebar banner-->
                                <div class="sidebar_widget banner mb-35">
                                    <div class="banner_img mb-35">
                                        <a href="#"><img src="assets\img\banner\banner5.jpg" alt=""></a>
                                    </div>
                                    <div class="banner_img">
                                        <a href="#"><img src="assets\img\banner\banner6.jpg" alt=""></a>
                                    </div>
                                </div>
                                <!--sidebar banner end-->

                                
                                
                                
                                
                                
                                
                                
                                <!--categorie menu start-->
                                <div class="sidebar_widget catrgorie mb-35">
                                    <h3>Categories</h3>
                                    <ul>
                                        <c:if test="${requestScope.LIST_TYPES!= null && !requestScope.LIST_TYPES.isEmpty()}">
                                            <c:forEach items="${requestScope.LIST_TYPES}" var="t">
                                                <li class="has-sub">
                                                    <a href="FilterServlet?action=filterByType&type_id=${t.typeId}"><i class="fa fa-caret-right"></i>${t.name}</a>
                                                        <c:forEach items="${requestScope.LIST_CATEGORIESS}" var="c">
                                                            <c:if test="${t.typeId == c.typeId}" >
                                                            <ul class="categorie_sub">
                                                                <li><a href="FilterServlet?action=filterByCategory&category_id=${c.id}"><i class="fa fa-caret-right"></i> ${c.name}</a>
                                                                </li>
                                                            </ul>    
                                                        </c:if>
                                                    </c:forEach>
                                                </li>
                                            </c:forEach>
                                        </c:if>
                                    </ul>
                                </div>
                                <!--categorie menu end-->
                                <%
                                    WishlistDAO wl = new WishlistDAO();
                                    ProductDAO product = new ProductDAO();
                                    List<WishListDTO> lists = wl.getWishlist();
                                    int count = 0;
                                %>
                                <!--wishlist block start-->
                                <div class="sidebar_widget wishlist mb-35">
                                    <div class="block_title">
                                        <h3><a href="#">Wishlist</a></h3>
                                    </div>

                                    <%
                                        for (WishListDTO wls : lists) {
                                            List<ProductDTO> productList = product.getProductsforId(String.valueOf(wls.getProductID()));
                                            count++;
                                            for (ProductDTO p : productList) {
                                    %>
                                    <div class="cart_item">
                                        <div class="cart_img">
                                            <a href="single-product.jsp?productId=<%= p.getId()%>"><img src=<%= p.getImages()[0]%> alt=""></a>
                                        </div>
                                        <div class="cart_info">
                                            <a href="single-product.jsp?productId=<%= p.getId()%>"><%= p.getProductName()%></a>
                                            <span class="cart_price"><%= p.getPrice()%>&#8363</span>                                          
                                        </div>
                                        <div class="cart_remove">
                                            <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                                        </div>
                                    </div>


                                    <%}
                                        }%>

                                    <div class="block_content">
                                        <p><%= count%> products</p>
                                        <a href="wishlist.jsp">» My wishlists</a>
                                    </div>
                                </div>
                                <!--wishlist block end-->

<<<<<<< HEAD
                                <!--newsletter block start-->
                                <div class="sidebar_widget newsletter mb-35">
                                    <div class="block_title">
                                        <h3>newsletter</h3>
                                    </div> 
                                    <form action="EmailServlet" method="POST">
                                        <p>Sign up for your newsletter</p>
                                        <input placeholder="Your email address" type="text" name="email" value="<c:if test="${requestScope.EMAIL_CUSTOMER != null}">${requestScope.EMAIL_CUSTOMER}</c:if>">
                                            <button type="submit" name="action" value="subscribe">Subscribe</button>
                                        <c:if test="${requestScope.CHECK == 'success'}">
                                            <div class="col-12">
                                                <span class="form-messege" style='color: green;'>${requestScope.MESSAGE}</span>
                                            </div>
                                        </c:if>
                                        <c:if test="${requestScope.CHECK == 'fail'}">
                                            <div class="col-12">
                                                <span class="form-messege" style='color: red;'>${requestScope.MESSAGE}</span>
                                            </div>
                                        </c:if>
                                    </form>   
                                </div>
                                <!--newsletter block end--> 

=======
>>>>>>> 789110ee97f20087171e2644dbea488caf2ff42a
                                <!--sidebar banner-->
                                <div class="sidebar_widget bottom ">
                                    <div class="banner_img">
                                        <a href="#"><img src="assets\img\banner\banner9.jpg" alt=""></a>
                                    </div>
                                </div>
                                <!--sidebar banner end-->
                            </div>
                            <div class="col-lg-9 col-md-12">
                                <!--banner slider start-->
                                <div class="banner_slider slider_1">
                                    <div class="slider_active owl-carousel">
                                        <div class="single_slider" style="background-image: url(assets/img/slider/slide_1.png)">
                                            <div class="slider_content">
                                                <div class="slider_content_inner">  
                                                    <h1>Men's Fashion</h1>
                                                    <p>Thời trang, phong cách trẻ trung. </p>
                                                    <a href="#">shop now</a>
                                                </div>     
                                            </div>    
                                        </div>
                                        <div class="single_slider" style="background-image: url(assets/img/slider/slide_2.png)">
                                            <div class="slider_content">
                                                <div class="slider_content_inner">  
                                                    <h1>New Collection</h1>
                                                    <p>Nơi cập nhật những trào lưu bạn cần. </p>
                                                    <a href="#">shop now</a>
                                                </div>         
                                            </div>         
                                        </div>
                                        <div class="single_slider" style="background-image: url(assets/img/slider/slide_3.png)">
                                            <div class="slider_content">  
                                                <div class="slider_content_inner">  
                                                    <h1>Best Collection</h1>
                                                    <p>Bộ sưu tập mùa hè, mùa đông. </p>
                                                    <a href="#">shop now</a>
                                                </div> 
                                            </div> 
                                        </div>
                                    </div>
                                </div> 
                                <!--banner slider start-->
                                <!-- code phan san pham moi -->
                                <%
                                    ProductDAO pr = new ProductDAO();
                                    List<ProductDTO> listProductnew = pr.getData();
                                %>
                                <!-- ket thuc taoj danh sach sp moi -->
                                <!--new product area start-->
                                <div class="new_product_area">
                                    <div class="block_title">
                                        <h3>Mẫu mới 2024</h3>
                                    </div>
                                    <div class="row">
                                        <div class="product_active owl-carousel">
<<<<<<< HEAD
                                            <% for (ProductDTO p : listProductnew) {%>
                                            <div class="col-lg-3">
                                                <div class="single_product">
                                                    <div class="product_thumb">
                                                        <a href="single-product.jsp?productId=<%= p.getId()%>"><img src=<%= p.getImages()[0]%> alt=""></a> 
                                                        <div class="img_icone">
                                                            <img src="" alt="">
=======
                                            <c:if test="${requestScope.LIST_PRODUCTS_NEW != null}">
                                                <c:forEach var="i" items="${requestScope.LIST_PRODUCTS_NEW}">
                                                    <div class="col-lg-3">
                                                        <div class="single_product">
                                                            <div class="product_thumb">
                                                                <a href="SingleProductServlet?product_id=${i.id}"><img src="${i.images[0]}" alt=""></a> 
                                                                <div class="img_icone">
                                                                    <img src="assets/img/cart/span-new.png" alt="">
                                                                </div>
                                                                <div class="product_action">
                                                                    <a href="#"> <i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>
                                                                </div>
                                                            </div>
                                                            <div class="product_content">
                                                                <span class="product_price">${i.price} &#8363</span>
                                                                <h3 class="product_title"><a href="single-product.html">${i.name}</a></h3>
                                                            </div>
                                                            <div class="product_info">
                                                                <ul>
                                                                    <li><a href="#" title=" Add to Wishlist ">Yêu thích</a></li>
                                                                    <li><a href="SingleProductServlet?product_id=${i.id}" title="View Detail">Xem sản phẩm</a></li>
                                                                </ul>
                                                            </div>
>>>>>>> 789110ee97f20087171e2644dbea488caf2ff42a
                                                        </div>
                                                        <div class="product_action">
                                                            <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                        </div>
                                                    </div>s
                                                    <div class="product_content">
                                                        <span class="product_price"><%= p.getPrice()%> &#8363</span>
                                                        <h3 class="product_title"><a href="single-product.jsp?productId=<%= p.getId()%>"><%= p.getProductName()%></a></h3>
                                                    </div>
<<<<<<< HEAD
                                                    <div class="product_info">
                                                        <ul>
                                                            <li><a href="#" title=" Add to Wishlist ">Add to Wishlist</a></li>
                                                            <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <%}%>                                                                                                                                                                                                                                                                                                             
=======
                                                </c:forEach>
                                            </c:if>
>>>>>>> 789110ee97f20087171e2644dbea488caf2ff42a
                                        </div> 
                                    </div>       
                                </div> 
                                <!--new product area start-->  



                                <!--Lay du lieu product tu database -->

                                <%
                                    List<ProductDTO> list = pr.getData();
                                %>

                                <!-- ket thuc code  -->

                                <!--featured product start--> 
                                <div class="featured_product">
                                    <div class="block_title">
                                        <h3>Bán chạy nhất</h3>
                                    </div>
                                    <div class="row">
                                        <div class="product_active owl-carousel">
<<<<<<< HEAD


                                            <!-- duyet foreach lay du lieu tung san pham  -->
                                            <% for (ProductDTO p : list) {%>
                                            <div class="col-lg-3">
                                                <div class="single_product">
                                                    <div class="product_thumb">
                                                        <a href="single-product.jsp?productId=<%= p.getId()%>"><img src= <%= p.getImages()[0]%> alt=""></a> 
                                                        <div class="hot_img">
                                                            <img src="assets\img\cart\span-hot.png" alt="">
=======
                                            <c:forEach items="${requestScope.LIST_PRODUCTS_SELLER}" var="p">
                                                <div class="col-lg-3">
                                                    <div class="single_product">
                                                        <div class="product_thumb">
                                                            <a href="SingleProductServlet?product_id=${p.id}"><img src="${p.images[0]}" alt=""></a> 
                                                            <div class="hot_img">
                                                                <img src="assets\img\cart\span-hot.png" alt="">
                                                            </div>
                                                            <div class="product_action">
                                                                <a href="#"> <i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>
                                                            </div>
>>>>>>> 789110ee97f20087171e2644dbea488caf2ff42a
                                                        </div>
                                                        <div class="product_content">
                                                            <span class="product_price">${p.price}&#273</span>
                                                            <h3 class="product_title"><a href="single-product.html">${p.name}</a></h3>
                                                        </div>
                                                        <div class="product_info">
                                                            <ul>
                                                                <li><a href="#" title=" Add to Wishlist ">Yêu thích</a></li>
                                                                <li><a href="SingleProductServlet?product_id=${p.id}" title="View Detail">Xem sản phẩm</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
<<<<<<< HEAD
                                                    <div class="product_content">
                                                        <span class="product_price"> <%= p.getPrice()%>&#8363</span>
                                                        <h3 class="product_title"><a href="single-product.html"><%= p.getProductName()%></a></h3>
                                                    </div>
                                                    <div class="product_info">
                                                        <ul>
                                                            <li><a href="#" title=" Add to Wishlist ">Add to Wishlist</a></li>
                                                            <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <% }%>
                                            <!-- ket thuc for  -->

=======
                                                </div>
                                            </c:forEach>
>>>>>>> 789110ee97f20087171e2644dbea488caf2ff42a
                                        </div> 
                                    </div> 
                                </div>     
                                <!--featured product end--> 

                                <!--banner area start-->
                                <div class="banner_area mb-60">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6">
                                            <div class="single_banner">
                                                <a href="#"><img src="assets\img\banner\banner7.jpg" alt=""></a>
                                                <div class="banner_title">
                                                    <p>Up to <span> 40%</span> off</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6">
                                            <div class="single_banner">
                                                <a href="#"><img src="assets\img\banner\banner8.jpg" alt=""></a>
                                                <div class="banner_title title_2">
                                                    <p>sale off <span> 30%</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>     
                                <!--banner area end--> 

                                <!--brand logo strat--> 
                                <div class="brand_logo mb-60">
                                    <div class="block_title">
                                        <h3>Thương hiệu</h3>
                                    </div>
                                    <div class="row">
                                        <div class="brand_active owl-carousel">
                                            <c:forEach items="${requestScope.LIST_SUPPLIERS}" var="s">
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="${s.image}" alt=""></a>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>       
                                <!--brand logo end-->        
                            </div>
                        </div>  
                    </div>
                    <!--pos home section end-->
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

