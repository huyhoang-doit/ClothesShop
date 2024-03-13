<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Single product</title>
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
                            <form action="CartServlet" method="GET">
                                <input type="hidden" name="product_id" value="${PRODUCT.id}">
                                <input type="hidden" name="action" value="Add">
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
                                                            <a href="#"><img style="margin-bottom: 10px; border: 1px solid #00BBA6" src="${img}" alt=""></a>
                                                            <div class="img_icone">
                                                                <img src="view\assets\home\img\cart\span-new.png" alt="">
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
                                                <span>${PRODUCT.getSalePrice()}&#273;</span>
                                                <span class="old-price">$${PRODUCT.price}&#273;</span>
                                                <h6 id="error-stock" style="color: red"></h6>
                                            </div>
                                            <div class="box_quantity mb-20">
                                                <form action="#">
                                                    <label>Số lượng</label>
                                                    <input id="input-quantity" min="1" max="${PRODUCT.stock}" value="1" type="number" name="quantity">
                                                </form>
                                                <button type="button" onclick="addProductFromSingle('Add',${PRODUCT.id}, ${PRODUCT.stock})">
                                                    <i class="fa fa-shopping-cart"></i> thêm vào giỏ
                                                </button>
                                                <button type="button" onclick="addProductToWishlist('Add',${PRODUCT.id})"><i class="fa fa-heart" aria-hidden="true"></i></button>    
                                            </div>
                                            <div class="sidebar_widget color">
                                                <h2>size</h2>
                                                <div class="widget_color">
                                                    <ul>
                                                        <c:forEach items="${PRODUCT.size}" var="s" varStatus="loop">
                                                            <li><button type="button">${s}</button></li>
                                                            </c:forEach>
                                                    </ul>
                                                </div>
                                            </div>     

                                            <div class="sidebar_widget color">
                                                <h2>màu</h2>
                                                <div class="widget_color">
                                                    <ul>
                                                        <c:forEach items="${PRODUCT.colors}" var="s" varStatus="loop">
                                                            <li><button type="button">${s}</button></li>
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
                            </form>
                        </c:if>
                    </div>
                    <!--product details end-->
                    <!--new product area start-->
                    <div class="new_product_area product_page">
                        <div class="row">
                            <div class="col-12">
                                <div class="block_title">
                                    <h3>  ${requestScope.LIST_PRODUCTS_SAME_CATEGORY.size()} sản phẩm cùng loại</h3>
                                </div>
                            </div> 
                        </div>
                        <!--<div class="single_p_active owl-carousel">-->
                        <div class="row">
                            <c:forEach items="${requestScope.LIST_PRODUCTS_SAME_CATEGORY}" var="p">
                                <div class="col-lg-3">
                                    <div class="single_product">
                                        <div class="product_thumb">
                                            <a href="SingleProductServlet?product_id=${p.id}"><img src="${p.images[0]}" alt=""></a> 
                                            <div class="img_icone">
                                                <img src="view\assets\home\img\cart\span-new.png" alt="">
                                            </div>
                                            <div class="product_action">
                                                <button style="color: #00bba6;
                                                        border: none;
                                                        border-radius: 4px;
                                                        font-size: 13px;
                                                        padding: 2px 11px;
                                                        font-weight: 600;"
                                                        onclick="addProductToCart('Add',${p.id}, 1)"> <i class="fa fa-shopping-cart"></i> Thêm vào giỏ</button>
                                            </div>

                                        </div>
                                        <div class="product_content">
                                            <div style="display: flex; justify-content: center">
                                                <c:if test="${p.price != p.salePrice}">
                                                    <span style="margin-right: 10px; font-weight: 400;" class="old_price" id="oldprice">Rs. ${p.price}&#273;</span>
                                                </c:if>
                                                <span class="current_price">Rs. ${p.getSalePrice()}&#273;
                                                </span>
                                            </div>
                                            <h3 class="product_title"><a href="SingleProductServlet?product_id=${p.id}">${p.name}</a></h3>

                                        </div>
                                        <div class="product_info">
                                            <ul>
                                                <!--<li><a href="WishlistServlet?action=Add&product_id=${p.id}" title=" Add to Wishlist ">Yêu thích</a></li>-->
                                                <li><button style="color: red;
                                                            border: none;
                                                            border-radius: 4px;
                                                            font-size: 13px;
                                                            padding: 2px 11px;
                                                            font-weight: 600;" onclick="addProductToWishlist('Add',${p.id})">Yêu thích</button></li>
                                                <li><a href="SingleProductServlet?product_id=${p.id}" title="View Detail">Xem sản phẩm</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div> 
                        <!--</div>-->      
                    </div> 
                    <!--new product area start-->  
                </div>
                <!--pos page inner end-->
            </div>
        </div>
        <!--pos page end-->

        <!--footer area start-->
        <%@include file="../../common/web/footer.jsp"%>
        <!--footer area end-->
        <!-- modal area start --> 
        <!-- modal area end --> 
        <!-- all js here -->
        <%@include file="../../common/web/add_js.jsp"%>
    </body>
</html>
