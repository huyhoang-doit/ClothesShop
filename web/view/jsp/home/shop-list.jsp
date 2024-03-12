<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Shop list</title>
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
                                        <li>shop</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs area end-->
                    <c:set var="cat" value="${requestScope.LISTCATEGORIES}"/>
                    <!--pos home section-->
                    <div class=" pos_home_section">
                        <div class="row pos_home">
                            <form id="form-filter" action="FilterServlet" method="get" class="col-lg-3 col-md-12">
                                <!--layere categorie"-->
                                <input id="sortinput" type="hidden" value="${requestScope.VALUESORT}" name="valueSort"/>
                                <div class="sidebar_widget shop_c">
                                    <div class="categorie__titile">
                                        <h4>Phân loại</h4>
                                    </div>
                                    <div class="layere_categorie">
                                        <ul>
                                            <li>
                                                <input onclick="setCheck(this)" class="" ${(chid[0] || chid == null) ? "checked":""} 
                                                       id="defaultcate" value="0" name="id_filter" type="checkbox">
                                                <label for="defaultcate">Tất cả
                                                </label>
                                            </li>
                                            <c:forEach begin="0" end="${LISTCATEGORIES.size()-1}" var="i">
                                                <li>
                                                    <input onclick="setCheck(this)" ${chid[i+1] == true?"checked":""}
                                                           value="${cat.get(i).getId()}" id="${cat.get(i).getId()}" type="checkbox" name="id_filter">
                                                    <label for="${cat.get(i).getId()}">${cat.get(i).getName()}
                                                    </label>
                                                </li>
                                            </c:forEach>
                                            <input type="hidden" name="btnAction" value="${filterByCategory}" id="actionfilter">
                                        </ul>
                                    </div>
                                </div>
                                <!--layere categorie end-->

                                <!--color area start-->  
                                <div class="sidebar_widget color">
                                    <h2>Color</h2>
                                    <div class="widget_color">
                                        <ul>
                                            <li style="cursor: pointer" id="Black" onclick="getColor(this)"><a href="#"></a>Đen</li>

                                            <li style="cursor: pointer" id="Green" onclick="getColor(this)"><a href="#" ></a>Xanh lá</li>

                                            <li style="cursor: pointer" id="Orange" onclick="getColor(this)"><a href="#" ></a>Cam </li>

                                            <li style="cursor: pointer" id="Blue" onclick="getColor(this)"><a href="#" ></a>Xanh dương</li>

                                            <li style="cursor: pointer" id="Yellow" onclick="getColor(this)"><a href="#"></a>Vàng </li>

                                            <li style="cursor: pointer" id="Brown" onclick="getColor(this)"><a href="#" ></a>Nâu</li>

                                            <li style="cursor: pointer" id="White" onclick="getColor(this)"><a href="#" ></a>Trắng</li>

                                            <li style="cursor: pointer" id="Red" onclick="getColor(this)"><a href="#" ></a>Đỏ </li>
                                        </ul>
                                        <input type="hidden" value="${requestScope.CORLOR}" name="color" id="chooseColor"/>
                                    </div>
                                </div>                 
                                <!--color area end--> 


                                <!--price slider start-->                                     
                                <div class="sidebar_widget price">
                                    <h2>Price</h2>
                                    <div class="shopee-price-range-filter__inputs" style="margin: 1.25rem 2px 0.625rem;
                                         display: flex;
                                         justify-content: space-between;
                                         align-items: center;
                                         padding-right: 30px">
                                        <input type="number" style="height: 35px; width: 90px; background-color: white" name="pricefrom" class="shopee-price-range-filter__input" placeholder="&#273; FROM" value="${price1}" step="0.5" min=1>
                                        <div class="shopee-price-range-filter__range-line" style="
                                             flex: 1;
                                             height: 1px;
                                             background: #bdbdbd;
                                             margin: 0 10px;">
                                        </div>
                                        <input type="number" style="height: 35px; width: 90px; background-color: white" name="priceto" class="shopee-price-range-filter__input" placeholder="&#273; TO" value="${price2}" step="0.5" min=1">
                                    </div>
                                </div>                                    
                                <!--price slider end-->

                                <div class="sidebar_widget shop_c">
                                    <div class="categorie__titile">
                                        <h4>Discount</h4>
                                    </div>
                                    <div class="layere_categorie">
                                        <ul>
                                            <li>
                                                <input ${requestScope.DISCOUNT.equals("dis25") ? "checked" : ""} id="dis25" type="radio" name="discount" value="dis25">
                                                <label for="dis25">Up to 25%
                                                </label>
                                            </li>
                                            <li>
                                                <input ${requestScope.DISCOUNT.equals("dis40") ? "checked" : ""} id="dis50" type="radio" name="discount" value="dis40">
                                                <label for="dis50">Up to 40%
                                                </label>
                                            </li>
                                            <li>
                                                <input ${requestScope.DISCOUNT.equals("dis75") ? "checked" : ""} id="dis75" type="radio" name="discount" value="dis75">
                                                <label for="dis75">Up to 75%
                                                </label>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <button  class="submit-price" style="font-size: 16px;
                                         background-color: black;
                                         color: white;
                                         font-weight: 600;
                                         padding: 5px 40px;
                                         border-radius: 20px;
                                         margin: 10px 0 20px">Apply</button>
                                <a href="ShopServlet" class="submit-price" style="font-size: 16px;
                                   background-color: black;
                                   color: white;
                                   font-weight: 600;
                                   padding: 5px 40px;
                                   border-radius: 20px;
                                   margin: 10px 0 20px"
                                   type="reset">Reset</a>
                                <!--wishlist start-->
                                <c:if test="${sessionScope.account !=null || sessionScope.WISHLIST != null}">
                                    <!--wishlist block start-->
                                    <div class="sidebar_widget wishlist mb-35" id="wishlist-small">
                                        <div class="block_title">
                                            <h3><a href="WishlistServlet">Wishlist</a></h3>
                                        </div>
                                        <c:forEach items="${sessionScope.WISHLIST}" var="p" varStatus="loop">
                                            <c:if test="${loop.index <= 2}">
                                                <div class="cart_item">
                                                    <div class="cart_img">
                                                        <a href="SingleProductServlet?product_id=${p.id}"><img src="${p.images[0]}" alt=""></a>
                                                    </div>
                                                    <div class="cart_info">
                                                        <a href="SingleProductServlet?product_id=${p.id}">${p.name}</a>
                                                        <span class="cart_price">${p.salePrice}&#273;</span>
                                                    </div>
                                                    <!--                                                    <div class="cart_remove">
                                                                                                            <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                                                                                                        </div>-->
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                        <div class="block_content">
                                            <p>${sessionScope.WISHLIST.size()}  products</p>
                                            <a href="WishlistServlet">» My wishlists</a>
                                        </div>
                                    </div>
                                    <!--wishlist block end-->
                                </c:if>
                                <!--wishlist end-->

                            </form>
                            <div class="col-lg-9 col-md-12">
                                <!--banner slider start-->
                                <div class="banner_slider mb-35">
                                    <img src="view\assets\home\img\banner\banner10.jpg" alt="">
                                </div> 
                                <!--banner slider start-->

                                <!--shop toolbar start-->
                                <div class="shop_toolbar list_toolbar">
                                    <div class="list_button">
                                        <ul class="nav" role="tablist">
                                            <li>
                                                <a class="active" data-toggle="tab" href="#large" role="tab" aria-controls="large" aria-selected="true"><i class="fa fa-th-large"></i></a>
                                            </li>
                                            <!--                                            <li>
                                                                                            <a data-toggle="tab" href="#list" role="tab" aria-controls="list" aria-selected="false"><i class="fa fa-th-list"></i></a>
                                                                                        </li>-->
                                        </ul>
                                    </div>
                                    <div class="page_amount">
                                        <!--<p>Showing 1–<c:if test="${LISTPRODUCTS.size() < 9}">${LISTPRODUCTS.size()}</c:if><c:if test="${LISTPRODUCTS.size() >= 9}">9</c:if> of ${LISTPRODUCTS.size()}  results</p>-->

                                        </div>
                                        <div class="search_bar">
                                            <form action="#">
                                                <input oninput="searchProducts(this,'shop-list.jsp')" value="" placeholder="Search..." type="text">
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
                                                                        <img src="assets/home/img/cart/span-new.png" alt="">
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${p.discount != 0}">
                                                                    <span class="discount">Up to ${p.discount * 100}%</span>
                                                                </c:if>
                                                                <div class="product_action">
                                                                    <button style="display: block;
                                                                            border: none;
                                                                            width: 100%;
                                                                            background: #018576;
                                                                            color: #fff;
                                                                            padding: 7px 0;
                                                                            text-transform: capitalize;
                                                                            font-size: 13px;" onclick="addProductToCart('Add',${p.id}, 1)"> <i class="fa fa-shopping-cart"></i> Thêm vào giỏ</button>

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
                                        </div>
                                        <!--                                        <div class="tab-pane fade" id="list" role="tabpanel">
                                        <c:forEach items="${requestScope.LISTPRODUCTS}" var="p">
                                            <div class="product_list_item mb-35">
                                                <div class="row align-items-center">
                                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                                        <div class="product_thumb">
                                                            <a href="SingleProductServlet?product_id=${p.id}"><img src="${p.images[0]}" alt=""></a> 
                                                            <div class="hot_img">
                                                                <img src="view\assets\img\cart\span-hot.png" alt="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-8 col-md-6 col-sm-6">
                                                        <div class="list_product_content">
                                                            <div class="list_title">
                                                                <h3><a href="SingleProductServlet?product_id=${p.id}">${p.name}</a></h3>
                                                            </div>
                                                            <p class="design">${p.description}</p>
                                                            <div class="content_price">
                                            <c:if test="${p.price != p.salePrice}">
                                                <span class="old_price" id="oldprice">Rs. ${p.price}</span>
                                            </c:if>
                                            <span class="current_price">Rs. ${p.salePrice}
                                            </span>
                                        </div>
                                        <div class="add_links">
                                            <ul>
                                                <li><a href="CartServlet?product_id=${p.id}&quantity=1" title="add to cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                                                <li><a href="#" title="add to wishlist"><i class="fa fa-heart" aria-hidden="true"></i></a></li>

                                                <li><a href="SingleProductServlet?product_id=${p.id}" title="Quick view"><i class="fa fa-eye" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                                        </c:forEach>
                                    </div>-->
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
                                                        <a href="FilterServlet?page=${page - 1}&${requestScope.QUERYSTRING}">«</a>
                                                    </li>
                                                </c:if>
                                                <c:forEach var="i" begin="1" end="${requestScope.NUMBERPAGE}">
                                                    <li>
                                                        <a style="${page == i ? "color: #e84c3d" :""}" href="FilterServlet?page=${i}&${requestScope.QUERYSTRING}">${i}</a>
                                                    </li>
                                                </c:forEach>
                                                <c:if test="${page != NUMBERPAGE}">
                                                    <li>
                                                        <a href="FilterServlet?page=${page + 1}&${requestScope.QUERYSTRING}">»</a>
                                                    </li>
                                                </c:if>
                                            </c:if>
                                            <!--PAGING SEARCHSERLET--> 
                                            <c:if test="${requestScope.DATA_FROM == 'SearchServlet'}">
                                                <c:set var="page" value="${requestScope.CURRENTPAGE}"/>
                                                <c:if test="${page != 1}">
                                                    <li>
                                                        <a href="SearchServlet?page=${page - 1}&sort_group=${requestScope.SORT_GROUP}">«</a>
                                                    </li>
                                                </c:if>
                                                <c:forEach var="i" begin="1" end="${requestScope.NUMBERPAGE}">
                                                    <li>
                                                        <a style="${page == i ? "color: #e84c3d" :""}" href="SearchServlet?&page=${i}&sort_group=${requestScope.SORT_GROUP}">${i}</a>
                                                    </li>
                                                </c:forEach>
                                                <c:if test="${page != NUMBERPAGE}">
                                                    <li>
                                                        <a href="SearchServlet?page=${page + 1}&id_group=${requestScope.ID_GROUP}&sort_group=${requestScope.SORT_GROUP}">»</a>
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
        <%@include file="../../common/web/footer.jsp"%>
        <!--footer area end-->

        <!-- modal area start --> 
        <!-- modal area end --> 

        <!-- all js here -->
        <%@include file="../../common/web/add_js.jsp"%>
    </body>
</html>

