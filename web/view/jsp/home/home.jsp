<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Clothes - Shop</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="view\assets\home\img\favicon.png">

        <!-- all css here -->
        <%@include file="../../common/web/add_css.jsp"%>
        <script>
            function subscribeEmailAtHome(action) {
                var email = document.getElementById('email-input-at-home').value;
                var action = action;
                $.ajax({
                    url: "/PRJ301_Sp24_ClothesShop/EmailServlet",
                    type: "get",
                    data: {
                        email: email,
                        action: action
                    },
                    success: function (data) {
                        var row = document.getElementById("newsletter-div");
                        row.innerHTML = data;
                    },
                    error: function (xhr) {
                    }
                });
            }</script>

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

                    <!--pos home section-->
                    <div class=" pos_home_section">
                        <div class="row pos_home">
                            <div class="col-lg-3 col-md-8 col-12">
                                <!--sidebar banner-->
                                <div class="sidebar_widget banner mb-35">
                                    <div class="banner_img mb-35">
                                        <a href="#"><img src="view\assets\home\img\banner\banner5.jpg" alt=""></a>
                                    </div>
                                    <div class="banner_img">
                                        <a href="#"><img src="view\assets\home\img\banner\banner6.jpg" alt=""></a>
                                    </div>
                                </div>
                                <!--sidebar banner end-->

                                <!--categorie menu start-->
                                <div class="sidebar_widget catrgorie mb-35">
                                    <h3>Bạn tìm</h3>
                                    <ul>
                                        <c:if test="${requestScope.LIST_TYPES!= null && !requestScope.LIST_TYPES.isEmpty()}">
                                            <c:forEach items="${requestScope.LIST_TYPES}" var="t">
                                                <li class="has-sub">
                                                    <a href="#"><i class="fa fa-caret-right"></i>${t.name}</a>
                                                        <c:forEach items="${requestScope.LIST_CATEGORIESS}" var="c">
                                                            <c:if test="${t.id == c.type.id}" >
                                                            <ul class="categorie_sub">
                                                                <li><a href="FilterServlet?btnAction=filterByCategory&id_filter=${c.id}"><i class="fa fa-caret-right"></i> ${c.name}</a>
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
                                <c:if test="${sessionScope.WISHLIST != null}">
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
                                                        <span class="cart_price">$${p.salePrice}</span>
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
                                <c:if test="${sessionScope.account == null}">
                                    <!--newsletter block start-->
                                    <div class="sidebar_widget newsletter mb-35" id="newsletter-div">
                                        <div class="block_title">
                                            <h3>newsletter</h3>
                                        </div> 
                                        <p>Sign up for your newsletter</p>
                                        <input id="email-input-at-home" placeholder="Your email address" type="text" value="<c:if test="${requestScope.EMAIL_CUSTOMER != null}">${requestScope.EMAIL_CUSTOMER}</c:if>">
                                            <button  onclick="subscribeEmailAtHome('subscribe')">Subscribe</button>
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
                                    </div>
                                    <!--newsletter block end--> 
                                </c:if>

                                <!--sidebar banner-->
                                <div class="sidebar_widget bottom ">
                                    <div class="banner_img">
                                        <a href="#"><img src="view\assets\home\img\banner\banner9.jpg" alt=""></a>
                                    </div>
                                </div>
                                <!--sidebar banner end-->
                            </div>
                            <div class="col-lg-9 col-md-12">
                                <!--banner slider start-->
                                <div class="banner_slider slider_1">
                                    <div class="slider_active owl-carousel">
                                        <div class="single_slider" style="background-image: url(view/assets/home/img/slider/slide_1.png)">
                                            <div class="slider_content">
                                                <div class="slider_content_inner">  
                                                    <h1>Men's Fashion</h1>
                                                    <p>Thời trang, phong cách trẻ trung. </p>
                                                    <a href="ShopServlet">shop now</a>
                                                </div>     
                                            </div>    
                                        </div>
                                        <div class="single_slider" style="background-image: url(view/assets/home/img/slider/slide_2.png)">
                                            <div class="slider_content">
                                                <div class="slider_content_inner">  
                                                    <h1>New Collection</h1>
                                                    <p>Nơi cập nhật những trào lưu bạn cần. </p>
                                                    <a href="ShopServlet">shop now</a>
                                                </div>         
                                            </div>         
                                        </div>
                                        <div class="single_slider" style="background-image: url(view/assets/home/img/slider/slide_3.png)">
                                            <div class="slider_content">  
                                                <div class="slider_content_inner">  
                                                    <h1>Best Collection</h1>
                                                    <p>Bộ sưu tập mùa hè, mùa đông. </p>
                                                    <a href="ShopServlet">shop now</a>
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
                                                <c:forEach var="p" items="${requestScope.LIST_PRODUCTS_NEW}">
                                                    <div class="col-lg-3">
                                                        <div class="single_product">
                                                            <div class="product_thumb">
                                                                <a href="SingleProductServlet?product_id=${p.id}"><img src="${p.images[0]}" alt=""></a> 
                                                                <div class="img_icone">
                                                                    <img src="view/assets/home/img/cart/span-new.png" alt="">
                                                                </div>
                                                                <c:if test="${p.discount != 0}">
                                                                    <span class="discount">Up to ${p.discount * 100}%</span>
                                                                </c:if>
                                                                <div class="product_action">
                                                                    <!--<a href="CartServlet?action=Add&product_id=${p.id}&quantity=1"> <i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>-->
                                                                    <button style="display: block;
                                                                            border: none;
                                                                            width: 100%;
                                                                            background: #018576;
                                                                            color: #fff;
                                                                            padding: 7px 0;
                                                                            text-transform: capitalize;
                                                                            font-size: 13px;" onclick="addProductToCart('Add',${p.id}, 1)"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ</button>

                                                                </div>
                                                            </div>
                                                            <div class="product_content">
                                                                <div style="display: flex; justify-content: center">
                                                                    <c:if test="${p.price != p.salePrice}">
                                                                        <span style="margin-right: 10px; font-weight: 400;" class="old_price" id="oldprice">Rs. ${p.price}&#273;</span>
                                                                    </c:if>
                                                                    <span class="current_price">Rs. ${p.salePrice}&#273;
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
                                                            <a href="SingleProductServlet?product_id=${p.id}"><img src="${p.images[0]}" alt=""></a> 
                                                            <div class="hot_img">
                                                                <img src="view\assets\home\img\cart\span-hot.png" alt="">
                                                            </div>
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
                                                                <span class="current_price">Rs. ${p.salePrice}&#273;
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
                                </div>     
                                <!--featured product end--> 

                                <!--banner area start-->
                                <div class="banner_area mb-60">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6">
                                            <div class="single_banner">
                                                <a href="FilterServlet?discount=dis40"><img src="view\assets\home\img\banner\banner7.jpg" alt=""></a>
                                                <div class="banner_title">
                                                    <p>Up to <span> 40%</span> off</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6">
                                            <div class="single_banner">
                                                <a href="FilterServlet?discount=dis25"><img src="view\assets\home\img\banner\banner8.jpg" alt=""></a>
                                                <div class="banner_title title_2">
                                                    <p>sale off <span> 25%</span></p>
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
                                                        <a href="FilterServlet?btnAction=filterBySupplier&id_filter=${s.id}"><img src="${s.image}" alt=""></a>
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
        <%@include file="../../common/web/footer.jsp"%>
        <!--footer area end-->
        <!-- all js here -->
        <%@include file="../../common/web/add_js.jsp"%>
    </body>
</html>

