<%-- 
    Document   : cart_page
    Created on : Mar 14, 2024, 9:38:54 AM
    Author     : lvhho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row">
            <div class="col-12">
                <div class="table_desc" style="max-height: 600px; overflow-y: auto;">
                    <div class="cart_page table-responsive">
                        <c:if test="${sessionScope.CART == null || sessionScope.CART.size() == 0}">
                            <div style="text-align: center;">
                                <img  src="view/assets/home/img/cart/emptycart1.png" alt="Empty cart">
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.CART != null && sessionScope.CART.size() != 0}">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="product_thumb" style="min-width: 165px;">Image</th>
                                        <th class="product_name" style="min-width: 280px;">Product</th>
                                        <th class="product-price">Price</th>
                                        <th class="product_quantity"style="min-width: 150px;">Quantity</th>
                                        <th class="product_total">Total</th>
                                        <th class="product_remove">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${sessionScope.CART}" var="c">
                                        <tr>
                                            <td class="product_thumb"><a href="SingleProductServlet?product_id=${c.product.id}"><img src="${c.product.images[0]}" alt="Photo"></a></td>
                                            <td class="product_name"><a href="SingleProductServlet?product_id=${c.product.id}">${c.product.name}</a></td>
                                            <td class="product-price">${c.product.getSalePrice()}đ</td>
                                            <td class="product_quantity">
                                                <input id="input-quantity-${c.product.id}" min="0" max="${c.product.stock}" value="${c.quantity}" type="number">
                                                <h6 id="error-stock" style="color: red"></h6>
                                            </td>
                                            <td class="product_total">${c.product.getSalePrice() * c.quantity}đ</td>
                                            <td class="product_remove">
                                                <button style="color: #00bba6;
                                                        display: inline-block;
                                                        border: none;
                                                        border-radius: 4px;
                                                        padding: 2px 11px;
                                                        margin-right: 10px;
                                                        font-weight: 600;" onclick="updateProductCart('Update',${c.product.id},${c.product.stock})">Update</button>
                                                <!--<a href="CartServlet?action=Delete&product_id=${c.product.id}&curPage=cart.jsp"><i class="fa fa-trash-o"></i></a>-->
                                                <button style="color: #00bba6;
                                                        display: inline-block;
                                                        border: none;
                                                        border-radius: 4px;
                                                        padding: 2px 11px;
                                                        font-weight: 600;" onclick="deleteProductFromCartPage('Delete',${c.product.id}, 'cart.jsp')">Delete</button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>   
                        </c:if>

                    </div>  
                    <!--                                        <div class="cart_submit">
                                                                <button type="submit">update cart</button>
                                                            </div>      -->
                </div>
            </div>
        </div>
        <!--coupon code area start-->
        <div class="coupon_area">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="coupon_code">
                        <h3>Cart Totals</h3>
                        <div class="coupon_inner">
                            <div class="cart_subtotal">
                                <p>Subtotal</p>
                                <p class="cart_amount">
                                    <c:set var="totalPrice" value="0" />
                                    <c:forEach items="${sessionScope.CART}" var="c">
                                        <c:set var="productTotal" value="${c.product.getSalePrice() * c.quantity}" />
                                        <c:set var="totalPrice" value="${totalPrice + productTotal}" />
                                    </c:forEach>
                                    ${totalPrice}đ      
                                </p>
                            </div>
                            <div class="cart_subtotal ">
                                <p>Shipping</p>
                                <p class="cart_amount"><span></span> Free Ship</p>
                            </div>
                            <div class="cart_subtotal">
                                <p>Total</p>
                                <p class="cart_amount">
                                    <c:set var="totalPrice" value="0" />
                                    <c:forEach items="${sessionScope.CART}" var="c">
                                        <c:set var="productTotal" value="${c.product.getSalePrice() * c.quantity}" />
                                        <c:set var="totalPrice" value="${totalPrice + productTotal}" />
                                    </c:forEach>
                                    ${totalPrice}đ
                                </p>
                            </div>
                            <div class="checkout_btn">
                                <a href="CheckoutServlet">Checkout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--coupon code area end-->
        <%@include file="../../common/web/add_js.jsp"%>
    </body>
</html>
