<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Clothes-Shop-404</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets\home\img\favicon.png">
		
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

                        <!--error section area start-->
                        <div class="error_section">
                            <div class="row">
                                <div class="col-12">
                                    <div class="error_form">
                                        <h1>404</h1>
                                        <h2>Opps! PAGE NOT BE FOUND</h2>
                                        <p>Sorry but the page you are looking for does not exist, have been<br> removed, name changed or is temporarity unavailable.</p>
                                        <a href="DispatchServlet">Back to home page</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--error section area end-->   
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
