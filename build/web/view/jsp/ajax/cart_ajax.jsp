<%-- 
    Document   : cart_ajax
    Created on : Mar 1, 2024, 9:50:28 AM
    Author     : lvhho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <c:if test="${sessionScope.CART != null}">
        <a href="#"><i class="fa fa-shopping-cart"></i> ${sessionScope.CART.size()} Items <i class="fa fa-angle-down"></i></a>
    </c:if>
    <c:if test="${sessionScope.CART == null}">
        <a href="#"><i class="fa fa-shopping-cart"></i> ${sessionScope.CART.size()}<i class="fa fa-angle-down"></i></a>
    </c:if>

    <!--mini cart-->
    <div class="mini_cart">
        <c:forEach items="${sessionScope.CART}" var="c">
            <div class="cart_item">
                <div class="cart_img">
                    <a href="SingleProductServlet?product_id=${c.product.id}"><img src="${c.product.images[0]}" alt=""></a>
                </div>
                <div class="cart_info">
                    <a href="SingleProductServlet?product_id=${c.product.id}">${c.product.name}</a>
                    <span class="cart_price">$${c.product.getSalePrice()}</span>
                    <span class="quantity">X ${c.quantity}</span>
                </div>
                <div class="cart_remove">
                    <a title="Remove this item" href="#"><i class="fa fa-times-circle"></i></a>
                </div>
            </div>
        </c:forEach>
        <div class="total_price">
            <span> Total </span>
            <span class="prices">  $
                <c:set var="totalPrice" value="0" />
                <c:forEach items="${sessionScope.CART}" var="c">
                    <c:set var="productTotal" value="${c.product.getSalePrice() * c.quantity}" />
                    <c:set var="totalPrice" value="${totalPrice + productTotal}" />
                </c:forEach>
                ${totalPrice}  
            </span>
        </div>
        <div class="cart_button">
            <a href="checkout.jsp"> Check out</a>
        </div>
    </div>
    <!--mini cart end-->
</body>
</html>
