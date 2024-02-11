<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Clothes - Shop</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets\img\favicon.png">
		
		<!-- all css here -->
        <link rel="stylesheet" href="assets\css\bootstrap.min.css">
        <link rel="stylesheet" href="assets\css\plugin.css">
        <link rel="stylesheet" href="assets\css\bundle.css">
        <link rel="stylesheet" href="assets\css\style.css">
        <link rel="stylesheet" href="assets\css\responsive.css">
        <script src="assets\js\vendor\modernizr-2.8.3.min.js"></script>
    </head>
    <body>
            <!-- Add your site or application content here -->
            
            <!--pos page start-->
            <div class="pos_page">
                <div class="container">
                   <!--pos page inner-->
                    <div class="pos_page_inner">  
                       <!--header area -->
                        <div class="header_area">
                               <!--header top--> 
                                <div class="header_top">
                                   <div class="row align-items-center">
                                        <div class="col-lg-6 col-md-6">
                                           <div class="switcher">
                                                <ul>
                                                    <li class="languages"><a href="#"><img src="assets\img\logo\fontlogo.jpg" alt=""> English <i class="fa fa-angle-down"></i></a>
                                                        <ul class="dropdown_languages">
                                                            <li><a href="#"><img src="assets\img\logo\fontlogo.jpg" alt=""> English</a></li>
                                                            <li><a href="#"><img src="assets\img\logo\fontlogo2.jpg" alt=""> French </a></li>
                                                        </ul>   
                                                    </li> 

                                                    <li class="currency"><a href="#"> Currency : $ <i class="fa fa-angle-down"></i></a>
                                                        <ul class="dropdown_currency">
                                                            <li><a href="#"> Dollar (USD)</a></li>
                                                            <li><a href="#"> Euro (EUR)  </a></li>
                                                        </ul> 
                                                    </li> 
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6">
                                            <div class="header_links">
                                                <ul>
                                                    <li><a href="contact.html" title="Contact">Contact</a></li>
                                                    <li><a href="wishlist.html" title="wishlist">My wishlist</a></li>
                                                    <li><a href="my-account.html" title="My account">My account</a></li>
                                                    <li><a href="cart.html" title="My cart">My cart</a></li>
                                                    <li><a href="login.html" title="Login">Login</a></li>
                                                </ul>
                                            </div>   
                                        </div>
                                   </div> 
                                </div> 
                                <!--header top end-->

                                <!--header middel--> 
                                <div class="header_middel">
                                    <div class="row align-items-center">
                                       <!--logo start-->
                                        <div class="col-lg-3 col-md-3">
                                            <div class="logo">
                                                <a href="index.html"><img src="assets\img\logo\logo.jpg.png" alt=""></a>
                                            </div>
                                        </div>
                                        <!--logo end-->
                                        <div class="col-lg-9 col-md-9">
                                            <div class="header_right_info">
                                                <div class="search_bar">
                                                    <form action="#">
                                                        <input placeholder="Search..." type="text">
                                                        <button type="submit"><i class="fa fa-search"></i></button>
                                                    </form>
                                                </div>
                                                <div class="shopping_cart">
                                                    <a href="#"><i class="fa fa-shopping-cart"></i> 2Items - $209.44 <i class="fa fa-angle-down"></i></a>

                                                    <!--mini cart-->
                                                    <div class="mini_cart">
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
                                                        <div class="shipping_price">
                                                            <span> Shipping </span>
                                                            <span>  $7.00  </span>
                                                        </div>
                                                        <div class="total_price">
                                                            <span> total </span>
                                                            <span class="prices">  $227.00  </span>
                                                        </div>
                                                        <div class="cart_button">
                                                            <a href="checkout.html"> Check out</a>
                                                        </div>
                                                    </div>
                                                    <!--mini cart end-->
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>     
                                <!--header middel end-->      
                            <div class="header_bottom">
                                <div class="row">
                                        <div class="col-12">
                                            <div class="main_menu_inner">
                                                <div class="main_menu d-none d-lg-block">
                                                    <nav>
                                                        <ul>
                                                            <li class="active"><a href="index.html">Home</a>
                                                                <div class="mega_menu jewelry">
                                                                    <div class="mega_items jewelry">
                                                                        <ul>
                                                                            <li><a href="index.html">Home 1</a></li>
                                                                            <li><a href="index-2.html">Home 2</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div> 
                                                            </li>
                                                            <li><a href="shop.html">shop</a>
                                                                <div class="mega_menu jewelry">
                                                                    <div class="mega_items jewelry">
                                                                        <ul>
                                                                            <li><a href="shop-list.html">shop list</a></li>
                                                                            <li><a href="shop-fullwidth.html">shop Full Width Grid</a></li>
                                                                            <li><a href="shop-fullwidth-list.html">shop Full Width list</a></li>
                                                                            <li><a href="shop-sidebar.html">shop Right Sidebar</a></li>
                                                                            <li><a href="shop-sidebar-list.html">shop list Right Sidebar</a></li>
                                                                            <li><a href="single-product.html">Product Details</a></li>
                                                                            <li><a href="single-product-sidebar.html">Product sidebar</a></li>
                                                                            <li><a href="single-product-video.html">Product Details video</a></li>
                                                                            <li><a href="single-product-gallery.html">Product Details Gallery</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>  
                                                            </li>
                                                            <li><a href="#">women</a>
                                                                <div class="mega_menu">
                                                                    <div class="mega_top fix">
                                                                        <div class="mega_items">
                                                                            <h3><a href="#">Accessories</a></h3>
                                                                            <ul>
                                                                                <li><a href="#">Cocktai</a></li>
                                                                                <li><a href="#">day</a></li>
                                                                                <li><a href="#">Evening</a></li>
                                                                                <li><a href="#">Sundresses</a></li>
                                                                                <li><a href="#">Belts</a></li>
                                                                                <li><a href="#">Sweets</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="mega_items">
                                                                            <h3><a href="#">HandBags</a></h3>
                                                                            <ul>
                                                                                <li><a href="#">Accessories</a></li>
                                                                                <li><a href="#">Hats and Gloves</a></li>
                                                                                <li><a href="#">Lifestyle</a></li>
                                                                                <li><a href="#">Bras</a></li>
                                                                                <li><a href="#">Scarves</a></li>
                                                                                <li><a href="#">Small Leathers</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="mega_items">
                                                                            <h3><a href="#">Tops</a></h3>
                                                                            <ul>
                                                                                <li><a href="#">Evening</a></li>
                                                                                <li><a href="#">Long Sleeved</a></li>
                                                                                <li><a href="#">Shrot Sleeved</a></li>
                                                                                <li><a href="#">Tanks and Camis</a></li>
                                                                                <li><a href="#">Sleeveless</a></li>
                                                                                <li><a href="#">Sleeveless</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="mega_bottom fix">
                                                                        <div class="mega_thumb">
                                                                            <a href="#"><img src="assets\img\banner\banner1.jpg" alt=""></a>
                                                                        </div>
                                                                        <div class="mega_thumb">
                                                                            <a href="#"><img src="assets\img\banner\banner2.jpg" alt=""></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li><a href="#">men</a>
                                                                <div class="mega_menu">
                                                                    <div class="mega_top fix">
                                                                        <div class="mega_items">
                                                                            <h3><a href="#">Rings</a></h3>
                                                                            <ul>
                                                                                <li><a href="#">Platinum Rings</a></li>
                                                                                <li><a href="#">Gold Ring</a></li>
                                                                                <li><a href="#">Silver Ring</a></li>
                                                                                <li><a href="#">Tungsten Ring</a></li>
                                                                                <li><a href="#">Sweets</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="mega_items">
                                                                            <h3><a href="#">Bands</a></h3>
                                                                            <ul>
                                                                                <li><a href="#">Platinum Bands</a></li>
                                                                                <li><a href="#">Gold Bands</a></li>
                                                                                <li><a href="#">Silver Bands</a></li>
                                                                                <li><a href="#">Silver Bands</a></li>
                                                                                <li><a href="#">Sweets</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="mega_items">
                                                                            <a href="#"><img src="assets\img\banner\banner3.jpg" alt=""></a>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </li>
                                                            <li><a href="#">pages</a>
                                                                <div class="mega_menu">
                                                                    <div class="mega_top fix">
                                                                        <div class="mega_items">
                                                                            <h3><a href="#">Column1</a></h3>
                                                                            <ul>
                                                                                <li><a href="portfolio.html">Portfolio</a></li>
                                                                                <li><a href="portfolio-details.html">single portfolio </a></li>
                                                                                <li><a href="about.html">About Us </a></li>
                                                                                <li><a href="about-2.html">About Us 2</a></li>
                                                                                <li><a href="services.html">Service </a></li>
                                                                                <li><a href="my-account.html">my account </a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="mega_items">
                                                                            <h3><a href="#">Column2</a></h3>
                                                                            <ul>
                                                                                <li><a href="blog.html">Blog </a></li>
                                                                                <li><a href="blog-details.html">Blog  Details </a></li>
                                                                                <li><a href="blog-fullwidth.html">Blog FullWidth</a></li>
                                                                                <li><a href="blog-sidebar.html">Blog  Sidebar</a></li>
                                                                                <li><a href="faq.html">Frequently Questions</a></li>
                                                                                <li><a href="404.html">404</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="mega_items">
                                                                            <h3><a href="#">Column3</a></h3>
                                                                            <ul>
                                                                                <li><a href="contact.html">Contact</a></li>
                                                                                <li><a href="cart.html">cart</a></li>
                                                                                <li><a href="checkout.html">Checkout  </a></li>
                                                                                <li><a href="wishlist.html">Wishlist</a></li>
                                                                                <li><a href="login.html">Login</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            
                                                            <li><a href="blog.html">blog</a>
                                                                <div class="mega_menu jewelry">
                                                                    <div class="mega_items jewelry">
                                                                        <ul>
                                                                            <li><a href="blog-details.html">blog details</a></li>
                                                                            <li><a href="blog-fullwidth.html">blog fullwidth</a></li>
                                                                            <li><a href="blog-sidebar.html">blog sidebar</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>  
                                                            </li>
                                                            <li><a href="contact.html">contact us</a></li>

                                                        </ul>
                                                    </nav>
                                                </div>
                                                <div class="mobile-menu d-lg-none">
                                                    <nav>
                                                        <ul>
                                                            <li><a href="index.html">Home</a>
                                                                <div>
                                                                    <div>
                                                                        <ul>
                                                                            <li><a href="index.html">Home 1</a></li>
                                                                            <li><a href="index-2.html">Home 2</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div> 
                                                            </li>
                                                            <li><a href="shop.html">shop</a>
                                                                <div>
                                                                    <div>
                                                                        <ul>
                                                                            <li><a href="shop-list.html">shop list</a></li>
                                                                            <li><a href="shop-fullwidth.html">shop Full Width Grid</a></li>
                                                                            <li><a href="shop-fullwidth-list.html">shop Full Width list</a></li>
                                                                            <li><a href="shop-sidebar.html">shop Right Sidebar</a></li>
                                                                            <li><a href="shop-sidebar-list.html">shop list Right Sidebar</a></li>
                                                                            <li><a href="single-product.html">Product Details</a></li>
                                                                            <li><a href="single-product-sidebar.html">Product sidebar</a></li>
                                                                            <li><a href="single-product-video.html">Product Details video</a></li>
                                                                            <li><a href="single-product-gallery.html">Product Details Gallery</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>  
                                                            </li>
                                                            <li><a href="#">women</a>
                                                                <div>
                                                                    <div>
                                                                        <div>
                                                                            <h3><a href="#">Accessories</a></h3>
                                                                            <ul>
                                                                                <li><a href="#">Cocktai</a></li>
                                                                                <li><a href="#">day</a></li>
                                                                                <li><a href="#">Evening</a></li>
                                                                                <li><a href="#">Sundresses</a></li>
                                                                                <li><a href="#">Belts</a></li>
                                                                                <li><a href="#">Sweets</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div>
                                                                            <h3><a href="#">HandBags</a></h3>
                                                                            <ul>
                                                                                <li><a href="#">Accessories</a></li>
                                                                                <li><a href="#">Hats and Gloves</a></li>
                                                                                <li><a href="#">Lifestyle</a></li>
                                                                                <li><a href="#">Bras</a></li>
                                                                                <li><a href="#">Scarves</a></li>
                                                                                <li><a href="#">Small Leathers</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div>
                                                                            <h3><a href="#">Tops</a></h3>
                                                                            <ul>
                                                                                <li><a href="#">Evening</a></li>
                                                                                <li><a href="#">Long Sleeved</a></li>
                                                                                <li><a href="#">Shrot Sleeved</a></li>
                                                                                <li><a href="#">Tanks and Camis</a></li>
                                                                                <li><a href="#">Sleeveless</a></li>
                                                                                <li><a href="#">Sleeveless</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div>
                                                                        <div>
                                                                            <a href="#"><img src="assets\img\banner\banner1.jpg" alt=""></a>
                                                                        </div>
                                                                        <div>
                                                                            <a href="#"><img src="assets\img\banner\banner2.jpg" alt=""></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li><a href="#">men</a>
                                                                <div>
                                                                    <div>
                                                                        <div>
                                                                            <h3><a href="#">Rings</a></h3>
                                                                            <ul>
                                                                                <li><a href="#">Platinum Rings</a></li>
                                                                                <li><a href="#">Gold Ring</a></li>
                                                                                <li><a href="#">Silver Ring</a></li>
                                                                                <li><a href="#">Tungsten Ring</a></li>
                                                                                <li><a href="#">Sweets</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div>
                                                                            <h3><a href="#">Bands</a></h3>
                                                                            <ul>
                                                                                <li><a href="#">Platinum Bands</a></li>
                                                                                <li><a href="#">Gold Bands</a></li>
                                                                                <li><a href="#">Silver Bands</a></li>
                                                                                <li><a href="#">Silver Bands</a></li>
                                                                                <li><a href="#">Sweets</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div>
                                                                            <a href="#"><img src="assets\img\banner\banner3.jpg" alt=""></a>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </li>
                                                            <li><a href="#">pages</a>
                                                                <div>
                                                                    <div>
                                                                        <div>
                                                                            <h3><a href="#">Column1</a></h3>
                                                                            <ul>
                                                                                <li><a href="portfolio.html">Portfolio</a></li>
                                                                                <li><a href="portfolio-details.html">single portfolio </a></li>
                                                                                <li><a href="about.html">About Us </a></li>
                                                                                <li><a href="about-2.html">About Us 2</a></li>
                                                                                <li><a href="services.html">Service </a></li>
                                                                                <li><a href="my-account.html">my account </a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div>
                                                                            <h3><a href="#">Column2</a></h3>
                                                                            <ul>
                                                                                <li><a href="blog.html">Blog </a></li>
                                                                                <li><a href="blog-details.html">Blog  Details </a></li>
                                                                                <li><a href="blog-fullwidth.html">Blog FullWidth</a></li>
                                                                                <li><a href="blog-sidebar.html">Blog  Sidebar</a></li>
                                                                                <li><a href="faq.html">Frequently Questions</a></li>
                                                                                <li><a href="404.html">404</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div>
                                                                            <h3><a href="#">Column3</a></h3>
                                                                            <ul>
                                                                                <li><a href="contact.html">Contact</a></li>
                                                                                <li><a href="cart.html">cart</a></li>
                                                                                <li><a href="checkout.html">Checkout  </a></li>
                                                                                <li><a href="wishlist.html">Wishlist</a></li>
                                                                                <li><a href="login.html">Login</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            
                                                            <li><a href="blog.html">blog</a>
                                                                <div>
                                                                    <div>
                                                                        <ul>
                                                                            <li><a href="blog-details.html">blog details</a></li>
                                                                            <li><a href="blog-fullwidth.html">blog fullwidth</a></li>
                                                                            <li><a href="blog-sidebar.html">blog sidebar</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>  
                                                            </li>
                                                            <li><a href="contact.html">contact us</a></li>

                                                        </ul>
                                                    </nav>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
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
                                            <li class="has-sub"><a href="#"><i class="fa fa-caret-right"></i> women</a>
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
                                            <li class="has-sub"><a href="#"><i class="fa fa-caret-right"></i> Men</a>
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
                                            </li>

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

                                    <!--popular tags area-->
                                    <div class="sidebar_widget tags mb-35">
                                        <div class="block_title">
                                            <h3>popular tags</h3>
                                        </div>
                                        <div class="block_tags">
                                            <a href="#">ipod</a>
                                            <a href="#">sam sung</a>
                                            <a href="#">apple</a>
                                            <a href="#">iphone 5s</a>
                                            <a href="#">superdrive</a>
                                            <a href="#">shuffle</a>
                                            <a href="#">nano</a>
                                            <a href="#">iphone 4s</a>
                                            <a href="#">canon</a>
                                        </div>
                                    </div>
                                    <!--popular tags end-->

                                    <!--newsletter block start-->
                                    <div class="sidebar_widget newsletter mb-35">
                                        <div class="block_title">
                                            <h3>newsletter</h3>
                                        </div> 
                                        <form action="#">
                                            <p>Sign up for your newsletter</p>
                                            <input placeholder="Your email address" type="text">
                                            <button type="submit">Subscribe</button>
                                        </form>   
                                    </div>
                                    <!--newsletter block end--> 

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
                                                        <h1>Women's Fashion</h1>
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
                                            <h3>New Products</h3>
                                        </div>
                                        <div class="row">
                                            <div class="product_active owl-carousel">
                                                <div class="col-lg-3">
                                                    <div class="single_product">
                                                        <div class="product_thumb">
                                                           <a href="single-product.html"><img src="assets\img\product\product1.jpg" alt=""></a> 
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
                                                           <a href="single-product.html"><img src="assets\img\product\product2.jpg" alt=""></a> 
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
                                                           <a href="single-product.html"><img src="assets\img\product\product3.jpg" alt=""></a> 
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
                                                           <a href="single-product.html"><img src="assets\img\product\product4.jpg" alt=""></a> 
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
                                            </div> 
                                        </div>       
                                    </div> 
                                    <!--new product area start-->  

                                    <!--featured product start--> 
                                    <div class="featured_product">
                                        <div class="block_title">
                                            <h3>Featured Products</h3>
                                        </div>
                                        <div class="row">
                                            <div class="product_active owl-carousel">
                                                <div class="col-lg-3">
                                                    <div class="single_product">
                                                        <div class="product_thumb">
                                                           <a href="single-product.html"><img src="assets\img\product\product7.jpg" alt=""></a> 
                                                           <div class="hot_img">
                                                               <img src="assets\img\cart\span-hot.png" alt="">
                                                           </div>
                                                           <div class="product_action">
                                                               <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                           </div>
                                                        </div>
                                                        <div class="product_content">
                                                            <span class="product_price">$60.00</span>
                                                            <h3 class="product_title"><a href="single-product.html">Maecenas sit amet</a></h3>
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
                                                           <a href="single-product.html"><img src="assets\img\product\product8.jpg" alt=""></a> 
                                                           <div class="img_icone">
                                                               <img src="assets\img\cart\span-new.png" alt="">
                                                           </div>
                                                           <div class="product_action">
                                                               <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                           </div>
                                                        </div>
                                                        <div class="product_content">
                                                            <span class="product_price">$50.00</span>
                                                            <h3 class="product_title"><a href="single-product.html">Sed non turpis</a></h3>
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
                                                           <a href="single-product.html"><img src="assets\img\product\product9.jpg" alt=""></a> 
                                                           <div class="img_icone">
                                                               <img src="assets\img\cart\span-new.png" alt="">
                                                           </div>
                                                           <div class="product_action">
                                                               <a href="#"> <i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                           </div>
                                                        </div>
                                                        <div class="product_content">
                                                            <span class="product_price">$70.00</span>
                                                            <h3 class="product_title"><a href="single-product.html">Donec ac congue</a></h3>
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
                                                            <span class="product_price">$60.00</span>
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
                                                            <h3 class="product_title"><a href="single-product.html">Phasellus a arcu</a></h3>
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
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="assets\img\brand\brand1.jpg" alt=""></a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="assets\img\brand\brand2.jpg" alt=""></a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="assets\img\brand\brand3.jpg" alt=""></a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="assets\img\brand\brand4.jpg" alt=""></a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="assets\img\brand\brand5.jpg" alt=""></a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                                    <div class="single_brand">
                                                        <a href="#"><img src="assets\img\brand\brand6.jpg" alt=""></a>
                                                    </div>
                                                </div>
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
            <div class="footer_area">
                <div class="footer_top">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="footer_widget">
                                    <h3>About us</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <div class="footer_widget_contect">
                                        <p><i class="fa fa-map-marker" aria-hidden="true"></i>  19 Interpro Road Madison, AL 35758, USA</p>

                                        <p><i class="fa fa-mobile" aria-hidden="true"></i> (012) 234 432 3568</p>
                                        <a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i> Contact@plazathemes.com </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="footer_widget">
                                    <h3>My Account</h3>
                                    <ul>
                                        <li><a href="#">Your Account</a></li>
                                        <li><a href="#">My orders</a></li>
                                        <li><a href="#">My credit slips</a></li>
                                        <li><a href="#">My addresses</a></li>
                                        <li><a href="#">Login</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="footer_widget">
                                    <h3>Informations</h3>
                                    <ul>
                                        <li><a href="#">Specials</a></li>
                                        <li><a href="#">Our store(s)!</a></li>
                                        <li><a href="#">My credit slips</a></li>
                                        <li><a href="#">Terms and conditions</a></li>
                                        <li><a href="#">About us</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="footer_widget">
                                    <h3>extras</h3>
                                    <ul>
                                        <li><a href="#"> Brands</a></li>
                                        <li><a href="#"> Gift Vouchers </a></li>
                                        <li><a href="#"> Affiliates </a></li>
                                        <li><a href="#"> Specials </a></li>
                                        <li><a href="#"> Privacy policy </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer_bottom">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-6 col-md-6">
                                <div class="copyright_area">
                                    <ul>
                                        <li><a href="#"> about us </a></li>
                                        <li><a href="#">  Customer Service  </a></li>
                                        <li><a href="#">  Privacy Policy  </a></li>
                                    </ul>
                                    <p>Copyright &copy; 2018 <a href="#">Pos Coron</a>. All rights reserved. </p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="footer_social text-right">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                        <li><a class="pinterest" href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-wifi" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
        <script src="assets\js\vendor\jquery-1.12.0.min.js"></script>
        <script src="assets\js\popper.js"></script>
        <script src="assets\js\bootstrap.min.js"></script>
        <script src="assets\js\ajax-mail.js"></script>
        <script src="assets\js\plugins.js"></script>
        <script src="assets\js\main.js"></script>
    </body>
</html>

