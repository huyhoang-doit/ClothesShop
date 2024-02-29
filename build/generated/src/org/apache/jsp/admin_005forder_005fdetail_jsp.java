package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005forder_005fdetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Chi tiết đơn hàng | Quản trị Admin</title>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <!-- Main CSS-->\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"admin/css/main.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css\">\r\n");
      out.write("        <!-- or -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://unpkg.com/boxicons@latest/css/boxicons.min.css\">\r\n");
      out.write("\r\n");
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
      out.write("            <div class=\"app-title\">\r\n");
      out.write("                <ul class=\"app-breadcrumb breadcrumb side\">\r\n");
      out.write("                    <li class=\"breadcrumb-item active\"><a href=\"#\"><b>Chi tiết đơn hàng</b></a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <div id=\"clock\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-md-12\">\r\n");
      out.write("                    <div class=\"tile\">\r\n");
      out.write("                        <div class=\"tile-body\">\r\n");
      out.write("                            <div class=\"row element-button\">\r\n");
      out.write("                                <div class=\"col-sm-2\">\r\n");
      out.write("                                    <a class=\"btn btn-delete btn-sm print-file\" type=\"button\" title=\"In\" onclick=\"myApp.printTable()\"><i\r\n");
      out.write("                                            class=\"fas fa-print\"></i> In dữ liệu</a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <table class=\"table table-hover table-bordered\" id=\"sampleTable\">\r\n");
      out.write("                                <thead>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <th>Ảnh</th>\r\n");
      out.write("                                        <th>Mã sản phẩm</th>\r\n");
      out.write("                                        <th>Tên sản phẩm</th>\r\n");
      out.write("                                        <th>Size</th>\r\n");
      out.write("                                        <th>Màu</th>\r\n");
      out.write("                                        <th>Số lượng</th>\r\n");
      out.write("                                        <th>Đơn giá</th>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                </thead>\r\n");
      out.write("                                <tbody>\r\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                </tbody>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </main>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Essential javascripts for application to work-->\r\n");
      out.write("        <script src=\"admin/js/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("        <script src=\"admin/js/popper.min.js\"></script>\r\n");
      out.write("        <script src=\"admin/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js\"></script>\r\n");
      out.write("        <script src=\"admin/js/main.js\"></script>\r\n");
      out.write("        <!-- The javascript plugin to display page loading on top-->\r\n");
      out.write("        <script src=\"admin/js/plugins/pace.min.js\"></script>\r\n");
      out.write("        <!-- Page specific javascripts-->\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js\"></script>\r\n");
      out.write("        <!-- Data table plugin-->\r\n");
      out.write("        <script type=\"text/javascript\" src=\"admin/js/plugins/jquery.dataTables.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"admin/js/plugins/dataTables.bootstrap.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("                                        $('#sampleTable').DataTable();\r\n");
      out.write("                                        //Thời Gian\r\n");
      out.write("                                        function time() {\r\n");
      out.write("                                            var today = new Date();\r\n");
      out.write("                                            var weekday = new Array(7);\r\n");
      out.write("                                            weekday[0] = \"Chủ Nhật\";\r\n");
      out.write("                                            weekday[1] = \"Thứ Hai\";\r\n");
      out.write("                                            weekday[2] = \"Thứ Ba\";\r\n");
      out.write("                                            weekday[3] = \"Thứ Tư\";\r\n");
      out.write("                                            weekday[4] = \"Thứ Năm\";\r\n");
      out.write("                                            weekday[5] = \"Thứ Sáu\";\r\n");
      out.write("                                            weekday[6] = \"Thứ Bảy\";\r\n");
      out.write("                                            var day = weekday[today.getDay()];\r\n");
      out.write("                                            var dd = today.getDate();\r\n");
      out.write("                                            var mm = today.getMonth() + 1;\r\n");
      out.write("                                            var yyyy = today.getFullYear();\r\n");
      out.write("                                            var h = today.getHours();\r\n");
      out.write("                                            var m = today.getMinutes();\r\n");
      out.write("                                            var s = today.getSeconds();\r\n");
      out.write("                                            m = checkTime(m);\r\n");
      out.write("                                            s = checkTime(s);\r\n");
      out.write("                                            nowTime = h + \" giờ \" + m + \" phút \" + s + \" giây\";\r\n");
      out.write("                                            if (dd < 10) {\r\n");
      out.write("                                                dd = '0' + dd\r\n");
      out.write("                                            }\r\n");
      out.write("                                            if (mm < 10) {\r\n");
      out.write("                                                mm = '0' + mm\r\n");
      out.write("                                            }\r\n");
      out.write("                                            today = day + ', ' + dd + '/' + mm + '/' + yyyy;\r\n");
      out.write("                                            tmp = '<span class=\"date\"> ' + today + ' - ' + nowTime +\r\n");
      out.write("                                                    '</span>';\r\n");
      out.write("                                            document.getElementById(\"clock\").innerHTML = tmp;\r\n");
      out.write("                                            clocktime = setTimeout(\"time()\", \"1000\", \"Javascript\");\r\n");
      out.write("\r\n");
      out.write("                                            function checkTime(i) {\r\n");
      out.write("                                                if (i < 10) {\r\n");
      out.write("                                                    i = \"0\" + i;\r\n");
      out.write("                                                }\r\n");
      out.write("                                                return i;\r\n");
      out.write("                                            }\r\n");
      out.write("                                        }\r\n");
      out.write("        </script>\r\n");
      out.write("        <script>\r\n");
      out.write("\r\n");
      out.write("            $(document).ready(jQuery(function () {\r\n");
      out.write("                jQuery(\".trash\").click(function () {\r\n");
      out.write("                    swal({\r\n");
      out.write("                        title: \"Cảnh báo\",\r\n");
      out.write("                        text: \"Bạn có chắc chắn là muốn xóa sản phẩm này?\",\r\n");
      out.write("                        buttons: [\"Hủy bỏ\", \"Đồng ý\"],\r\n");
      out.write("                    })\r\n");
      out.write("                            .then((willDelete) => {\r\n");
      out.write("                                if (willDelete) {\r\n");
      out.write("                                    window.location = \"productmanager?action=deleteproduct&product_id=\" + $(this).attr(\"value\");\r\n");
      out.write("                                    swal(\"Đã xóa thành công.!\", {\r\n");
      out.write("                                    });\r\n");
      out.write("                                }\r\n");
      out.write("                            });\r\n");
      out.write("                });\r\n");
      out.write("            }));\r\n");
      out.write("        </script>\r\n");
      out.write("        <script>\r\n");
      out.write("            var myApp = new function () {\r\n");
      out.write("                this.printTable = function () {\r\n");
      out.write("                    var tab = document.getElementById('sampleTable');\r\n");
      out.write("                    var win = window.open('', '', 'height=700,width=700');\r\n");
      out.write("                    win.document.write(tab.outerHTML);\r\n");
      out.write("                    win.document.close();\r\n");
      out.write("                    win.print();\r\n");
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
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${LIST_PRODUCTS_IN_ORDER}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("d");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                        <tr>\r\n");
          out.write("                                            <td><img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.product.images[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\" width=\"100px;\"></td>\r\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.product.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.product.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.product.size[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.product.colors[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.quantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                            <td>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${d.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\r\n");
          out.write("                                        </tr>\r\n");
          out.write("                                    ");
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
