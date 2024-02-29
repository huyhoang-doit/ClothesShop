<%@page contentType="text/html" pageEncoding="UTF-8"%>   
<!-- Navbar-->
<header class="app-header">
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">


        <!-- User Menu-->
        <li><a class="app-nav__item" href="DispatchServlet"><i class='bx bx-log-out bx-rotate-180'></i> </a>

        </li>
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="${sessionScope.account.avatar}" 
                                        alt="User Image">
        <div>
            <p class="app-sidebar__user-name"><b>${sessionScope.account.firstName} ${sessionScope.account.lastName}</b></p>
            <p class="app-sidebar__user-designation">Chào mừng bạn trở lại</p>
        </div>
    </div>
    <hr>
    <ul class="app-menu">
        <li><a class="app-menu__item" href="DispatchServlet"><i class='app-menu__icon bx bx-home'></i><span
                    class="app-menu__label">Trang chủ</span></a></li>
        <li><a class="app-menu__item" href="AdminServlet"><i class='app-menu__icon bx bx-tachometer'></i><span
                    class="app-menu__label">Thống kê</span></a></li>
        <li><a class="app-menu__item" href="ChartServlet"><i class='app-menu__icon  fa fa-chart-bar'></i><span
                    class="app-menu__label">Biểu đồ</span></a></li>
        <li><a class="app-menu__item" href="ManageUserServlet"><i class='app-menu__icon bx bx-user-voice'></i><span
                    class="app-menu__label">Quản lý khách hàng</span></a></li>
        <li><a class="app-menu__item" href="ManageProductServlet"><i class='app-menu__icon bx bx-purchase-tag-alt'></i><span 
                    class="app-menu__label">Quản lý sản phẩm</span></a></li>
        <li><a class="app-menu__item" href="ManageCategoryServlet"><i class='app-menu__icon bx bx-task'></i><span
                    class="app-menu__label">Quản lý danh mục</span></a></li>
        <li><a class="app-menu__item" href="ManageOrderServlet"><i class='app-menu__icon bx bx-task'></i><span
                    class="app-menu__label">Quản lý đơn hàng</span></a></li>

    </ul>
</aside>