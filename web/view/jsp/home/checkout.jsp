<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Checkout</title>
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
                                        <li>checkout</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs area end-->


                    <!--Checkout page section-->
                    <div class="Checkout_section">
                        <div class="row">
                            <div class="col-12">
                                <div class="user-actions mb-20">
                                    <c:if test="${sessionScope.account == null}">
                                        <h3> 
                                            <i class="fa fa-file-o" aria-hidden="true"></i>
                                            To pay for your order, you need to log in >>
                                            <a class="Returning" href="DispatchServlet?btnAction=Login">Click here to login</a>     
                                        </h3>

                                    </c:if>
                                    <c:if test="${sessionScope.account != null}">
                                        <h3> 
                                            <i class="fa fa-file-o" aria-hidden="true"></i>
                                            Edit information >>
                                            <a class="Returning" href="ProfileServlet">My account</a>     
                                        </h3>
                                    </c:if>
                                </div>
                            </div>
                            <div class="checkout_form">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6" style="padding: 0 36px;">
                                        <c:if test="${requestScope.MESSAGE != null}">
                                            <h3 style="color: ${requestScope.CHECK == 'true' ? 'green': 'red'}">
                                                ${requestScope.MESSAGE}
                                            </h3>
                                        </c:if>
                                        <form style="padding: 20px;
                                              border: 1px black solid;" action="#">
                                            <h3>Billing Details</h3>
                                            <div class="row">

                                                <div class="col-lg-6 mb-30">
                                                    <label>First Name <span>*</span></label>
                                                    <input type="text" value="${sessionScope.account != null ? sessionScope.account.firstName: ''}" readonly>    
                                                </div>
                                                <div class="col-lg-6 mb-30">
                                                    <label>Last Name  <span>*</span></label>
                                                    <input type="text" value="${sessionScope.account != null ? sessionScope.account.lastName: ''}" readonly> 
                                                </div>
                                                <div class="col-12 mb-30">
                                                    <label>Email</label>
                                                    <input type="email" value="${sessionScope.account != null ? sessionScope.account.email: ''}"readonly>     
                                                </div>
                                                <div class="col-12 mb-30">
                                                    <label>Address  <span>*</span></label>
                                                    <input placeholder="House number and street name" type="text" value="${sessionScope.account != null ? sessionScope.account.address: ''}" readonly>     
                                                </div>
                                                <div class="col-lg-6 mb-30">
                                                    <label>Phone<span>*</span></label>
                                                    <input type="number" value="${sessionScope.account != null ? sessionScope.account.phone: ''}" readonly> 

                                                </div> 
                                                <div class="col-lg-6 mb-30">
                                                    <label> Email Address   <span>*</span></label>
                                                    <input type="email" value="${sessionScope.account != null ? sessionScope.account.email: ''}" readonly> 

                                                </div> 
                                                <!--                                                <div class="col-12">
                                                                                                    <div class="order-notes">
                                                                                                        <label for="order_note">Order Notes</label>
                                                                                                        <textarea id="order_note" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                                                                                                    </div>    
                                                                                                </div>   
                                                -->

                                            </div>
                                        </form>    
                                    </div>
                                    <div class="col-lg-6 col-md-6" style="padding: 0 36px;">
                                        <c:if test="${sessionScope.CART != null && sessionScope.CART.size() > 0 }">

                                            <form action="CheckoutServlet" method="GET">    
                                                <h3>Your order</h3> 
                                                <div class="order_table table-responsive mb-30">
                                                    <table>
                                                        <thead>
                                                            <tr>
                                                                <th>Product</th>
                                                                <th>Total</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${sessionScope.CART}" var="c">
                                                                <tr>
                                                                    <td>${c.product.name}<strong> × ${c.quantity}</strong></td>
                                                                    <td> ${c.product.getSalePrice() * c.quantity}đ</td>
                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <th>Cart Subtotal</th>
                                                                <td>
                                                                    <c:set var="totalPrice" value="0" />
                                                                    <c:forEach items="${sessionScope.CART}" var="c">
                                                                        <c:set var="productTotal" value="${c.product.getSalePrice() * c.quantity}" />
                                                                        <c:set var="totalPrice" value="${totalPrice + productTotal}" />
                                                                    </c:forEach>
                                                                    ${totalPrice}đ
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th>Shipping</th>
                                                                <td><strong>Free Ship</strong></td>
                                                            </tr>
                                                            <tr class="order_total">
                                                                <th>Order Total</th>
                                                                <td><strong>
                                                                        <c:set var="totalPrice" value="0" />
                                                                        <c:forEach items="${sessionScope.CART}" var="c">
                                                                            <c:set var="productTotal" value="${c.product.getSalePrice() * c.quantity}" />
                                                                            <c:set var="totalPrice" value="${totalPrice + productTotal}" />
                                                                        </c:forEach>
                                                                        ${totalPrice}đ  
                                                                    </strong></td>
                                                            </tr>
                                                        </tfoot>
                                                    </table>     
                                                </div>
                                                <div class="payment_method">
                                                    <h3>PAYMENT</h3>
                                                    <c:forEach items="${requestScope.PAYMENTS}" var="p">
                                                        <div class="panel-default">
                                                            <input id="payment" name="check_method" type="radio" value="${p.paymentID}" checked>
                                                            <label for="payment" >${p.paymentMethod}</label>
                                                        </div> 
                                                    </c:forEach>
                                                </div> 
                                                <c:if test="${sessionScope.CART != null && sessionScope.CART.size() > 0}">
                                                    <c:if test="${sessionScope.account != null && sessionScope.account.roleID == 2}">
                                                        <div class="order_button">
                                                            <button type="submit" >Checkout</button> 
                                                        </div>    
                                                    </c:if>
                                                </c:if>
                                            </form>         
                                        </c:if>
                                        <c:if test="${sessionScope.CART == null || sessionScope.CART.size() == 0}">
                                            <div style="text-align: center;">
                                                <img  src="view/assets/home/img/cart/emptycart1.png" alt="Empty cart">
                                            </div>
                                            <div class="order_button">
                                                <form action="DispatchServlet" method="GET">
                                                    <button type="submit" >Shop Now</button> 
                                                </form>
                                            </div>   
                                        </c:if>
                                    </div>
                                </div> 
                            </div>        
                        </div>
                        <!--Checkout page section end-->

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

