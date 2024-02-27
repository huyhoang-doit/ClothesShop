<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header_area">
    <!--header top--> 
    <div class="header_top">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-6">
                <!--                <div class="switcher">
                                    <ul>
                                        <li class="languages"><a href="#"><img src="assets\img\logo\fontlogo.jpg" alt=""> English <i class="fa fa-angle-down"></i></a>
                                            <ul class="dropdown_languages">
                                                <li><a href="#"><img src="assets\img\logo\fontlogo.jpg" alt=""> English</a></li>         
                                            </ul>   
                                        </li> 
                
                                        <li class="currency"><a href="#"> Currency : $ <i class="fa fa-angle-down"></i></a>
                                            <ul class="dropdown_currency">
                                                <li><a href="#"> Dollar (USD)</a></li>
                                                <li><a href="#"> Euro (EUR)  </a></li>
                                            </ul> 
                                        </li> 
                                    </ul>
                                </div>-->
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="header_links">
                    <ul>
                        <li><a href="contact.jsp" title="Contact">Contact</a></li>
                        <li><a href="wishlist.jsp" title="wishlist">My wishlist</a></li>
                            <c:if test="${sessionScope.account != null}">
                            <li><a href="ProfileServlet" title="My account">My account</a></li>
                            </c:if>
                        <li><a href="cart.jsp" title="My cart">My cart</a></li>  
                            <c:if test="${sessionScope.account == null}">
                            <li><a href="LoginServlet?action=Login" title="Login">Login</a></li>  
                            </c:if>
                            <c:if test="${sessionScope.account != null}">
                            <li><a href="${sessionScope.account.roleID == 1 ? 'AdminServlet' : 'ProfileServlet'} ">Hello, ${sessionScope.account.firstName} ${sessionScope.account.lastName}!</a></li>
                            <li><a href="DispatchServlet?btnAction=Logout">Logout</a></li>
                            </c:if>
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
                    <a href="DispatchServlet"><img src="assets\img\logo\logo.jpg.png" alt=""></a>
                </div>
            </div>
            <!--logo end-->
            <div class="col-lg-9 col-md-9">
                <div class="header_right_info">
                    <div class="search_bar">
                        <form action="DispatchServlet" method="get" >
                            <input name="txtSearch" value="" placeholder="Search..." type="text">
                            <button name="btnAction" value="Search" type="submit"><i class="fa fa-search"></i></button>
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
                                <a href="checkout.jsp"> Check out</a>
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
                                <li class="active"><a href="DispatchServlet">Home</a></li>
                                <li><a href="ShopServlet">SHOP</a></li>
                                <li><a href="contact.jsp">contact us</a></li>

                            </ul>
                        </nav>
                    </div>
                    <div class="mobile-menu d-lg-none">
                        <nav>
                            <ul>
                                <li><a href="home.jsp">Home</a></li>
                                <li><a href="shop-list.jsp">shop</a>
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
                                <li><a href="contact.jsp">contact us</a></li>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
