<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Single product</title>
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
                                        <li><a href="index.html">home</a></li>
                                        <li><i class="fa fa-angle-right"></i></li>
                                        <li>single product</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs area end-->


                    <!--product wrapper start-->
                    <div class="product_details">
                        <c:if test="${requestScope.PRODUCT != null}" >
                            <div class="row">
                                <div class="col-lg-5 col-md-6">
                                    <div class="product_tab fix"> 
                                        <div class="product_tab_button">    
                                            <ul class="nav" role="tablist">
                                                <c:forEach items="${PRODUCT.images}" var="img" varStatus="loop">
                                                    <c:if test="${loop.index < 2}">
                                                        <li>
                                                            <img src="${img}" alt="photo-product">
                                                        </li>
                                                    </c:if>
                                                </c:forEach>
                                            </ul>
                                        </div> 
                                        <div class="tab-content produc_tab_c">
                                            <c:forEach items="${PRODUCT.images}" var="img" varStatus="loop">
                                                <div class="tab-pane fade show active" id="p_tab1" role="tabpanel">
                                                    <div class="modal_img">
                                                        <a href="#"><img src="${img}" alt=""></a>
                                                        <div class="img_icone">
                                                            <img src="assets\img\cart\span-new.png" alt="">
                                                        </div>
                                                        <c:if test="${loop.index < 2}">
                                                            <div class="view_img">
                                                                <a class="large_view" href="${img}"><i class="fa fa-search-plus"></i></a>
                                                            </div>
                                                        </c:if>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>

                                    </div> 
                                </div>
                                <div class="col-lg-7 col-md-6">
                                    <div class="product_d_right">
                                        <h1>${PRODUCT.name}</h1>
                                        <div class="product_ratting mb-10">
                                        </div>
                                        <div class="product_desc">
                                            <p>${PRODUCT.description}</p>
                                        </div>

                                        <div class="content_price mb-15">
                                            <span>$${PRODUCT.getSalePrice()}</span>
                                            <span class="old-price">$${PRODUCT.price}</span>
                                        </div>
                                        <div class="box_quantity mb-20">
                                            <form action="#">
                                                <label>Số lượng</label>
                                                <input min="0" max="${PRODUCT.stock}" value="1" type="number">
                                            </form> 
                                            <button type="submit"><i class="fa fa-shopping-cart"></i> thêm vào giỏ</button>
                                            <a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a>    
                                        </div>
                                        <div class="sidebar_widget color">
                                            <h2>size</h2>
                                            <div class="widget_color">
                                                <ul>
                                                    <c:forEach items="${PRODUCT.size}" var="s" varStatus="loop">
                                                        <li><button >${s}</button></li>
                                                        </c:forEach>
                                                </ul>
                                            </div>
                                        </div>     

                                        <div class="sidebar_widget color">
                                            <h2>màu</h2>
                                            <div class="widget_color">
                                                <ul>
                                                    <c:forEach items="${PRODUCT.colors}" var="s" varStatus="loop">
                                                        <li><button >${s}</button></li>
                                                        </c:forEach>
                                                </ul>
                                            </div>
                                        </div>                 

                                        <div class="product_stock mb-20">
                                            <p>${PRODUCT.stock} sản phẩm</p>
                                            <span> In stock </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </div>
                    <!--product details end-->
                    <!--new product area start-->
                    <div class="new_product_area product_page">
                        <div class="row">
                            <div class="col-12">
                                <div class="block_title">
                                    <h3>  ${requestScope.LIST_PRODUCTS_SAME_CATEGORY.size} sản phẩm cùng loại</h3>
                                </div>
                            </div> 
                        </div>
                        <div class="row">
                            <div class="single_p_active owl-carousel">
                                <c:forEach items="${requestScope.LIST_PRODUCTS_SAME_CATEGORY}" var="c">
                                    <div class="col-lg-3">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a href="SingleProductServlet?product_id=${c.id}"><img src="${c.images[0]}" alt=""></a> 
                                                <div class="img_icone">
                                                    <img src="assets\img\cart\span-new.png" alt="">
                                                </div>
                                                <div class="product_action">
                                                    <a href="CartServlet"> <i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <span class="product_price">$${c.getSalePrice()}</span>
                                                <span class="old_price">$${c.price}</span>
                                                <h3 class="product_title"><a href="SingleProductServlet?product_id=${c.id}">Curabitur sodales</a></h3>
                                            </div>
                                            <div class="product_info">
                                                <ul>
                                                    <li><a href="WishlistServlet" title=" Add to Wishlist ">Yêu thích</a></li>
                                                    <li><a href="SingleProductServlet?product_id=${c.id}" title="View Detail">Xem sản phẩm</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div> 
                        </div>      
                    </div> 
                    <!--new product area start-->  


                    <!--new product area start-->
                    <div class="new_product_area product_page">
                        <div class="row">
                            <div class="col-12">
                                <div class="block_title">
                                    <h3>    Related Products</h3>
                                </div>
                            </div> 
                        </div>
                        <div class="row">
                            <div class="single_p_active owl-carousel">
                                <div class="col-lg-3">
                                    <div class="single_product">
                                        <div class="product_thumb">
                                            <a href="single-product.html"><img src="assets\img\product\product6.jpg" alt=""></a> 
                                            <div class="img_icone">
                                                <img src="assets\img\cart\span-new.png" alt="">
                                            </div>
                                            <div class="product_action">
                                                <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                        <div class="product_content">
                                            <span class="product_price">$50.00</span>
                                            <h3 class="product_title"><a href="single-product.html">Curabitur sodales</a></h3>
                                        </div>
                                        <div class="product_info">
                                            <ul>
                                                <li><a href="#" title=" Add to Wishlist ">Add to Wishlist</a></li>
                                                <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="single_product">
                                        <div class="product_thumb">
                                            <a href="single-product.html"><img src="assets\img\product\product5.jpg" alt=""></a> 
                                            <div class="hot_img">
                                                <img src="assets\img\cart\span-hot.png" alt="">
                                            </div>
                                            <div class="product_action">
                                                <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                        <div class="product_content">
                                            <span class="product_price">$40.00</span>
                                            <h3 class="product_title"><a href="single-product.html">Quisque ornare dui</a></h3>
                                        </div>
                                        <div class="product_info">
                                            <ul>
                                                <li><a href="#" title=" Add to Wishlist ">Add to Wishlist</a></li>
                                                <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="single_product">
                                        <div class="product_thumb">
                                            <a href="single-product.html"><img src="assets\img\product\product4.jpg" alt=""></a> 
                                            <div class="img_icone">
                                                <img src="assets\img\cart\span-new.png" alt="">
                                            </div>
                                            <div class="product_action">
                                                <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                        <div class="product_content">
                                            <span class="product_price">$60.00</span>
                                            <h3 class="product_title"><a href="single-product.html">Sed non turpiss</a></h3>
                                        </div>
                                        <div class="product_info">
                                            <ul>
                                                <li><a href="#" title=" Add to Wishlist ">Add to Wishlist</a></li>
                                                <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="single_product">
                                        <div class="product_thumb">
                                            <a href="single-product.html"><img src="assets\img\product\product3.jpg" alt=""></a> 
                                            <div class="hot_img">
                                                <img src="assets\img\cart\span-hot.png" alt="">
                                            </div>
                                            <div class="product_action">
                                                <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                        <div class="product_content">
                                            <span class="product_price">$65.00</span>
                                            <h3 class="product_title"><a href="single-product.html">Duis convallis</a></h3>
                                        </div>
                                        <div class="product_info">
                                            <ul>
                                                <li><a href="#" title=" Add to Wishlist ">Add to Wishlist</a></li>
                                                <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="single_product">
                                        <div class="product_thumb">
                                            <a href="single-product.html"><img src="assets\img\product\product2.jpg" alt=""></a> 
                                            <div class="img_icone">
                                                <img src="assets\img\cart\span-new.png" alt="">
                                            </div>
                                            <div class="product_action">
                                                <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            </div>
                                        </div>
                                        <div class="product_content">
                                            <span class="product_price">$50.00</span>
                                            <h3 class="product_title"><a href="single-product.html">Curabitur sodales</a></h3>
                                        </div>
                                        <div class="product_info">
                                            <ul>
                                                <li><a href="#" title=" Add to Wishlist ">Add to Wishlist</a></li>
                                                <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>      
                    </div> 
                    <!--new product area start-->  

                </div>
                <!--pos page inner end-->
            </div>
        </div>
        <!--pos page end-->

        <!--footer area start-->
        <%@include file="/common/web/footer.jsp"%>
        <!--footer area end-->
        <!-- modal area start --> 
        <!-- modal area end --> 
        <!-- all js here -->
        <%@include file="/common/web/add_js.jsp"%>
    </body>
</html>
