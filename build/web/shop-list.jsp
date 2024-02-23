<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Shop list</title>
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
                                        <li><a href="DispatchServlet">home</a></li>
                                        <li><i class="fa fa-angle-right"></i></li>
                                        <li>shop</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs area end-->

                    <!--pos home section-->
                    <div class=" pos_home_section">
                        <div class="row pos_home">
                            <div class="col-lg-3 col-md-12">
                                <!--layere categorie"-->
                                <div class="sidebar_widget shop_c">
                                    <div class="categorie__titile">
                                        <h4>Categories</h4>
                                    </div>
                                    <div class="layere_categorie">
                                        <ul>
                                            <c:forEach items="${LISTCATEGORIES}" var="c">
                                                <li>
                                                    <input type="checkbox">
                                                    <label for="acces">${c.categoryName}
                                                        <span>(1)</span>
                                                    </label>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                                <!--layere categorie end-->

                                <!--color area start-->  
                                <div class="sidebar_widget color">
                                    <h2>Color</h2>
                                    <div class="widget_color">
                                        <ul>

                                            <li><a href="#">Black <span>(10)</span></a></li>

                                            <li><a href="#">Orange <span>(12)</span></a></li>

                                            <li> <a href="#">Blue <span>(14)</span></a></li>

                                            <li><a href="#">Yellow <span>(15)</span></a></li>

                                            <li><a href="#">pink <span>(16)</span></a></li>

                                            <li><a href="#">green <span>(11)</span></a></li>

                                        </ul>
                                    </div>
                                </div>                 
                                <!--color area end--> 


                                <!--price slider start-->                                     
                                <div class="sidebar_widget price">
                                    <h2>Price</h2>
                                    <div class="ca_search_filters">

                                        <input type="text" name="text" id="amount">  
                                        <div id="slider-range"></div> 
                                    </div>
                                </div>                                                       
                                <!--price slider end-->

                                <!--special product start-->
                                <div class="sidebar_widget special">
                                    <div class="block_title">
                                        <h3>Special Products</h3>
                                    </div>
                                    <div class="special_product_inner mb-20">
                                        <div class="special_p_thumb">
                                            <a href="#"><img src="assets\img\cart\cart3.jpg" alt=""></a>
                                        </div>
                                        <div class="small_p_desc">
                                            <div class="product_ratting">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h3><a href="#">Lorem ipsum dolor</a></h3>
                                            <div class="special_product_proce">
                                                <span class="old_price">$124.58</span>
                                                <span class="new_price">$118.35</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="special_product_inner">
                                        <div class="special_p_thumb">
                                            <a href="#"><img src="assets\img\cart\cart18.jpg" alt=""></a>
                                        </div>
                                        <div class="small_p_desc">
                                            <div class="product_ratting">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h3><a href="#">Printed Summer</a></h3>
                                            <div class="special_product_proce">
                                                <span class="old_price">$124.58</span>
                                                <span class="new_price">$118.35</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--special product end-->


                            </div>
                            <div class="col-lg-9 col-md-12">
                                <!--banner slider start-->
                                <div class="banner_slider mb-35">
                                    <img src="assets\img\banner\bannner10.jpg" alt="">
                                </div> 
                                <!--banner slider start-->

                                <!--shop toolbar start-->
                                <div class="shop_toolbar list_toolbar">
                                    <div class="list_button">
                                        <ul class="nav" role="tablist">
                                            <li>
                                                <a class="active" data-toggle="tab" href="#large" role="tab" aria-controls="large" aria-selected="true"><i class="fa fa-th-large"></i></a>
                                            </li>
                                            <li>
                                                <a data-toggle="tab" href="#list" role="tab" aria-controls="list" aria-selected="false"><i class="fa fa-th-list"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="page_amount">
                                        <p>Showing 1–9 of 21 results</p>
                                    </div>
                                    <div class="search_bar">
                                        <form action="#">
                                            <input placeholder="Search..." type="text">
                                            <button type="submit"><i class="fa fa-search"></i></button>
                                        </form>
                                    </div>
                                </div>
                                <!--shop toolbar end-->

                                <!--shop tab product-->
                                <div class="shop_tab_product">   
                                    <div class="tab-content" id="myTabContent">
                                        <div class="select_option" style="margin-bottom: 20px">
                                            <form action="#" style="display: flex; justify-content: flex-end; align-items: center">
                                                <label style="">Sort By: </label>
                                                <select  name="orderby" id="short">
                                                    <option selected="" value="1">Price: Lowest</option>
                                                    <option value="1">Price: Highest</option>
                                                    <option value="1">Product Name:Z</option>
                                                    <option value="1">Sort by price:low</option>
                                                    <option value="1">Product Name: Z</option>
                                                    <option value="1">In stock</option>
                                                    <option value="1">Product Name: A</option>
                                                    <option value="1">In stock</option>
                                                </select>
                                            </form>
                                        </div>
                                        <div class="tab-pane fade show active" id="large" role="tabpanel">
                                            <div class="row">
                                                <c:forEach items="${requestScope.LISTPRODUCTS}" var="p">
                                                    <div class="col-lg-4 col-md-6">
                                                        <div class="single_product">
                                                            <div class="product_thumb">
                                                                <a href="single-product.html"><img style="width: 250px; height:250px" src="${p.images[0]}" alt=""></a> 
                                                                    <c:if test="${p.releasedate.getYear() == 124}">
                                                                    <div class="img_icone">
                                                                        <img src="assets/img/cart/span-new.png" alt="">
                                                                    </div>
                                                                </c:if>
                                                                <div class="product_action">
                                                                    <a href="single-product.html"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                                </div>
                                                            </div>
                                                            <div class="product_content">
                                                                <span class="product_price">${p.price}$</span>
                                                                <h3 class="product_title"><a href="#">${p.productName}</a></h3>
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
                                        <div class="tab-pane fade" id="list" role="tabpanel">
                                            <c:forEach items="${requestScope.LISTPRODUCTS}" var="p">

                                                <div class="product_list_item mb-35">
                                                    <div class="row align-items-center">
                                                        <div class="col-lg-4 col-md-6 col-sm-6">
                                                            <div class="product_thumb">
                                                                <a href="single-product.html"><img src="${p.images[0]}" alt=""></a> 
                                                                <div class="hot_img">
                                                                    <img src="assets\img\cart\span-hot.png" alt="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-8 col-md-6 col-sm-6">
                                                            <div class="list_product_content">
                                                                <div class="product_ratting">
                                                                    <ul>
                                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="list_title">
                                                                    <h3><a href="single-product.html">${p.productName}</a></h3>
                                                                </div>
                                                                <p class="design">${p.description}</p>
                                                                <div class="content_price">
                                                                    <c:if test="${p.price != p.salePrice}">
                                                                        <span class="old_price" id="oldprice">Rs. ${p.price}</span>
                                                                    </c:if>
                                                                    <span class="current_price ani-fire">Rs. ${p.salePrice}
                                                                    </span>
                                                                </div>
                                                                <div class="add_links">
                                                                    <ul>
                                                                        <li><a href="#" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                                                                        <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                                                                        <li><a href="#" data-toggle="modal" data-target="#modal_box" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                            </c:forEach>
                                        </div>

                                    </div>
                                </div>    
                                <!--shop tab product end-->

                                <!--pagination style start--> 
                                <div class="pagination_style">
                                    <div class="page_number">
                                        <span>Pages: </span>
                                        <ul>
                                            <c:set var="page" value="${requestScope.CURRENTPAGE}"/>
                                            <c:if test="${page != 1}">
                                                <li>
                                                    <a href="ShopServlet?page=${page - 1}">«</a>
                                                </li>
                                            </c:if>
                                            <c:forEach var="i" begin="1" end="${requestScope.NUMBERPAGE}">
                                                <li>
                                                    <a style="${page == i ? "color: #e84c3d" :""}" href="ShopServlet?page=${i}">${i}</a>
                                                </li>
                                            </c:forEach>
                                            <c:if test="${page != NUMBERPAGE}">
                                                <li>
                                                    <a href="ShopServlet?page=${page + 1}">»</a>
                                                </li>
                                            </c:if>
                                        </ul>
                                    </div>
                                </div>
                                <!--pagination style end--> 
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

