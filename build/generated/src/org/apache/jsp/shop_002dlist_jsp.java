package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class shop_002dlist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/common/taglib.jsp");
    _jspx_dependants.add("/common/web/add_css.jsp");
    _jspx_dependants.add("/common/web/header.jsp");
    _jspx_dependants.add("/common/web/footer.jsp");
    _jspx_dependants.add("/common/web/add_js.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_end_begin;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_forEach_var_end_begin = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_set_var_value_nobody.release();
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_c_forEach_var_end_begin.release();
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
      out.write("<html class=\"no-js\" lang=\"zxx\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\r\n");
      out.write("        <title>Shop list</title>\r\n");
      out.write("        <meta name=\"description\" content=\"\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <!-- Favicon -->\r\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets\\img\\favicon.png\">\r\n");
      out.write("\r\n");
      out.write("        <!-- all css here -->\r\n");
      out.write("        ");
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets\\css\\plugin.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets\\css\\bundle.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets\\css\\style.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"assets\\css\\responsive.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css\">\r\n");
      out.write("<script src=\"assets\\js\\vendor\\modernizr-2.8.3.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <!-- Add your site or application content here -->\r\n");
      out.write("\r\n");
      out.write("        <!--pos page start-->\r\n");
      out.write("        <div class=\"pos_page\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <!--pos page inner-->\r\n");
      out.write("                <div class=\"pos_page_inner\">  \r\n");
      out.write("                    <!--header area -->\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("<div class=\"header_area\">\r\n");
      out.write("    <!--header top--> \r\n");
      out.write("    <div class=\"header_top\">\r\n");
      out.write("        <div class=\"row align-items-center\">\r\n");
      out.write("            <div class=\"col-lg-6 col-md-6\">\r\n");
      out.write("                <!--                <div class=\"switcher\">\r\n");
      out.write("                                    <ul>\r\n");
      out.write("                                        <li class=\"languages\"><a href=\"#\"><img src=\"assets\\img\\logo\\fontlogo.jpg\" alt=\"\"> English <i class=\"fa fa-angle-down\"></i></a>\r\n");
      out.write("                                            <ul class=\"dropdown_languages\">\r\n");
      out.write("                                                <li><a href=\"#\"><img src=\"assets\\img\\logo\\fontlogo.jpg\" alt=\"\"> English</a></li>         \r\n");
      out.write("                                            </ul>   \r\n");
      out.write("                                        </li> \r\n");
      out.write("                \r\n");
      out.write("                                        <li class=\"currency\"><a href=\"#\"> Currency : $ <i class=\"fa fa-angle-down\"></i></a>\r\n");
      out.write("                                            <ul class=\"dropdown_currency\">\r\n");
      out.write("                                                <li><a href=\"#\"> Dollar (USD)</a></li>\r\n");
      out.write("                                                <li><a href=\"#\"> Euro (EUR)  </a></li>\r\n");
      out.write("                                            </ul> \r\n");
      out.write("                                        </li> \r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>-->\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-lg-6 col-md-6\">\r\n");
      out.write("                <div class=\"header_links\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><a href=\"contact.jsp\" title=\"Contact\">Contact</a></li>\r\n");
      out.write("                        <li><a href=\"wishlist.jsp\" title=\"wishlist\">My wishlist</a></li>\r\n");
      out.write("                            ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                        <li><a href=\"cart.jsp\" title=\"My cart\">My cart</a></li>  \r\n");
      out.write("                            ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                            ");
      if (_jspx_meth_c_if_2(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>   \r\n");
      out.write("            </div>\r\n");
      out.write("        </div> \r\n");
      out.write("    </div> \r\n");
      out.write("    <!--header top end-->\r\n");
      out.write("\r\n");
      out.write("    <!--header middel--> \r\n");
      out.write("    <div class=\"header_middel\">\r\n");
      out.write("        <div class=\"row align-items-center\">\r\n");
      out.write("            <!--logo start-->\r\n");
      out.write("            <div class=\"col-lg-3 col-md-3\">\r\n");
      out.write("                <div class=\"logo\">\r\n");
      out.write("                    <a href=\"DispatchServlet\"><img src=\"assets\\img\\logo\\logo.jpg.png\" alt=\"\"></a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--logo end-->\r\n");
      out.write("            <div class=\"col-lg-9 col-md-9\">\r\n");
      out.write("                <div class=\"header_right_info\">\r\n");
      out.write("                    <div class=\"search_bar\">\r\n");
      out.write("                        <form action=\"DispatchServlet\" method=\"get\" >\r\n");
      out.write("                            <input name=\"txtSearch\" value=\"\" placeholder=\"Search...\" type=\"text\">\r\n");
      out.write("                            <button name=\"btnAction\" value=\"Search\" type=\"submit\"><i class=\"fa fa-search\"></i></button>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"shopping_cart\">\r\n");
      out.write("                        ");
      if (_jspx_meth_c_if_3(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                           ");
      if (_jspx_meth_c_if_4(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <!--mini cart-->\r\n");
      out.write("                        <div class=\"mini_cart\">\r\n");
      out.write("                            <div class=\"cart_item\">\r\n");
      out.write("                                <div class=\"cart_img\">\r\n");
      out.write("                                    <a href=\"#\"><img src=\"assets\\img\\cart\\cart.jpg\" alt=\"\"></a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"cart_info\">\r\n");
      out.write("                                    <a href=\"#\">lorem ipsum dolor</a>\r\n");
      out.write("                                    <span class=\"cart_price\">$115.00</span>\r\n");
      out.write("                                    <span class=\"quantity\">Qty: 1</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"cart_remove\">\r\n");
      out.write("                                    <a title=\"Remove this item\" href=\"#\"><i class=\"fa fa-times-circle\"></i></a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"cart_item\">\r\n");
      out.write("                                <div class=\"cart_img\">\r\n");
      out.write("                                    <a href=\"#\"><img src=\"assets\\img\\cart\\cart2.jpg\" alt=\"\"></a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"cart_info\">\r\n");
      out.write("                                    <a href=\"#\">Quisque ornare dui</a>\r\n");
      out.write("                                    <span class=\"cart_price\">$105.00</span>\r\n");
      out.write("                                    <span class=\"quantity\">Qty: 1</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"cart_remove\">\r\n");
      out.write("                                    <a title=\"Remove this item\" href=\"#\"><i class=\"fa fa-times-circle\"></i></a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"shipping_price\">\r\n");
      out.write("                                <span> Shipping </span>\r\n");
      out.write("                                <span>  $7.00  </span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"total_price\">\r\n");
      out.write("                                <span> total </span>\r\n");
      out.write("                                <span class=\"prices\">  $227.00  </span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"cart_button\">\r\n");
      out.write("                                <a href=\"checkout.jsp\"> Check out</a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!--mini cart end-->\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>     \r\n");
      out.write("    <!--header middel end-->      \r\n");
      out.write("    <div class=\"header_bottom\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-12\">\r\n");
      out.write("                <div class=\"main_menu_inner\">\r\n");
      out.write("                    <div class=\"main_menu d-none d-lg-block\">\r\n");
      out.write("                        <nav>\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li class=\"active\"><a href=\"DispatchServlet\">Home</a></li>\r\n");
      out.write("                                <li><a href=\"ShopServlet\">SHOP</a></li>\r\n");
      out.write("                                <li><a href=\"contact.jsp\">contact us</a></li>\r\n");
      out.write("\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </nav>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!--                    <div class=\"mobile-menu d-lg-none\">\r\n");
      out.write("                                            <nav>\r\n");
      out.write("                                                <ul>\r\n");
      out.write("                                                    <li><a href=\"home.jsp\">Home</a></li>\r\n");
      out.write("                                                    <li><a href=\"shop-list.jsp\">shop</a>\r\n");
      out.write("                                                        <div>\r\n");
      out.write("                                                            <div>\r\n");
      out.write("                                                                <ul>\r\n");
      out.write("                                                                    <li><a href=\"shop-list.html\">shop list</a></li>\r\n");
      out.write("                                                                    <li><a href=\"shop-fullwidth.html\">shop Full Width Grid</a></li>\r\n");
      out.write("                                                                    <li><a href=\"shop-fullwidth-list.html\">shop Full Width list</a></li>\r\n");
      out.write("                                                                    <li><a href=\"shop-sidebar.html\">shop Right Sidebar</a></li>\r\n");
      out.write("                                                                    <li><a href=\"shop-sidebar-list.html\">shop list Right Sidebar</a></li>\r\n");
      out.write("                                                                    <li><a href=\"single-product.html\">Product Details</a></li>\r\n");
      out.write("                                                                    <li><a href=\"single-product-sidebar.html\">Product sidebar</a></li>\r\n");
      out.write("                                                                    <li><a href=\"single-product-video.html\">Product Details video</a></li>\r\n");
      out.write("                                                                    <li><a href=\"single-product-gallery.html\">Product Details Gallery</a></li>\r\n");
      out.write("                                                                </ul>\r\n");
      out.write("                                                            </div>\r\n");
      out.write("                                                        </div>  \r\n");
      out.write("                                                    </li>\r\n");
      out.write("                                                    <li><a href=\"contact.jsp\">contact us</a></li>\r\n");
      out.write("                    \r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </nav>\r\n");
      out.write("                                        </div>-->\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("                    <!--header end -->\r\n");
      out.write("                    <!--breadcrumbs area start-->\r\n");
      out.write("                    <div class=\"breadcrumbs_area\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-12\">\r\n");
      out.write("                                <div class=\"breadcrumb_content\">\r\n");
      out.write("                                    <ul>\r\n");
      out.write("                                        <li><a href=\"DispatchServlet\">home</a></li>\r\n");
      out.write("                                        <li><i class=\"fa fa-angle-right\"></i></li>\r\n");
      out.write("                                        <li>shop</li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!--breadcrumbs area end-->\r\n");
      out.write("\r\n");
      out.write("                    <!--pos home section-->\r\n");
      out.write("                    <div class=\" pos_home_section\">\r\n");
      out.write("                        <div class=\"row pos_home\">\r\n");
      out.write("                            <form class=\"col-lg-3 col-md-12\">\r\n");
      out.write("                                <!--layere categorie\"-->\r\n");
      out.write("                                <input id=\"sortinput\" type=\"hidden\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.VALUESORT}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" name=\"valueSort\"/>\r\n");
      out.write("                                <div class=\"sidebar_widget shop_c\">\r\n");
      out.write("                                    <div class=\"categorie__titile\">\r\n");
      out.write("                                        <h4>Phân loại</h4>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"layere_categorie\">\r\n");
      out.write("                                        <ul>\r\n");
      out.write("                                            <li>\r\n");
      out.write("                                                <input checked type=\"checkbox\">\r\n");
      out.write("                                                <label>Tất cả\r\n");
      out.write("                                                    <span>(1)</span>\r\n");
      out.write("                                                </label>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                        </ul>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!--layere categorie end-->\r\n");
      out.write("\r\n");
      out.write("                                <!--color area start-->  \r\n");
      out.write("                                <div class=\"sidebar_widget color\">\r\n");
      out.write("                                    <h2>Color</h2>\r\n");
      out.write("                                    <div class=\"widget_color\">\r\n");
      out.write("                                        <ul>\r\n");
      out.write("                                            <li><a href=\"#\">Black <span>(10)</span></a></li>\r\n");
      out.write("\r\n");
      out.write("                                            <li><a href=\"#\">Orange <span>(12)</span></a></li>\r\n");
      out.write("\r\n");
      out.write("                                            <li> <a href=\"#\">Blue <span>(14)</span></a></li>\r\n");
      out.write("\r\n");
      out.write("                                            <li><a href=\"#\">Yellow <span>(15)</span></a></li>\r\n");
      out.write("\r\n");
      out.write("                                            <li><a href=\"#\">pink <span>(16)</span></a></li>\r\n");
      out.write("\r\n");
      out.write("                                            <li><a href=\"#\">green <span>(11)</span></a></li>\r\n");
      out.write("\r\n");
      out.write("                                        </ul>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>                 \r\n");
      out.write("                                <!--color area end--> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <!--price slider start-->                                     \r\n");
      out.write("                                <div class=\"sidebar_widget price\">\r\n");
      out.write("                                    <h2>Price</h2>\r\n");
      out.write("                                    <div class=\"ca_search_filters\">\r\n");
      out.write("                                        <input type=\"text\" name=\"text\" placeholder=\"\">\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>                                                       \r\n");
      out.write("                                <!--price slider end-->\r\n");
      out.write("\r\n");
      out.write("                                <!--special product start-->\r\n");
      out.write("                                <div class=\"sidebar_widget special\">\r\n");
      out.write("                                    <div class=\"block_title\">\r\n");
      out.write("                                        <h3>Special Products</h3>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"special_product_inner mb-20\">\r\n");
      out.write("                                        <div class=\"special_p_thumb\">\r\n");
      out.write("                                            <a href=\"#\"><img src=\"assets\\img\\cart\\cart3.jpg\" alt=\"\"></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"small_p_desc\">\r\n");
      out.write("                                            <div class=\"product_ratting\">\r\n");
      out.write("                                                <ul>\r\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-star\"></i></a></li>\r\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-star\"></i></a></li>\r\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-star\"></i></a></li>\r\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-star\"></i></a></li>\r\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-star\"></i></a></li>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <h3><a href=\"#\">Lorem ipsum dolor</a></h3>\r\n");
      out.write("                                            <div class=\"special_product_proce\">\r\n");
      out.write("                                                <span class=\"old_price\">$124.58</span>\r\n");
      out.write("                                                <span class=\"new_price\">$118.35</span>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"special_product_inner\">\r\n");
      out.write("                                        <div class=\"special_p_thumb\">\r\n");
      out.write("                                            <a href=\"#\"><img src=\"assets\\img\\cart\\cart18.jpg\" alt=\"\"></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"small_p_desc\">\r\n");
      out.write("                                            <div class=\"product_ratting\">\r\n");
      out.write("                                                <ul>\r\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-star\"></i></a></li>\r\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-star\"></i></a></li>\r\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-star\"></i></a></li>\r\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-star\"></i></a></li>\r\n");
      out.write("                                                    <li><a href=\"#\"><i class=\"fa fa-star\"></i></a></li>\r\n");
      out.write("                                                </ul>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <h3><a href=\"#\">Printed Summer</a></h3>\r\n");
      out.write("                                            <div class=\"special_product_proce\">\r\n");
      out.write("                                                <span class=\"old_price\">$124.58</span>\r\n");
      out.write("                                                <span class=\"new_price\">$118.35</span>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!--special product end-->\r\n");
      out.write("\r\n");
      out.write("                            </form>\r\n");
      out.write("                            <div class=\"col-lg-9 col-md-12\">\r\n");
      out.write("                                <!--banner slider start-->\r\n");
      out.write("                                <div class=\"banner_slider mb-35\">\r\n");
      out.write("                                    <img src=\"assets\\img\\banner\\bannner10.jpg\" alt=\"\">\r\n");
      out.write("                                </div> \r\n");
      out.write("                                <!--banner slider start-->\r\n");
      out.write("\r\n");
      out.write("                                <!--shop toolbar start-->\r\n");
      out.write("                                <div class=\"shop_toolbar list_toolbar\">\r\n");
      out.write("                                    <div class=\"list_button\">\r\n");
      out.write("                                        <ul class=\"nav\" role=\"tablist\">\r\n");
      out.write("                                            <li>\r\n");
      out.write("                                                <a class=\"active\" data-toggle=\"tab\" href=\"#large\" role=\"tab\" aria-controls=\"large\" aria-selected=\"true\"><i class=\"fa fa-th-large\"></i></a>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                            <li>\r\n");
      out.write("                                                <a data-toggle=\"tab\" href=\"#list\" role=\"tab\" aria-controls=\"list\" aria-selected=\"false\"><i class=\"fa fa-th-list\"></i></a>\r\n");
      out.write("                                            </li>\r\n");
      out.write("                                        </ul>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"page_amount\">\r\n");
      out.write("                                        <!--<p>Showing 1–");
      if (_jspx_meth_c_if_5(_jspx_page_context))
        return;
      if (_jspx_meth_c_if_6(_jspx_page_context))
        return;
      out.write(" of ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${LISTPRODUCTS.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("  results</p>-->\r\n");
      out.write("\r\n");
      out.write("                                        </div>\r\n");
      out.write("<!--                                        <div class=\"search_bar\">\r\n");
      out.write("                                            <form action=\"#\">\r\n");
      out.write("                                                <input oninput=\"searchProducts(this)\" value=\"\" placeholder=\"Search...\" type=\"text\">\r\n");
      out.write("                                                <i style=\"margin-left: -24px\" class=\"fa fa-search\"></i>\r\n");
      out.write("                                            </form>\r\n");
      out.write("                                        </div>-->\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <!--shop toolbar end-->\r\n");
      out.write("\r\n");
      out.write("                                    <!--shop tab product-->\r\n");
      out.write("                                    <div class=\"shop_tab_product\">   \r\n");
      out.write("                                        <div class=\"tab-content\" id=\"myTabContent\">\r\n");
      out.write("                                            <div class=\"select_option\" style=\"margin-bottom: 20px; display: flex; justify-content: flex-end; align-items: center\">\r\n");
      out.write("                                                <label style=\"\">Sort By: </label>\r\n");
      out.write("                                                <form action=\"SortProductsServlet\" method=\"get\">\r\n");
      out.write("                                                    <select onchange=\"sortProducts(event)\" name=\"orderby\" id=\"sort\">                                                \r\n");
      out.write("                                                        <option value=\"0\">Nổi bật</option>\r\n");
      out.write("                                                        <option value=\"1\">Giá: Thấp đến Cao</option>\r\n");
      out.write("                                                        <option value=\"2\">Giá: Cao đến Thấp</option>\r\n");
      out.write("                                                        <option value=\"3\">Tên: A- Z</option>\r\n");
      out.write("                                                    </select>\r\n");
      out.write("                                                </form>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"tab-pane fade show active\" id=\"large\" role=\"tabpanel\">\r\n");
      out.write("                                                <div class=\"row\" id=\"listproduct\">\r\n");
      out.write("                                                ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                            </div>  \r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"tab-pane fade\" id=\"list\" role=\"tabpanel\">\r\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                        </div>\r\n");
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>    \r\n");
      out.write("                                <!--shop tab product end-->\r\n");
      out.write("\r\n");
      out.write("                                <!--pagination style start--> \r\n");
      out.write("                                <div class=\"pagination_style\">\r\n");
      out.write("                                    <div class=\"page_number\">\r\n");
      out.write("                                        <span>Pages: </span>\r\n");
      out.write("                                        <ul>\r\n");
      out.write("                                            <!--PAGING SHOPSERVLET--> \r\n");
      out.write("                                            ");
      if (_jspx_meth_c_if_9(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                            <!--PAGING FILTERSERVLET--> \r\n");
      out.write("                                            ");
      if (_jspx_meth_c_if_12(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                        </ul>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!--pagination style end--> \r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>  \r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!--pos home section end-->\r\n");
      out.write("                </div>\r\n");
      out.write("                <!--pos page inner end-->\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--pos page end-->\r\n");
      out.write("\r\n");
      out.write("        <!--footer area start-->\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("<div class=\"footer_area\">\r\n");
      out.write("    <div class=\"footer_top\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-lg-12 col-md-12 col-sm-12\">\r\n");
      out.write("                    <div class=\"footer_widget\">\r\n");
      out.write("                        <h3>Clothes Shop</h3>\r\n");
      out.write("                        <p>Điểm đến hàng đầu cho những bộ trang phục nam đa dạng và phong cách. Khám phá ngay để tìm kiếm sự hoàn hảo cho phong cách của bạn!</p>\r\n");
      out.write("                        <div class=\"footer_widget_contect\">\r\n");
      out.write("                            <p><i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>  Lô E2a-7, Đường D1, Khu Công nghệ cao, P.Long Thạnh Mỹ, Tp. Thủ Đức, TP.HCM.</p>\r\n");
      out.write("\r\n");
      out.write("                            <p><i class=\"fa fa-mobile\" aria-hidden=\"true\"></i> 0(1234) 567 890</p>\r\n");
      out.write("                            <a href=\"#\"><i class=\"fa fa-envelope-o\" aria-hidden=\"true\"></i> clotheshop@gmail.com </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"footer_bottom\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row align-items-center\">\r\n");
      out.write("                <div class=\"col-lg-12 col-md-12\">\r\n");
      out.write("                    <div class=\"copyright_area align-items-center\">\r\n");
      out.write("                        <p>Copyright &copy; 2018 <a href=\"#\">Pos Coron</a>. All rights reserved. </p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("        <!--footer area end-->\r\n");
      out.write("\r\n");
      out.write("        <!-- modal area start --> \r\n");
      out.write("        <!-- modal area end --> \r\n");
      out.write("\r\n");
      out.write("        <!-- all js here -->\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script src=\"assets\\js\\vendor\\jquery-1.12.0.min.js\"></script>\r\n");
      out.write("<script src=\"assets\\js\\popper.js\"></script>\r\n");
      out.write("<script src=\"assets\\js\\bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"assets\\js\\plugins.js\"></script>\r\n");
      out.write("<script src=\"assets\\js\\main.js\"></script>\r\n");
      out.write("<script src=\"assets\\js\\events.js\"></script>\r\n");
      out.write("<script src=\"https://www.google.com/recaptcha/api.js\" async defer></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                            <li><a href=\"ProfileServlet\" title=\"My account\">My account</a></li>\r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account == null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                            <li><a href=\"DispatchServlet?btnAction=Login\" title=\"Login\">Login</a></li>  \r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_if_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent(null);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                            <li><a href=\"");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account.roleID == 1 ? 'AdminServlet' : 'ProfileServlet'}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write(" \">Hello, ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account.firstName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write(' ');
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account.lastName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("!</a></li>\r\n");
        out.write("                            <li><a href=\"DispatchServlet?btnAction=Logout\">Logout</a></li>\r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }

  private boolean _jspx_meth_c_if_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_3 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_3.setPageContext(_jspx_page_context);
    _jspx_th_c_if_3.setParent(null);
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.CART != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                            <a href=\"#\"><i class=\"fa fa-shopping-cart\"></i> ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.CART.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write(" Items <i class=\"fa fa-angle-down\"></i></a>\r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_3.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_3);
    return false;
  }

  private boolean _jspx_meth_c_if_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_4 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_4.setPageContext(_jspx_page_context);
    _jspx_th_c_if_4.setParent(null);
    _jspx_th_c_if_4.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.CART == null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_4 = _jspx_th_c_if_4.doStartTag();
    if (_jspx_eval_c_if_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                            <a href=\"#\"><i class=\"fa fa-shopping-cart\"></i> ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.CART.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("<i class=\"fa fa-angle-down\"></i></a>\r\n");
        out.write("                            ");
        int evalDoAfterBody = _jspx_th_c_if_4.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_4);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${LISTCATEGORIES}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("c");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                <li>\r\n");
          out.write("                                                    <input id=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" type=\"checkbox\" name=\"\">\r\n");
          out.write("                                                    <label for=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                                                        <span>(1)</span>\r\n");
          out.write("                                                    </label>\r\n");
          out.write("                                                </li>\r\n");
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

  private boolean _jspx_meth_c_if_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_5 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_5.setPageContext(_jspx_page_context);
    _jspx_th_c_if_5.setParent(null);
    _jspx_th_c_if_5.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${LISTPRODUCTS.size() < 9}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_5 = _jspx_th_c_if_5.doStartTag();
    if (_jspx_eval_c_if_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${LISTPRODUCTS.size()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        int evalDoAfterBody = _jspx_th_c_if_5.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_5);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_5);
    return false;
  }

  private boolean _jspx_meth_c_if_6(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_6 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_6.setPageContext(_jspx_page_context);
    _jspx_th_c_if_6.setParent(null);
    _jspx_th_c_if_6.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${LISTPRODUCTS.size() >= 9}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_6 = _jspx_th_c_if_6.doStartTag();
    if (_jspx_eval_c_if_6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write('9');
        int evalDoAfterBody = _jspx_th_c_if_6.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_6);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_6);
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.LISTPRODUCTS}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("p");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                    <div class=\"col-lg-4 col-md-6\">\r\n");
          out.write("                                                        <div class=\"single_product\">\r\n");
          out.write("                                                            <div class=\"product_thumb\">\r\n");
          out.write("                                                                <a href=\"SingleProductServlet?product_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"><img style=\"width: 250px; height:250px\" src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.images[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\"></a> \r\n");
          out.write("                                                                    ");
          if (_jspx_meth_c_if_7((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("\r\n");
          out.write("                                                                <div class=\"product_action\">\r\n");
          out.write("                                                                    <a href=\"DispatchServlet?btnAction=AddToCart&product_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"> <i class=\"fa fa-shopping-cart\"></i> Thêm vào giỏ</a>\r\n");
          out.write("                                                                </div>\r\n");
          out.write("                                                            </div>\r\n");
          out.write("                                                            <div class=\"product_content\">\r\n");
          out.write("                                                                <span class=\"product_price\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("$</span>\r\n");
          out.write("                                                                <h3 class=\"product_title\"><a href=\"SingleProductServlet?product_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></h3>\r\n");
          out.write("                                                            </div>\r\n");
          out.write("                                                            <div class=\"product_info\">\r\n");
          out.write("                                                                <ul>\r\n");
          out.write("                                                                    <li><a href=\"#\" title=\" Add to Wishlist \">Yêu thích</a></li>\r\n");
          out.write("                                                                    <li><a href=\"SingleProductServlet?product_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" title=\"View Detail\">Xem sản phẩm</a></li>\r\n");
          out.write("                                                                </ul>\r\n");
          out.write("                                                            </div>\r\n");
          out.write("                                                        </div>\r\n");
          out.write("                                                    </div>\r\n");
          out.write("                                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_7(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_7 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_7.setPageContext(_jspx_page_context);
    _jspx_th_c_if_7.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_if_7.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.releasedate.getYear() == 124}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_7 = _jspx_th_c_if_7.doStartTag();
    if (_jspx_eval_c_if_7 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                    <div class=\"img_icone\">\r\n");
        out.write("                                                                        <img src=\"assets/img/cart/span-new.png\" alt=\"\">\r\n");
        out.write("                                                                    </div>\r\n");
        out.write("                                                                ");
        int evalDoAfterBody = _jspx_th_c_if_7.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_7);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_7);
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.LISTPRODUCTS}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("p");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("\r\n");
          out.write("                                                <div class=\"product_list_item mb-35\">\r\n");
          out.write("                                                    <div class=\"row align-items-center\">\r\n");
          out.write("                                                        <div class=\"col-lg-4 col-md-6 col-sm-6\">\r\n");
          out.write("                                                            <div class=\"product_thumb\">\r\n");
          out.write("                                                                <a href=\"SingleProductServlet?product_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\"><img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.images[0]}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\"></a> \r\n");
          out.write("                                                                <div class=\"hot_img\">\r\n");
          out.write("                                                                    <img src=\"assets\\img\\cart\\span-hot.png\" alt=\"\">\r\n");
          out.write("                                                                </div>\r\n");
          out.write("                                                            </div>\r\n");
          out.write("                                                        </div>\r\n");
          out.write("                                                        <div class=\"col-lg-8 col-md-6 col-sm-6\">\r\n");
          out.write("                                                            <div class=\"list_product_content\">\r\n");
          out.write("                                                                <div class=\"list_title\">\r\n");
          out.write("                                                                    <h3><a href=\"SingleProductServlet?product_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></h3>\r\n");
          out.write("                                                                </div>\r\n");
          out.write("                                                                <p class=\"design\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.description}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p>\r\n");
          out.write("                                                                <div class=\"content_price\">\r\n");
          out.write("                                                                    ");
          if (_jspx_meth_c_if_8((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_2, _jspx_page_context, _jspx_push_body_count_c_forEach_2))
            return true;
          out.write("\r\n");
          out.write("                                                                    <span class=\"current_price ani-fire\">Rs. ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.salePrice}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\r\n");
          out.write("                                                                    </span>\r\n");
          out.write("                                                                </div>\r\n");
          out.write("                                                                <div class=\"add_links\">\r\n");
          out.write("                                                                    <ul>\r\n");
          out.write("                                                                        <li><a href=\"DispatchServlet?btnAction=AddToCart&product_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" title=\"add to cart\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i></a></li>\r\n");
          out.write("                                                                        <li><a href=\"#\" title=\"add to wishlist\"><i class=\"fa fa-heart\" aria-hidden=\"true\"></i></a></li>\r\n");
          out.write("\r\n");
          out.write("                                                                        <li><a href=\"SingleProductServlet?product_id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" title=\"Quick view\"><i class=\"fa fa-eye\" aria-hidden=\"true\"></i></a></li>\r\n");
          out.write("                                                                    </ul>\r\n");
          out.write("                                                                </div>\r\n");
          out.write("                                                            </div>\r\n");
          out.write("                                                        </div>\r\n");
          out.write("                                                    </div> \r\n");
          out.write("                                                </div>\r\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_8(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_2, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_2)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_8 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_8.setPageContext(_jspx_page_context);
    _jspx_th_c_if_8.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_2);
    _jspx_th_c_if_8.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.price != p.salePrice}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_8 = _jspx_th_c_if_8.doStartTag();
    if (_jspx_eval_c_if_8 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                                        <span class=\"old_price\" id=\"oldprice\">Rs. ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</span>\r\n");
        out.write("                                                                    ");
        int evalDoAfterBody = _jspx_th_c_if_8.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_8);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_8);
    return false;
  }

  private boolean _jspx_meth_c_if_9(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_9 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_9.setPageContext(_jspx_page_context);
    _jspx_th_c_if_9.setParent(null);
    _jspx_th_c_if_9.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.DATA_FROM == 'ShopServlet'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_9 = _jspx_th_c_if_9.doStartTag();
    if (_jspx_eval_c_if_9 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                ");
        if (_jspx_meth_c_set_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_9, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                                ");
        if (_jspx_meth_c_if_10((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_9, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                                ");
        if (_jspx_meth_c_forEach_3((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_9, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                                ");
        if (_jspx_meth_c_if_11((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_9, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                            ");
        int evalDoAfterBody = _jspx_th_c_if_9.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_9.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_9);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_9);
    return false;
  }

  private boolean _jspx_meth_c_set_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_9, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_9);
    _jspx_th_c_set_0.setVar("page");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.CURRENTPAGE}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_c_if_10(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_9, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_10 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_10.setPageContext(_jspx_page_context);
    _jspx_th_c_if_10.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_9);
    _jspx_th_c_if_10.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${page != 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_10 = _jspx_th_c_if_10.doStartTag();
    if (_jspx_eval_c_if_10 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                    <li>\r\n");
        out.write("                                                        <a href=\"ShopServlet?page=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${page - 1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">«</a>\r\n");
        out.write("                                                    </li>\r\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_if_10.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_10.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_10);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_10);
    return false;
  }

  private boolean _jspx_meth_c_forEach_3(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_9, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_3.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_9);
    _jspx_th_c_forEach_3.setVar("i");
    _jspx_th_c_forEach_3.setBegin(1);
    _jspx_th_c_forEach_3.setEnd(((java.lang.Integer) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.NUMBERPAGE}", java.lang.Integer.class, (PageContext)_jspx_page_context, null)).intValue());
    int[] _jspx_push_body_count_c_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_3 = _jspx_th_c_forEach_3.doStartTag();
      if (_jspx_eval_c_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                    <li>\r\n");
          out.write("                                                        <a style=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${page == i ? \"color: #e84c3d\" :\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" href=\"ShopServlet?page=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a>\r\n");
          out.write("                                                    </li>\r\n");
          out.write("                                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_3.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_3.doFinally();
      _jspx_tagPool_c_forEach_var_end_begin.reuse(_jspx_th_c_forEach_3);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_11(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_9, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_11 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_11.setPageContext(_jspx_page_context);
    _jspx_th_c_if_11.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_9);
    _jspx_th_c_if_11.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${page != NUMBERPAGE}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_11 = _jspx_th_c_if_11.doStartTag();
    if (_jspx_eval_c_if_11 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                    <li>\r\n");
        out.write("                                                        <a href=\"ShopServlet?page=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${page + 1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">»</a>\r\n");
        out.write("                                                    </li>\r\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_if_11.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_11.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_11);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_11);
    return false;
  }

  private boolean _jspx_meth_c_if_12(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_12 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_12.setPageContext(_jspx_page_context);
    _jspx_th_c_if_12.setParent(null);
    _jspx_th_c_if_12.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.DATA_FROM == 'FilterServlet'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_12 = _jspx_th_c_if_12.doStartTag();
    if (_jspx_eval_c_if_12 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                ");
        if (_jspx_meth_c_set_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_12, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                                ");
        if (_jspx_meth_c_if_13((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_12, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                                ");
        if (_jspx_meth_c_forEach_4((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_12, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                                ");
        if (_jspx_meth_c_if_14((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_12, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                            ");
        int evalDoAfterBody = _jspx_th_c_if_12.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_12.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_12);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_12);
    return false;
  }

  private boolean _jspx_meth_c_set_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_12, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_1 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_1.setPageContext(_jspx_page_context);
    _jspx_th_c_set_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_12);
    _jspx_th_c_set_1.setVar("page");
    _jspx_th_c_set_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.CURRENTPAGE}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_1 = _jspx_th_c_set_1.doStartTag();
    if (_jspx_th_c_set_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_1);
    return false;
  }

  private boolean _jspx_meth_c_if_13(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_12, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_13 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_13.setPageContext(_jspx_page_context);
    _jspx_th_c_if_13.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_12);
    _jspx_th_c_if_13.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${page != 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_13 = _jspx_th_c_if_13.doStartTag();
    if (_jspx_eval_c_if_13 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                    <li>\r\n");
        out.write("                                                        <a href=\"FilterServlet?page=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${page - 1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("&id_group=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.ID_GROUP}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("&sort_group=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.SORT_GROUP}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">«</a>\r\n");
        out.write("                                                    </li>\r\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_if_13.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_13.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_13);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_13);
    return false;
  }

  private boolean _jspx_meth_c_forEach_4(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_12, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_4 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_4.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_4.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_12);
    _jspx_th_c_forEach_4.setVar("i");
    _jspx_th_c_forEach_4.setBegin(1);
    _jspx_th_c_forEach_4.setEnd(((java.lang.Integer) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.NUMBERPAGE}", java.lang.Integer.class, (PageContext)_jspx_page_context, null)).intValue());
    int[] _jspx_push_body_count_c_forEach_4 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_4 = _jspx_th_c_forEach_4.doStartTag();
      if (_jspx_eval_c_forEach_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                    <li>\r\n");
          out.write("                                                        <a style=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${page == i ? \"color: #e84c3d\" :\"\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" href=\"FilterServlet?page=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("&id_group=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.ID_GROUP}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("&sort_group=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.SORT_GROUP}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${i}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a>\r\n");
          out.write("                                                    </li>\r\n");
          out.write("                                                ");
          int evalDoAfterBody = _jspx_th_c_forEach_4.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_4[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_4.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_4.doFinally();
      _jspx_tagPool_c_forEach_var_end_begin.reuse(_jspx_th_c_forEach_4);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_14(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_12, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_14 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_14.setPageContext(_jspx_page_context);
    _jspx_th_c_if_14.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_12);
    _jspx_th_c_if_14.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${page != NUMBERPAGE}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_14 = _jspx_th_c_if_14.doStartTag();
    if (_jspx_eval_c_if_14 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                                    <li>\r\n");
        out.write("                                                        <a href=\"FilterServlet?page=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${page + 1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("&id_group=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.ID_GROUP}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("&sort_group=");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.SORT_GROUP}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("\">»</a>\r\n");
        out.write("                                                    </li>\r\n");
        out.write("                                                ");
        int evalDoAfterBody = _jspx_th_c_if_14.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_14.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_14);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_14);
    return false;
  }
}
