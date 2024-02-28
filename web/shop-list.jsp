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
                            <form class="col-lg-3 col-md-12">
                                <!--layere categorie"-->
                                <input id="sortinput" type="hidden" value="${requestScope.VALUESORT}" name="valueSort"/>
                                <div class="sidebar_widget shop_c">
                                    <div class="categorie__titile">
                                        <h4>Categories</h4>
                                    </div>
                                    <div class="layere_categorie">
                                        <ul>
                                            <li>
                                                <input checked type="checkbox">
                                                <label>Tất cả
                                                    <span>(1)</span>
                                                </label>
                                            </li>
                                            <c:forEach items="${LISTCATEGORIES}" var="c">
                                                <li>
                                                    <input id="${c.id}" type="checkbox" name="">
                                                    <label for="${c.id}">${c.name}
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
                                        <input type="text" name="text" placeholder="">
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

                            </form>
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
                                        <!--<p>Showing 1–<c:if test="${LISTPRODUCTS.size() < 9}">${LISTPRODUCTS.size()}</c:if><c:if test="${LISTPRODUCTS.size() >= 9}">9</c:if> of ${LISTPRODUCTS.size()}  results</p>-->

                                        </div>
                                        <div class="search_bar">
                                            <form action="#">
                                                <input oninput="searchProducts(this)" value="" placeholder="Search..." type="text">
                                                <i style="margin-left: -24px" class="fa fa-search"></i>
                                            </form>
                                        </div>
                                    </div>
                                    <!--shop toolbar end-->

                                    <!--shop tab product-->
                                    <div class="shop_tab_product">   
                                        <div class="tab-content" id="myTabContent">
                                            <div class="select_option" style="margin-bottom: 20px; display: flex; justify-content: flex-end; align-items: center">
                                                <label style="">Sort By: </label>
                                                <form action="SortProductsServlet" method="get">
                                                    <select onchange="sortProducts(event)" name="orderby" id="sort">                                                
                                                        <option value="0">Nổi bật</option>
                                                        <option value="1">Giá: Thấp đến Cao</option>
                                                        <option value="2">Giá: Cao đến Thấp</option>
                                                        <option value="3">Tên: A- Z</option>
                                                    </select>
                                                </form>
                                            </div>
                                            <div class="tab-pane fade show active" id="large" role="tabpanel">
                                                <div class="row" id="listproduct">
                                                <c:forEach items="${requestScope.LISTPRODUCTS}" var="p">
                                                    <div class="col-lg-4 col-md-6">
                                                        <div class="single_product">
                                                            <div class="product_thumb">
                                                                <a href="SingleProductServlet?product_id=${p.id}"><img style="width: 250px; height:250px" src="${p.images[0]}" alt=""></a> 
                                                                    <c:if test="${p.releasedate.getYear() == 124}">
                                                                    <div class="img_icone">
                                                                        <img src="assets/img/cart/span-new.png" alt="">
                                                                    </div>
                                                                </c:if>
                                                                <div class="product_action">
                                                                    <a href="single-product.html"> <i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>
                                                                </div>
                                                            </div>
                                                            <div class="product_content">
                                                                <span class="product_price">${p.price}$</span>
                                                                <h3 class="product_title"><a href="SingleProductServlet?product_id=${p.id}">${p.name}</a></h3>
                                                            </div>
                                                            <div class="product_info">
                                                                <ul>
                                                                    <li><a href="#" title=" Add to Wishlist ">Yêu thích</a></li>
                                                                    <li><a href="SingleProductServlet?product_id=${p.id}" title="View Detail">Xem sản phẩm</a></li>
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
                                                                <a href="SingleProductServlet?product_id=${p.id}"><img src="${p.images[0]}" alt=""></a> 
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
                                                                    <h3><a href="SingleProductServlet?product_id=${p.id}">${p.name}</a></h3>
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

                                                                        <li><a href="SingleProductServlet?product_id=${p.id}" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
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
                                            <!--PAGING SHOPSERVLET--> 
                                            <c:if test="${requestScope.DATA_FROM == 'ShopServlet'}">
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
                                            </c:if>
                                            <!--PAGING FILTERSERVLET--> 
                                            <c:if test="${requestScope.DATA_FROM == 'FilterServlet'}">
                                                <c:set var="page" value="${requestScope.CURRENTPAGE}"/>
                                                <c:if test="${page != 1}">
                                                    <li>
                                                        <a href="FilterServlet?page=${page - 1}&id_group=${requestScope.ID_GROUP}&sort_group=${requestScope.SORT_GROUP}">«</a>
                                                    </li>
                                                </c:if>
                                                <c:forEach var="i" begin="1" end="${requestScope.NUMBERPAGE}">
                                                    <li>
                                                        <a style="${page == i ? "color: #e84c3d" :""}" href="FilterServlet?page=${i}&id_group=${requestScope.ID_GROUP}&sort_group=${requestScope.SORT_GROUP}">${i}</a>
                                                    </li>
                                                </c:forEach>
                                                <c:if test="${page != NUMBERPAGE}">
                                                    <li>
                                                        <a href="FilterServlet?page=${page + 1}&id_group=${requestScope.ID_GROUP}&sort_group=${requestScope.SORT_GROUP}">»</a>
                                                    </li>
                                                </c:if>
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
        <!-- modal area end --> 

        <!-- all js here -->
        <%@include file="/common/web/add_js.jsp"%>
    </body>
</html>

