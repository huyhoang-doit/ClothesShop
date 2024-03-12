
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
</body>
</html>
