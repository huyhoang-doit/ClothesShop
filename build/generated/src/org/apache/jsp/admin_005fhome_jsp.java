package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/common/taglib.jsp");
    _jspx_dependants.add("/common/admin/sidebar.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Admin</title>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <!-- Main CSS-->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"admin/css/main.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css\">\r\n");
      out.write("        <!-- or -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://unpkg.com/boxicons@latest/css/boxicons.min.css\">\r\n");
      out.write("        <!-- Font-icon css-->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\"\r\n");
      out.write("              href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.2/css/all.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css\">\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body onload=\"time()\" class=\"app sidebar-mini rtl\">\r\n");
      out.write("        <!-- Navbar-->\r\n");
      out.write("        ");
      out.write("   \r\n");
      out.write("<!-- Navbar-->\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css\">\r\n");
      out.write("<header class=\"app-header\">\r\n");
      out.write("    <!-- Sidebar toggle button--><a class=\"app-sidebar__toggle\" href=\"#\" data-toggle=\"sidebar\"\r\n");
      out.write("                                    aria-label=\"Hide Sidebar\"></a>\r\n");
      out.write("    <!-- Navbar Right Menu-->\r\n");
      out.write("    <ul class=\"app-nav\">\r\n");
      out.write("        <!-- User Menu-->\r\n");
      out.write("        <li><a class=\"app-nav__item\" href=\"DispatchServlet\"><i class='bx bx-log-out bx-rotate-180'></i> </a>\r\n");
      out.write("\r\n");
      out.write("        </li>\r\n");
      out.write("    </ul>\r\n");
      out.write("</header>\r\n");
      out.write("<!-- Sidebar menu-->\r\n");
      out.write("<div class=\"app-sidebar__overlay\" data-toggle=\"sidebar\"></div>\r\n");
      out.write("<aside class=\"app-sidebar\">\r\n");
      out.write("    <div class=\"app-sidebar__user\"><img class=\"app-sidebar__user-avatar\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account.avatar}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" \r\n");
      out.write("                                        alt=\"User Image\">\r\n");
      out.write("        <div>\r\n");
      out.write("            <p class=\"app-sidebar__user-name\"><b>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account.firstName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account.lastName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</b></p>\r\n");
      out.write("            <p class=\"app-sidebar__user-designation\">Chào mừng bạn trở lại</p>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <hr>\r\n");
      out.write("    <ul class=\"app-menu\">\r\n");
      out.write("        <li><a class=\"app-menu__item\" href=\"DispatchServlet\"><i class='app-menu__icon bx bx-home'></i><span\r\n");
      out.write("                    class=\"app-menu__label\">Trang chủ</span></a></li>\r\n");
      out.write("        <li><a class=\"app-menu__item\" href=\"AdminServlet\"><i class='app-menu__icon bx bx-tachometer'></i><span\r\n");
      out.write("                    class=\"app-menu__label\">Thống kê</span></a></li>\r\n");
      out.write("        <li><a class=\"app-menu__item\" href=\"ChartServlet\"><i class='app-menu__icon fa fa-chart-bar'></i><span\r\n");
      out.write("                    class=\"app-menu__label\">Biểu đồ</span></a></li>\r\n");
      out.write("        <li><a class=\"app-menu__item\" href=\"ManageUserServlet\"><i class='app-menu__icon bx bx-user-voice'></i><span\r\n");
      out.write("                    class=\"app-menu__label\">Quản lý khách hàng</span></a></li>\r\n");
      out.write("        <li><a class=\"app-menu__item\" href=\"ManageProductServlet\"><i class='app-menu__icon bx bx-purchase-tag-alt'></i><span \r\n");
      out.write("                    class=\"app-menu__label\">Quản lý sản phẩm</span></a></li>\r\n");
      out.write("        <li><a class=\"app-menu__item\" href=\"ManageCategoryServlet\"><i class='app-menu__icon fa fa-layer-group'></i><span\r\n");
      out.write("                    class=\"app-menu__label\">Quản lý danh mục</span></a></li>\r\n");
      out.write("        <li><a class=\"app-menu__item\" href=\"ManageOrderServlet\"><i class='app-menu__icon bx bx-task'></i><span\r\n");
      out.write("                    class=\"app-menu__label\">Quản lý đơn hàng</span></a></li>\r\n");
      out.write("\r\n");
      out.write("    </ul>\r\n");
      out.write("</aside>");
      out.write("\r\n");
      out.write("        <main class=\"app-content\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-md-12\">\r\n");
      out.write("                    <div class=\"app-title\">\r\n");
      out.write("                        <ul class=\"app-breadcrumb breadcrumb\">\r\n");
      out.write("                            <li class=\"breadcrumb-item\"><a href=\"#\"><b>Bảng điều khiển</b></a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                        <div id=\"clock\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-md-12 col-lg-12\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <!-- col-6 -->\r\n");
      out.write("                        <div class=\"col-md-6\">\r\n");
      out.write("                            <div class=\"widget-small primary coloured-icon\"><i class='icon bx bxs-user-account fa-3x'></i>\r\n");
      out.write("                                <div class=\"info\">\r\n");
      out.write("                                    <h4>Tổng khách hàng</h4>\r\n");
      out.write("                                    <p><b>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.TOTALUSERS}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" khách hàng</b></p>\r\n");
      out.write("                                    <p class=\"info-tong\">Tổng số khách hàng được quản lý.</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- col-6 -->\r\n");
      out.write("                        <div class=\"col-md-6\">\r\n");
      out.write("                            <div class=\"widget-small info coloured-icon\"><i class='icon bx bxs-data fa-3x'></i>\r\n");
      out.write("                                <div class=\"info\">\r\n");
      out.write("                                    <h4>Tổng sản phẩm</h4>\r\n");
      out.write("                                    <p><b>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.TOTALPRODUCTS}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" sản phẩm</b></p>\r\n");
      out.write("                                    <p class=\"info-tong\">Tổng số sản phẩm được quản lý.</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- col-6 -->\r\n");
      out.write("                        <div class=\"col-md-6\">\r\n");
      out.write("                            <div class=\"widget-small warning coloured-icon\"><i class='icon bx bxs-shopping-bags fa-3x'></i>\r\n");
      out.write("                                <div class=\"info\">\r\n");
      out.write("                                    <h4>Tổng đơn hàng</h4>\r\n");
      out.write("                                    <p><b>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.TOTALORDERS}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" đơn hàng</b></p>\r\n");
      out.write("                                    <p class=\"info-tong\">Tổng số hóa đơn bán hàng trong tháng.</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- col-6 -->\r\n");
      out.write("                        <div class=\"col-md-6\">\r\n");
      out.write("                            <div class=\"widget-small danger coloured-icon\"><i class='icon bx bxs-error-alt fa-3x'></i>\r\n");
      out.write("                                <div class=\"info\">\r\n");
      out.write("                                    <h4>Sắp hết hàng</h4>\r\n");
      out.write("                                    <p><b>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.PRODUCTSLOW}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" sản phẩm</b></p>\r\n");
      out.write("                                    <p class=\"info-tong\">Số sản phẩm cảnh báo hết cần nhập thêm.</p>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- col-12 -->\r\n");
      out.write("                        <div class=\"col-md-12\">\r\n");
      out.write("                            <div class=\"tile\">\r\n");
      out.write("                                <h3 class=\"tile-title\">Đơn hàng gần đây</h3>\r\n");
      out.write("                                <div>\r\n");
      out.write("                                    <table class=\"table table-bordered\">\r\n");
      out.write("                                        <thead>\r\n");
      out.write("                                            <tr>\r\n");
      out.write("                                                <th>ID đơn hàng</th>\r\n");
      out.write("                                                <th>Khách hàng</th>\r\n");
      out.write("                                                <th>Số điện thoại</th>\r\n");
      out.write("                                                <th>Địa chỉ</th>\r\n");
      out.write("                                                <th>Ngày mua</th>\r\n");
      out.write("                                                <th>Tổng tiền</th>\r\n");
      out.write("                                                <th>Thanh Toán</th>\r\n");
      out.write("                                                <th>Chức năng</th>\r\n");
      out.write("\r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                        </thead>\r\n");
      out.write("                                        <tbody>\r\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                        </tbody>\r\n");
      out.write("                                    </table>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!-- / div trống-->\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- / col-12 -->\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </main>\r\n");
      out.write("        <script src=\"admin/js/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"admin/js/popper.min.js\"></script>\r\n");
      out.write("        <script src=\"https://unpkg.com/boxicons@latest/dist/boxicons.js\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"admin/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"admin/js/main.js\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script src=\"admin/js/plugins/pace.min.js\"></script>\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <!--===============================================================================================-->\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("                            var data = {\r\n");
      out.write("                                labels: [\"Tháng 1\", \"Tháng 2\", \"Tháng 3\", \"Tháng 4\", \"Tháng 5\", \"Tháng 6\"],\r\n");
      out.write("                                datasets: [{\r\n");
      out.write("                                        label: \"Dữ liệu đầu tiên\",\r\n");
      out.write("                                        fillColor: \"rgba(255, 213, 59, 0.767), 212, 59)\",\r\n");
      out.write("                                        strokeColor: \"rgb(255, 212, 59)\",\r\n");
      out.write("                                        pointColor: \"rgb(255, 212, 59)\",\r\n");
      out.write("                                        pointStrokeColor: \"rgb(255, 212, 59)\",\r\n");
      out.write("                                        pointHighlightFill: \"rgb(255, 212, 59)\",\r\n");
      out.write("                                        pointHighlightStroke: \"rgb(255, 212, 59)\",\r\n");
      out.write("                                        data: [20, 59, 90, 51, 56, 100]\r\n");
      out.write("                                    },\r\n");
      out.write("                                    {\r\n");
      out.write("                                        label: \"Dữ liệu kế tiếp\",\r\n");
      out.write("                                        fillColor: \"rgba(9, 109, 239, 0.651)  \",\r\n");
      out.write("                                        pointColor: \"rgb(9, 109, 239)\",\r\n");
      out.write("                                        strokeColor: \"rgb(9, 109, 239)\",\r\n");
      out.write("                                        pointStrokeColor: \"rgb(9, 109, 239)\",\r\n");
      out.write("                                        pointHighlightFill: \"rgb(9, 109, 239)\",\r\n");
      out.write("                                        pointHighlightStroke: \"rgb(9, 109, 239)\",\r\n");
      out.write("                                        data: [48, 48, 49, 39, 86, 10]\r\n");
      out.write("                                    }\r\n");
      out.write("                                ]\r\n");
      out.write("                            };\r\n");
      out.write("                            var ctxl = $(\"#lineChartDemo\").get(0).getContext(\"2d\");\r\n");
      out.write("                            var lineChart = new Chart(ctxl).Line(data);\r\n");
      out.write("\r\n");
      out.write("                            var ctxb = $(\"#barChartDemo\").get(0).getContext(\"2d\");\r\n");
      out.write("                            var barChart = new Chart(ctxb).Bar(data);\r\n");
      out.write("        </script>\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("            //Thời Gian\r\n");
      out.write("            function time() {\r\n");
      out.write("                var today = new Date();\r\n");
      out.write("                var weekday = new Array(7);\r\n");
      out.write("                weekday[0] = \"Chủ Nhật\";\r\n");
      out.write("                weekday[1] = \"Thứ Hai\";\r\n");
      out.write("                weekday[2] = \"Thứ Ba\";\r\n");
      out.write("                weekday[3] = \"Thứ Tư\";\r\n");
      out.write("                weekday[4] = \"Thứ Năm\";\r\n");
      out.write("                weekday[5] = \"Thứ Sáu\";\r\n");
      out.write("                weekday[6] = \"Thứ Bảy\";\r\n");
      out.write("                var day = weekday[today.getDay()];\r\n");
      out.write("                var dd = today.getDate();\r\n");
      out.write("                var mm = today.getMonth() + 1;\r\n");
      out.write("                var yyyy = today.getFullYear();\r\n");
      out.write("                var h = today.getHours();\r\n");
      out.write("                var m = today.getMinutes();\r\n");
      out.write("                m = checkTime(m);\r\n");
      out.write("                nowTime = h + \":\" + m + \"\";\r\n");
      out.write("                if (dd < 10) {\r\n");
      out.write("                    dd = '0' + dd\r\n");
      out.write("                }\r\n");
      out.write("                if (mm < 10) {\r\n");
      out.write("                    mm = '0' + mm\r\n");
      out.write("                }\r\n");
      out.write("                today = day + ', ' + dd + '/' + mm + '/' + yyyy;\r\n");
      out.write("                tmp = '<span class=\"date\"> ' + today + ' - ' + nowTime +\r\n");
      out.write("                        '</span>';\r\n");
      out.write("                document.getElementById(\"clock\").innerHTML = tmp;\r\n");
      out.write("                clocktime = setTimeout(\"time()\", \"1000\", \"Javascript\");\r\n");
      out.write("\r\n");
      out.write("                function checkTime(i) {\r\n");
      out.write("                    if (i < 10) {\r\n");
      out.write("                        i = \"0\" + i;\r\n");
      out.write("                    }\r\n");
      out.write("                    return i;\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        </script>\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${LAST_RECENT_ORDERS}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("b");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                <tr>\r\n");
          out.write("                                                    <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.orderID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                    <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.user.userName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                    <td>(+84) ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.user.phone}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                    <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.user.address}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                    <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.orderDate}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                    <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.totalPrice}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                                    <td><span class=\"badge bg-success\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.paymentMethod.paymentMethod}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</span></td>                              \r\n");
          out.write("                                                    <td><a style=\" color: rgb(245 157 57);background-color: rgb(251 226 197); padding: 5px;border-radius: 5px;\" href=\"ManageOrderServlet?action=showdetail&bill_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${b.getOrderID()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("}\"><i class=\"fa\"></i>Chi tiết đơn hàng</a></td>\r\n");
          out.write("                                                </tr>\r\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
