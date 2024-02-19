<div class="sidebar pe-4 pb-3">
    <nav class="navbar bg-light navbar-light">
        <a href="DispatchServlet" class="navbar-brand mx-4 mb-3">
            <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>DASHBOARD</h3>
        </a>
        <div class="d-flex align-items-center ms-4 mb-4">
            <div class="position-relative">
                <img class="rounded-circle" src="${sessionScope.account.avatar}" alt="" style="width: 40px; height: 40px;">
                <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
            </div>
            <div class="ms-3">
                <h6 class="mb-0">${sessionScope.account.firstName} ${sessionScope.account.lastName}</h6>
                <span>Admin</span>
            </div>
        </div>
        <div class="navbar-nav w-100">
            <a href="DispatchServlet" class="nav-item nav-link"><i class="fa-solid fa-house me-2"></i>Home</a>
            <a href="AdminServlet" class="nav-item nav-link ${action.equals("DASHBOARD") ? "active" : ""}"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
            <a href="ManageProductServlet" class="nav-item nav-link ${action.equals("MNGPRODUCT") ? "active" : ""}"><i class="fa fa-box me-2"></i>Products</a>
            <a href="ManageCategoryServlet" class="nav-item nav-link ${action.equals("MNGCATEGORY") ? "active" : ""}"><i class="fa fa-layer-group me-2"></i>Categories</a>
            <a href="table.html" class="nav-item nav-link"><i class="fa fa-boxes-packing me-2"></i>Suppliers</a>
            <a href="chart.html" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Charts</a>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>Pages</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="signin.html" class="dropdown-item">Sign In</a>
                    <a href="signup.html" class="dropdown-item">Sign Up</a>
                    <a href="404.html" class="dropdown-item">404 Error</a>
                    <a href="blank.html" class="dropdown-item">Blank Page</a>
                </div>
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Elements</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="button.html" class="dropdown-item">Buttons</a>
                    <a href="typography.html" class="dropdown-item">Typography</a>
                    <a href="element.html" class="dropdown-item">Other Elements</a>
                </div>
            </div>
        </div>
    </nav>
</div>