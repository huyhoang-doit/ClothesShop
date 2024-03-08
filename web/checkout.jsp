<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Checkout</title>
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
                                            <a class="Returning" href="login.jsp">Click here to login</a>     
                                        </h3>
                                    </c:if>
                                    <!--                                    <div id="checkout_login" class="collapse" data-parent="#accordion">
                                                                            <div class="checkout_info">
                                                                                <form action="#">  
                                                                                    <div class="form_group mb-20">
                                                                                        <label>Username or email <span>*</span></label>
                                                                                        <input type="text">     
                                                                                    </div>
                                                                                    <div class="form_group mb-25">
                                                                                        <label>Password  <span>*</span></label>
                                                                                        <input type="text">     
                                                                                    </div> 
                                                                                    <div class="form_group group_3 ">
                                                                                        <input value="Login" type="submit">
                                                                                        <label for="remember_box">
                                                                                            <input id="remember_box" type="checkbox">
                                                                                            <span> Remember me </span>
                                                                                        </label>     
                                                                                    </div>
                                                                                    <a href="#">Lost your password?</a>
                                                                                </form>          
                                                                            </div>
                                                                        </div>    
                                                                    </div>-->
                                </div>
                            </div>
                            <div class="checkout_form">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <form action="#">
                                            <h3>Billing Details</h3>
                                            <div class="row">

                                                <div class="col-lg-6 mb-30">
                                                    <label>First Name <span>*</span></label>
                                                    <input type="text" value="${sessionScope.account != null ? sessionScope.account.firstName: ''}">    
                                                </div>
                                                <div class="col-lg-6 mb-30">
                                                    <label>Last Name  <span>*</span></label>
                                                    <input type="text" value="${sessionScope.account != null ? sessionScope.account.lastName: ''}"> 
                                                </div>
                                                <div class="col-12 mb-30">
                                                    <label>Email</label>
                                                    <input type="email" value="${sessionScope.account != null ? sessionScope.account.email: ''}">     
                                                </div>
                                                <!--                                            <div class="col-12 mb-30">
                                                                                                <label for="country">country <span>*</span></label>
                                                                                                <select name="cuntry" id="country"> 
                                                                                                    <option value="2">bangladesh</option>      
                                                                                                    <option value="3">Algeria</option> 
                                                                                                    <option value="4">Afghanistan</option>    
                                                                                                    <option value="5">Ghana</option>    
                                                                                                    <option value="6">Albania</option>    
                                                                                                    <option value="7">Bahrain</option>    
                                                                                                    <option value="8">Colombia</option>    
                                                                                                    <option value="9">Dominican Republic</option>   
                                                
                                                                                                </select>
                                                                                            </div>-->

                                                <div class="col-12 mb-30">
                                                    <label>Address  <span>*</span></label>
                                                    <input placeholder="House number and street name" type="text" value="${sessionScope.account != null ? sessionScope.account.address: ''}">     
                                                </div>
                                                <div class="col-lg-6 mb-30">
                                                    <label>Phone<span>*</span></label>
                                                    <input type="number" value="${sessionScope.account != null ? sessionScope.account.phone: ''}"> 

                                                </div> 
                                                <div class="col-lg-6 mb-30">
                                                    <label> Email Address   <span>*</span></label>
                                                    <input type="email" value="${sessionScope.account != null ? sessionScope.account.email: ''}"> 

                                                </div> 
                                                <div class="col-12">
                                                    <div class="order-notes">
                                                        <label for="order_note">Order Notes</label>
                                                        <textarea id="order_note" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                                                    </div>    
                                                </div>     	    	    	    	    	    	    
                                            </div>
                                        </form>    
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <form action="#">    
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
                                                                <td> $${c.product.getSalePrice() * c.quantity}</td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <th>Cart Subtotal</th>
                                                            <td>$
                                                                <c:set var="totalPrice" value="0" />
                                                                <c:forEach items="${sessionScope.CART}" var="c">
                                                                    <c:set var="productTotal" value="${c.product.getSalePrice() * c.quantity}" />
                                                                    <c:set var="totalPrice" value="${totalPrice + productTotal}" />
                                                                </c:forEach>
                                                                ${totalPrice}  
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th>Shipping</th>
                                                            <td><strong>Free Ship</strong></td>
                                                        </tr>
                                                        <tr class="order_total">
                                                            <th>Order Total</th>
                                                            <td><strong>$
                                                                    <c:set var="totalPrice" value="0" />
                                                                    <c:forEach items="${sessionScope.CART}" var="c">
                                                                        <c:set var="productTotal" value="${c.product.getSalePrice() * c.quantity}" />
                                                                        <c:set var="totalPrice" value="${totalPrice + productTotal}" />
                                                                    </c:forEach>
                                                                    ${totalPrice}  
                                                                </strong></td>
                                                        </tr>
                                                    </tfoot>
                                                </table>     
                                            </div>
                                            <div class="payment_method">
                                                <h3>PAYMENT</h3>
                                                <c:forEach items="${requestScope.PAYMENTS}" var="p">
                                                    <div class="panel-default">
                                                        <input id="payment" name="check_method" type="radio">
                                                        <label for="payment" >${p.paymentMethod}</label>
                                                    </div> 
                                                </c:forEach>
                                                <div class="order_button">
                                                    <button type="submit">Proceed to PayPal</button> 
                                                </div>    
                                            </div> 
                                        </form>         
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
            <%@include file="/common/web/footer.jsp"%>
            <!--footer area end-->






            <!-- all js here -->
            <%@include file="/common/web/add_js.jsp"%>
    </body>
</html>

