<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>My account</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="view\assets\home\img\favicon.png">

        <!-- all css here -->
        <%@include file="../../common/web/add_css.jsp"%>
        <style type="text/css">
        </style>
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
                                            <li style="margin-bottom: 20px"><img style="border: 5px solid #00BBA6; height: 255px" src="${sessionScope.account.avatar}" width="100%"></li>
                                            <li><a href="#account-details" data-toggle="tab" class="nav-link active">Account details</a></li>
                                                <c:if test="${sessionScope.account != null && sessionScope.account.roleID == 2}">
                                                <li> <a href="#orders" data-toggle="tab" class="nav-link">Orders</a></li>
                                                </c:if>

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
                                        <div class="tab-pane fade show active" id="account-details">
                                            <h3>Account details</h3>
                                            <c:if test="${requestScope.STATUS !=null }" >
                                                <h6 style="color: green">${requestScope.STATUS}</h6>
                                            </c:if>
                                            <div class="login">
                                                <div class="login_form_container">
                                                    <div class="account_login_form">
                                                        <form id="form-1"action="EditProfileServlet" method="get">
                                                            <label>Username</label>
                                                            <input class="input_type " type="text" name="username" value="${sessionScope.account.userName}" readonly>
                                                            <label>Role</label>
                                                            <input class="input_type " type="text" name="role" value="${sessionScope.account.roleID == 1? "Admin" : "Customer"}" readonly>
                                                            <label>First Name</label>
                                                            <input class="input_type " type="text" name="first-name" value="${sessionScope.account.firstName}" readonly>
                                                            <label>Last Name</label>
                                                            <input class="input_type " type="text" name="last-name" value="${sessionScope.account.lastName}" readonly>
                                                            <label>Email</label>
                                                            <input class="input_type " type="text" name="email" value="${sessionScope.account.email}" readonly>
                                                            <input class="input_type " type="hidden" name="avatar" value="${sessionScope.account.avatar}" readonly>
                                                            <label>Address</label>
                                                            <input class="input_type " type="text" name="address" value="${sessionScope.account.address}" readonly>
                                                            <label>Phone</label>
                                                            <input class="input_type input_read" type="text" value="${sessionScope.account.phone}" name="phone" readonly>
                                                            <div class="save_button primary_btn default_button">
                                                                <button onclick="changeType(this)" id="edit" type="button">Edit</button>
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
        <%@include file="../../common/web/footer.jsp"%>
        <!-- all js here -->
        <%@include file="../../common/web/add_js.jsp"%>
        <script type="text/javascript">
            function changeType(button) {
                var inputElements = document.querySelectorAll(".input_type");
                if (button.id === "edit") {
                    button.textContent = "Save";
                    button.id = "save";
                    inputElements.forEach(x => {
                        if (x.name !== "username" && x.name !== "role") {
                            x.readOnly = false;
                            x.classList.add("default_input");
                        }
                    });
                } else {
                    document.getElementById("form-1").submit();
                    button.textContent = "Edit";
                    button.id = "edit";
                    inputElements.forEach(x => {
                        x.readOnly = true;
                        x.classList.remove("default_input");
                    });
                }
            }
        </script>
    </body>
</body>
</html>
