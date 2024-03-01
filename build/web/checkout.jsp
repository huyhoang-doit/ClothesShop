<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Coron-checkout</title>
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
                        <!--                            <div class="row">
                                                           <div class="col-12">
                                                                <div class="user-actions mb-20">
                                                                    <h3> 
                                                                        <i class="fa fa-file-o" aria-hidden="true"></i>
                                                                        Returning customer?
                                                                        <a class="Returning" href="#" data-toggle="collapse" data-target="#checkout_login" aria-expanded="true">Click here to login</a>     
                        
                                                                    </h3>
                                                                     <div id="checkout_login" class="collapse" data-parent="#accordion">
                                                                        <div class="checkout_info">
                                                                            <p>If you have shopped with us before, please enter your details in the boxes below. If you are a new customer please proceed to the Billing & Shipping section.</p>  
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
                                                                </div>
                                                                <div class="user-actions mb-20">
                                                                    <h3> 
                                                                        <i class="fa fa-file-o" aria-hidden="true"></i>
                                                                        Returning customer?
                                                                        <a class="Returning" href="#" data-toggle="collapse" data-target="#checkout_coupon" aria-expanded="true">Click here to enter your code</a>     
                        
                                                                    </h3>
                                                                     <div id="checkout_coupon" class="collapse" data-parent="#accordion">
                                                                        <div class="checkout_info">
                                                                            <form action="#">
                                                                                <input placeholder="Coupon code" type="text">
                                                                                 <input value="Apply coupon" type="submit">
                                                                            </form>
                                                                        </div>
                                                                    </div>    
                                                                </div>    
                                                           </div>
                                                        </div>-->
                        <div class="checkout_form">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <form action="#">
                                        <h3>Billing Details</h3>
                                        <div class="row">

                                            <div class="col-lg-6 mb-30">
                                                <label>First Name <span>*</span></label>
                                                <input type="text">    
                                            </div>
                                            <div class="col-lg-6 mb-30">
                                                <label>Last Name  <span>*</span></label>
                                                <input type="text"> 
                                            </div>
                                            <div class="col-12 mb-30">
                                                <label>Company Name</label>
                                                <input type="text">     
                                            </div>
                                            <div class="col-12 mb-30">
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
                                            </div>

                                            <div class="col-12 mb-30">
                                                <label>Street address  <span>*</span></label>
                                                <input placeholder="House number and street name" type="text">     
                                            </div>
                                            <div class="col-12 mb-30">
                                                <input placeholder="Apartment, suite, unit etc. (optional)" type="text">     
                                            </div>
                                            <div class="col-12 mb-30">
                                                <label>Town / City <span>*</span></label>
                                                <input type="text">    
                                            </div> 
                                            <div class="col-12 mb-30">
                                                <label>State / County <span>*</span></label>
                                                <input type="text">    
                                            </div> 
                                            <div class="col-lg-6 mb-30">
                                                <label>Phone<span>*</span></label>
                                                <input type="text"> 

                                            </div> 
                                            <div class="col-lg-6 mb-30">
                                                <label> Email Address   <span>*</span></label>
                                                <input type="text"> 

                                            </div> 
                                            <div class="col-12 mb-30">
                                                <input id="account" type="checkbox" data-target="createp_account">
                                                <label for="account" data-toggle="collapse" data-target="#collapseOne" aria-controls="collapseOne">Create an account?</label>

                                                <div id="collapseOne" class="collapse one" data-parent="#accordion">
                                                    <div class="card-body1">
                                                        <label> Account password   <span>*</span></label>
                                                        <input placeholder="password" type="password">  
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 mb-30">
                                                <input id="address" type="checkbox" data-target="createp_account">
                                                <label class="righ_0" for="address" data-toggle="collapse" data-target="#collapsetwo" aria-controls="collapseOne">Ship to a different address?</label>

                                                <div id="collapsetwo" class="collapse one" data-parent="#accordion">
                                                    <div class="row">
                                                        <div class="col-lg-6 mb-30">
                                                            <label>First Name <span>*</span></label>
                                                            <input type="text">    
                                                        </div>
                                                        <div class="col-lg-6 mb-30">
                                                            <label>Last Name  <span>*</span></label>
                                                            <input type="text"> 
                                                        </div>
                                                        <div class="col-12 mb-30">
                                                            <label>Company Name</label>
                                                            <input type="text">     
                                                        </div>
                                                        <div class="col-12 mb-30">
                                                            <div class="select_form_select">
                                                                <label for="countru_name">country <span>*</span></label>
                                                                <select name="cuntry" id="countru_name"> 
                                                                    <option value="2">bangladesh</option>      
                                                                    <option value="3">Algeria</option> 
                                                                    <option value="4">Afghanistan</option>    
                                                                    <option value="5">Ghana</option>    
                                                                    <option value="6">Albania</option>    
                                                                    <option value="7">Bahrain</option>    
                                                                    <option value="8">Colombia</option>    
                                                                    <option value="9">Dominican Republic</option>   

                                                                </select>
                                                            </div> 
                                                        </div>

                                                        <div class="col-12 mb-30">
                                                            <label>Street address  <span>*</span></label>
                                                            <input placeholder="House number and street name" type="text">     
                                                        </div>
                                                        <div class="col-12 mb-30">
                                                            <input placeholder="Apartment, suite, unit etc. (optional)" type="text">     
                                                        </div>
                                                        <div class="col-12 mb-30">
                                                            <label>Town / City <span>*</span></label>
                                                            <input type="text">    
                                                        </div> 
                                                        <div class="col-12 mb-30">
                                                            <label>State / County <span>*</span></label>
                                                            <input type="text">    
                                                        </div> 
                                                        <div class="col-lg-6 mb-30">
                                                            <label>Phone<span>*</span></label>
                                                            <input type="text"> 

                                                        </div> 
                                                        <div class="col-lg-6">
                                                            <label> Email Address   <span>*</span></label>
                                                            <input type="text"> 

                                                        </div> 
                                                    </div>
                                                </div>
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
                                            <div class="panel-default">
                                                <input id="payment" name="check_method" type="radio" data-target="createp_account">
                                                <label for="payment" data-toggle="collapse" data-target="#method" aria-controls="method">Create an account?</label>

                                                <div id="method" class="collapse one" data-parent="#accordion">
                                                    <div class="card-body1">
                                                        <p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                                    </div>
                                                </div>
                                            </div> 
                                            <div class="panel-default">
                                                <input id="payment_defult" name="check_method" type="radio" data-target="createp_account">
                                                <label for="payment_defult" data-toggle="collapse" data-target="#collapsedefult" aria-controls="collapsedefult">PayPal <img src="assets\img\visha\papyel.png" alt=""></label>

                                                <div id="collapsedefult" class="collapse one" data-parent="#accordion">
                                                    <div class="card-body1">
                                                        <p>Pay via PayPal; you can pay with your credit card if you don’t have a PayPal account.</p> 
                                                    </div>
                                                </div>
                                            </div>
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

