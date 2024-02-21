<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>My account</title>
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
                                        <li><a href="index.html">home</a></li>
                                        <li><i class="fa fa-angle-right"></i></li>
                                        <li>my account</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--breadcrumbs area end-->

                    <!-- Start Maincontent  -->
                    <section class="main_content_area">
                        <div class="account_dashboard">
                            <div class="row">
                                <div class="col-sm-12 col-md-3 col-lg-3">
                                    <!-- Nav tabs -->
                                    <div class="dashboard_tab_button">
                                        <ul role="tablist" class="nav flex-column dashboard-list">
                                            <li style="margin-bottom: 25px"><img style="border: 5px solid #00BBA6" src="${sessionScope.account.avatar}" width="100%"></li>
                                            <li><a href="#account-details" data-toggle="tab" class="nav-link active">Account details</a></li>
                                            <li> <a href="#orders" data-toggle="tab" class="nav-link">Orders</a></li>
                                            <li><a href="#address" data-toggle="tab" class="nav-link">Addresses</a></li>
                                        </ul>
                                    </div>    
                                </div>
                                <div class="col-sm-12 col-md-9 col-lg-9">
                                    <!-- Tab panes -->
                                    <div class="tab-content dashboard_content">
                                        <div class="tab-pane fade" id="orders">
                                            <h3>Orders</h3>
                                            <div class="coron_table table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>Order ID</th>
                                                            <th>Date</th>
                                                            <th>Status</th>
                                                            <th>Total</th>
                                                            <th>Actions</th>	 	 	 	
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${requestScope.LISTORDERS}" var="o">
                                                            <tr>
                                                                <td>${o.orderID}</td>
                                                                <td>${o.orderDate}</td>
                                                                <td><span class="success">${o.status == true ? "Đã giao" : "Chưa giao"}</span></td>
                                                                <td>${o.totalPrice}</td>
                                                                <td><a href="cart.html" class="view">view</a></td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="address">
                                            <p>The following addresses will be used on the checkout page by default.</p>
                                            <h4 class="billing-address">Billing address</h4>
                                            <a href="#" class="view">Edit</a>
                                            <p><strong>Bobby Jackson</strong></p>
                                            <address>
                                                House #15<br>
                                                Road #1<br>
                                                Block #C <br>
                                                Banasree <br>
                                                Dhaka <br>
                                                1212
                                            </address>
                                            <p>Bangladesh</p>   
                                        </div>
                                        <div class="tab-pane fade show active" id="account-details">
                                            <h3>Account details</h3>
                                            <div class="login">
                                                <div class="login_form_container">
                                                    <div class="account_login_form">
                                                        <form action="#">
                                                            <label>Username</label>
                                                            <input style="background-color: #e9ecef;" type="text" name="user-password" value="${sessionScope.account.userName}" readonly>
                                                            <label>First Name</label>
                                                            <input type="text" name="first-name" value="${sessionScope.account.firstName}">
                                                            <label>Last Name</label>
                                                            <input type="text" name="last-name" value="${sessionScope.account.lastName}">
                                                            <label>Email</label>
                                                            <input type="text" name="email-name" value="${sessionScope.account.email}">
                                                            <label>Role</label>
                                                            <input type="text" value="${sessionScope.account.roleID == 1? "Admin" : "Customer"}" name="birthday">
                                                            <br>
                                                            <!--                                                            <span class="custom_checkbox">
                                                                                                                            <input type="checkbox" value="1" name="newsletter">
                                                                                                                            <label>Sign up for our newsletter<br><em>You may unsubscribe at any moment. For that purpose, please find our contact info in the legal notice.</em></label>
                                                                                                                        </span>-->
                                                            <div class="save_button primary_btn default_button">
                                                                <a href="#">Save</a>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>      	
                    </section>			
                    <!-- End Maincontent  --> 
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
</body>
</html>
