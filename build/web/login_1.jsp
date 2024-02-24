<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Clothes_Login</title>
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
                                        <li>login</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs area end-->

                    <!-- customer login start -->
                    <div class="customer_login">
                        <div class="row">
                            <!--login area start-->
                            <div class="col-lg-6 col-md-6">
                                <div class="account_form">
                                    <h2>login</h2>
                                    <form action="LoginServlet" method="post">
                                        <p> 
                                            <label>Username or email</label><br/>
                                            <input type="text" name="txtUsername" value="${requestScope.uName}"/>
                                        <h7 style="color: red">${requestScope.msg}</h7>
                                        </p>
                                        <p>   
                                            <label>Passwords <span>*</span></label>
                                            <input type="password" name="txtPassword" value="${requestScope.uPass}">
                                        </p>   
                                        <div class="login_submit">
                                            <button type="submit" name="btnAction" value="Login">login</button>
                                            <label for="remember">
                                                <input ${reMem==null?"":"checked"} id="remember" name="remember" type="checkbox">
                                                Remember me
                                            </label>
                                            <a href="#" style="margin-left: 20px">Lost your password?</a>
                                            <a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/PRJ301_Sp24_ClothesShop/login.jsp&response_type=code
                                               &client_id=52994450990-huqfkmuhkervonke4l2tmsp8u1rhkv9b.apps.googleusercontent.com
                                               &approval_prompt=force">Login With Google</a>
                                        </div>
                                    </form>
                                </div>    
                            </div>
                            <!--login area start-->

                            <!--register area start-->
                            <div class="col-lg-6 col-md-6">
                                <div class="account_form register">
                                    <h2>Register</h2>
                                    <form action="#">
                                        <p>   
                                            <label>Email address  <span>*</span></label>
                                            <input type="text">
                                        </p>
                                        <p>   
                                            <label>Passwords <span>*</span></label>
                                            <input type="password">
                                        </p>
                                        <div class="login_submit">
                                            <button type="submit">Register</button>
                                        </div>
                                    </form>
                                </div>    
                            </div>
                            <!--register area end-->
                        </div>
                    </div>
                    <!-- customer login end -->

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

