<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Clothes_Login</title>
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
                                    <form id="login-form" action="LoginServlet" method="post">
                                        <p> 
                                            <label>Username or email</label><br/>
                                            <input type="text" name="txtUsername" value="${requestScope.uName}"/>
                                        <h7 style="color: red">${requestScope.msg}</h7>
                                        </p>
                                        <p style="position: relative">   
                                            <label>Passwords <span>*</span></label>
                                            <input id="password" type="password" name="txtPassword" value="${requestScope.uPass}"/>
                                            <i id="iconsee" style="cursor: pointer; position: absolute; top: 40px; right: 10px" onclick="changeIcon(this)" class="fa-solid fa-eye-slash"></i>
                                        </p>
                                        <div class="g-recaptcha" data-sitekey="6LeKLH8pAAAAAFbXR7vi-Ms_Vp1V30SuomC7J5pv"></div>
                                        <div style="color: red" id="error"></div>
                                        <div  style="margin-top: 10px" class="login_submit">
                                            <button type="submit" name="btnAction" value="Login">login</button>
                                            <label for="remember">
                                                <input ${reMem==null?"":"checked"} id="remember" name="remember" type="checkbox">
                                                Remember me
                                            </label>
                                        </div>
                                        <div style="margin-top: 20px">
                                            <a class="login-with-google-btn" href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile&redirect_uri=http://localhost:8080/PRJ301_Sp24_ClothesShop/LoginServlet&response_type=code
                                               &client_id=40613383185-c4qs0q74c4g95fg8l8lr34q9765bpaet.apps.googleusercontent.com&approval_prompt=force">Login With Google</a>
                                            <a href="ForgotPasswordServlet?status=forgot" style="margin-left: 20px">Forgot password</a>
                                        </div>
                                    </form>
                                </div>    
                            </div>
                            <!--login area start-->

                            <!--register area start-->
                            <div class="col-lg-6 col-md-6">
                                <div class="account_form register">
                                    <h2>Register</h2>
                                    <form id="register-form" action="RegisterServlet" method="post">
                                        <h6 style="color: red">${requestScope.ERROR}</h6>
                                        <h6 style="color: green">${requestScope.SUCCESS}</h6>
                                        <h6 style="color: green">${requestScope.msgRegisterGG}</h6>
                                        <div style="display: flex; justify-content: space-between">
                                            <p style="width: 45%">   
                                                <label>First Name</label>
                                                <input name="firstname" ${requestScope.firstNameGoogleAccount != null ? readonly : ""} value="${requestScope.firstNameGoogleAccount != null ? requestScope.firstNameGoogleAccount : ""}" type="text" required>
                                            </p>
                                            <p style="width: 45%">
                                                <label>Last Name</label>
                                                <input name="lastname" ${requestScope.firstNameGoogleAccount != null ? readonly : ""} value="${requestScope.lastNameGoogleAccount != null ? requestScope.lastNameGoogleAccount : ""}" type="text" required>
                                            </p>
                                        </div>
                                        <p>   
                                            <label>Username</label>
                                            <input oninput="checkDuplicate(this)" name="username" type="text" required/>
                                            <h5 style="color: red" id="errorduplicate"></h5>
                                        </p>
                                        <input type="hidden" name="avatar" value="${requestScope.avatar}"/>
                                        <p style="position: relative">   
                                            <label>Passwords</label>
                                            <input id="firstpass" oninput="checkNumberCharacter(this)" name="password" type="password" required>
                                            <i id="iconsee" style="cursor: pointer; position: absolute; top: 40px; right: 10px" onclick="changeIcon(this)" class="fa-solid fa-eye-slash"></i>
                                            <label style="color: red; display:none; font-size: 14px" class="mb-1" id="text1"></label>
                                        </p>
                                        <p>   
                                            <label>Email</label>
                                            <input name="email" type="email"
                                                   ${requestScope.emailGG != null ? "readonly" : ""}
                                                   style="${requestScope.emailGG != null ? "background-color: #e9ecef;" : ""}"
                                                   value="${requestScope.emailGG != null ? requestScope.emailGG : ""}" required>
                                        </p>
                                        <div class="login_submit">
                                            <button name="btnAction" value="Register" type="submit" onclick="checkForm()">Register</button>
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
        <%@include file="../../common/web/footer.jsp"%>
        <!--footer area end-->

        <!-- all js here -->
        <%@include file="../../common/web/add_js.jsp"%>
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script>
                                                var form = document.getElementById("login-form");
                                                var error = document.getElementById("error");
                                                form.addEventListener("submit", function (event) {
                                                    event.preventDefault();
                                                    const response = grecaptcha.getResponse();
                                                    if (response) {
                                                        form.submit();
                                                    } else {
                                                        error.textContent = "Vui lòng xác minh rằng bạn không phải robot.";
                                                    }
                                                });
        </script>
    </body>
</html>

