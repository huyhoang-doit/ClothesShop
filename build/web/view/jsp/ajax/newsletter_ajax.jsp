<%-- 
    Document   : newsletter_ajax
    Created on : Mar 29, 2024, 9:58:22 PM
    Author     : lvhho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Newsletter - ajax</title>
    </head>
    <body>
        <div class="block_title">
            <h3>newsletter</h3>
        </div> 
        <form action="EmailServlet" method="POST">
            <p>Sign up for your newsletter</p>
            <input placeholder="Your email address" type="text" name="email" value="<c:if test="${requestScope.EMAIL_CUSTOMER != null}">${requestScope.EMAIL_CUSTOMER}</c:if>">
                <button type="button" name="action" value="subscribe">Subscribe</button>
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
        </form>   
    </body>
</html>
