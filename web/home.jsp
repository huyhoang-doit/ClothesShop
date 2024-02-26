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
                                        <c:if test="${requestScope.LIST_TYPEES!= null && !requestScope.LIST_TYPEES.isEmpty()}">
                                            <c:forEach items="${requestScope.LIST_TYPEES}" var="c">
                                                <li class="has-sub"><a href="#"><i class="fa fa-caret-right"></i>${c.name}</a>
                                                    <ul class="categorie_sub">
                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Accessories</a>
                                                            <ul class="categorie_sub">
                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Accessories</a></li>
                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Dresses</a></li>
                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Tops</a></li>
                                                                <li><a href="#"><i class="fa fa-caret-right"></i> HandBags</a></li>
                                                            </ul> 
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Dresses</a></li>
                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Tops</a></li>
                                                        <li><a href="#"><i class="fa fa-caret-right"></i> HandBags</a></li>
                                                    </ul>     
                                                </li>
                                            </c:forEach>
                                        </c:if>
                                        <!--                                        <li class="has-sub"><a href="#"><i class="fa fa-caret-right"></i> Men</a>
                                                                                    <ul class="categorie_sub">
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Accessories</a>
                                                                                            <ul class="categorie_sub">
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Accessories</a></li>
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Dresses</a></li>
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Tops</a></li>
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> HandBags</a></li>
                                                                                            </ul> 
                                                                                        </li>
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Dresses</a></li>
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Tops</a></li>
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> HandBags</a></li>
                                                                                    </ul> 
                                                                                </li>
                                                                                <li class="has-sub"><a href="#"><i class="fa fa-caret-right"></i> Footwear</a>
                                                                                    <ul class="categorie_sub">
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Accessories</a>
                                                                                            <ul class="categorie_sub">
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Accessories</a></li>
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Dresses</a></li>
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Tops</a></li>
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> HandBags</a></li>
                                                                                            </ul> 
                                                                                        </li>
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Dresses</a></li>
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Tops</a></li>
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> HandBags</a></li>
                                                                                    </ul> 
                                        
                                                                                </li>
                                                                                <li class="has-sub"><a href="#"><i class="fa fa-caret-right"></i> Jewelry</a>
                                                                                    <ul class="categorie_sub">
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Accessories</a>
                                                                                            <ul class="categorie_sub">
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Accessories</a></li>
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Dresses</a></li>
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Tops</a></li>
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> HandBags</a></li>
                                                                                            </ul> 
                                                                                        </li>
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Dresses</a></li>
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Tops</a></li>
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> HandBags</a></li>
                                                                                    </ul> 
                                                                                </li>
                                                                                <li class="has-sub"><a href="#"><i class="fa fa-caret-right"></i> Lady</a>
                                                                                    <ul class="categorie_sub">
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Accessories</a>
                                                                                            <ul class="categorie_sub">
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Accessories</a></li>
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Dresses</a></li>
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> Tops</a></li>
                                                                                                <li><a href="#"><i class="fa fa-caret-right"></i> HandBags</a></li>
                                                                                            </ul> 
                                                                                        </li>
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Dresses</a></li>
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> Tops</a></li>
                                                                                        <li><a href="#"><i class="fa fa-caret-right"></i> HandBags</a></li>
                                                                                    </ul> 
                                                                                </li>-->
                                    </ul>
                                </div>
                                <!--categorie menu end-->

                                <!--wishlist block start-->
                                <div class="sidebar_widget wishlist mb-35">
                                    <div class="block_title">
                                        <h3><a href="#">Wishlist</a></h3>
                                    </div>
                                    <div class="cart_item">
                                        <div class="cart_img">
                                            <a href="#"><img src="assets\img\cart\cart.jpg" alt=""></a>
                                        </div>
                                        <div class="cart_info">
                                            <a href="#">lorem ipsum dolor</a>
                                            <span class="cart_price">$115.00</span>
                                            <span class="quantity">Qty: 1</span>
                                        </div>
                                        <div class="cart_remove">
                                            <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                                        </div>
                                    </div>
                                    <div class="cart_item">
                                        <div class="cart_img">
                                            <a href="#"><img src="assets\img\cart\cart2.jpg" alt=""></a>
                                        </div>
                                        <div class="cart_info">
                                            <a href="#">Quisque ornare dui</a>
                                            <span class="cart_price">$105.00</span>
                                            <span class="quantity">Qty: 1</span>
                                        </div>
                                        <div class="cart_remove">
                                            <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                                        </div>
                                    </div>
                                    <div class="block_content">
                                        <p>2  products</p>
                                        <a href="#">» My wishlists</a>
                                    </div>
                                </div>
                                <!--wishlist block end-->

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
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
                                                    <a href="#">shop now</a>
                                                </div>     
                                            </div>    
                                        </div>
                                        <div class="single_slider" style="background-image: url(assets/img/slider/slider_2.png)">
                                            <div class="slider_content">
                                                <div class="slider_content_inner">  
                                                    <h1>New Collection</h1>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
                                                    <a href="#">shop now</a>
                                                </div>         
                                            </div>         
                                        </div>
                                        <div class="single_slider" style="background-image: url(assets/img/slider/slider_3.png)">
                                            <div class="slider_content">  
                                                <div class="slider_content_inner">  
                                                    <h1>Best Collection</h1>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>
                                                    <a href="#">shop now</a>
                                                </div> 
                                            </div> 
                                        </div>
                                    </div>
                                </div> 
                                <!--banner slider start-->

                                <!--new product area start-->
                                <div class="new_product_area">
                                    <div class="block_title">
                                        <h3>Mẫu mới 2024</h3>
                                    </div>
                                    <div class="row">
                                        <div class="product_active owl-carousel">
                                            <c:if test="${requestScope.LIST_PRODUCTS_NEW != null}">
                                                <c:forEach var="i" items="${requestScope.LIST_PRODUCTS_NEW}">
                                                    <div class="col-lg-3">
                                                        <div class="single_product">
                                                            <div class="product_thumb">
                                                                <a href="single-product.html"><img src="${i.images[0]}" alt=""></a> 
                                                                <div class="img_icone">
                                                                        <img src="assets/img/cart/span-new.png" alt="">
                                                                    </div>
                                                                <div class="product_action">
                                                                    <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                                </div>
                                                            </div>
                                                            <div class="product_content">
                                                                <span class="product_price">${i.price} &#8363</span>
                                                                <h3 class="product_title"><a href="single-product.html">${i.productName}</a></h3>
                                                            </div>
                                                            <div class="product_info">
                                                                <ul>
                                                                    <li><a href="#" title=" Add to Wishlist ">Add to Wishlist</a></li>
                                                                    <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </c:if>
                                        </div> 
                                    </div>       
                                </div> 
                                <!--new product area start-->  

                                <!--featured product start--> 
                                <div class="featured_product">
                                    <div class="block_title">
                                        <h3>Bán chạy nhất</h3>
                                    </div>
                                    <div class="row">
                                        <div class="product_active owl-carousel">
                                        <c:forEach items="${requestScope.LIST_PRODUCTS_SELLER}" var="p">
                                                <div class="col-lg-3">
                                                    <div class="single_product">
                                                        <div class="product_thumb">
                                                            <a href="single-product.html"><img src="${p.images[0]}" alt=""></a> 
                                                            <div class="hot_img">
                                                                <img src="assets\img\cart\span-hot.png" alt="">
                                                            </div>
                                                            <div class="product_action">
                                                                <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                            </div>
                                                        </div>
                                                        <div class="product_content">
                                                            <span class="product_price">${p.price}&#273</span>
                                                            <h3 class="product_title"><a href="single-product.html">${p.productName}</a></h3>
                                                        </div>
                                                        <div class="product_info">
                                                            <ul>
                                                                <li><a href="#" title=" Add to Wishlist ">Add to Wishlist</a></li>
                                                                <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view">View Detail</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
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
                                        <h3>Brands</h3>
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

        <!-- modal area start --> 
        <div class="modal fade" id="modal_box" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="modal_body">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5 col-md-5 col-sm-12">
                                    <div class="modal_tab">  
                                        <div class="tab-content" id="pills-tabContent">
                                            <div class="tab-pane fade show active" id="tab1" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="assets\img\product\product13.jpg" alt=""></a>    
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab2" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="assets\img\product\product14.jpg" alt=""></a>    
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab3" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="assets\img\product\product15.jpg" alt=""></a>    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal_tab_button">    
                                            <ul class="nav product_navactive" role="tablist">
                                                <li>
                                                    <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="false"><img src="assets\img\cart\cart17.jpg" alt=""></a>
                                                </li>
                                                <li>
                                                    <a class="nav-link" data-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false"><img src="assets\img\cart\cart18.jpg" alt=""></a>
                                                </li>
                                                <li>
                                                    <a class="nav-link button_three" data-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false"><img src="assets\img\cart\cart19.jpg" alt=""></a>
                                                </li>
                                            </ul>
                                        </div>    
                                    </div>  
                                </div> 
                                <div class="col-lg-7 col-md-7 col-sm-12">
                                    <div class="modal_right">
                                        <div class="modal_title mb-10">
                                            <h2>Handbag feugiat</h2> 
                                        </div>
                                        <div class="modal_price mb-10">
                                            <span class="new_price">$64.99</span>    
                                            <span class="old_price">$78.99</span>    
                                        </div>
                                        <div class="modal_content mb-10">
                                            <p>Short-sleeved blouse with feminine draped sleeve detail.</p>    
                                        </div>
                                        <div class="modal_size mb-15">
                                            <h2>size</h2>
                                            <ul>
                                                <li><a href="#">s</a></li>
                                                <li><a href="#">m</a></li>
                                                <li><a href="#">l</a></li>
                                                <li><a href="#">xl</a></li>
                                                <li><a href="#">xxl</a></li>
                                            </ul>
                                        </div>
                                        <div class="modal_add_to_cart mb-15">
                                            <form action="#">
                                                <input min="0" max="100" step="2" value="1" type="number">
                                                <button type="submit">add to cart</button>
                                            </form>
                                        </div>   
                                        <div class="modal_description mb-15">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>    
                                        </div> 
                                        <div class="modal_social">
                                            <h2>Share this product</h2>
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                            </ul>    
                                        </div>      
                                    </div>    
                                </div>    
                            </div>     
                        </div>
                    </div>    
                </div>
            </div>
        </div> 

        <!-- modal area end --> 




        <!-- all js here -->
        <%@include file="/common/web/add_js.jsp"%>
    </body>
</html>

