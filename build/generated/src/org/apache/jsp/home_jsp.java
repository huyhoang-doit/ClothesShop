package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.WishListDTO;
import dal.WishlistDAO;
import model.ProductDTO;
import java.util.List;
import dal.ProductDAO;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_if_test.release();
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <title>Clothes - Shop</title>\r\n");
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
      out.write("<script src=\"assets\\js\\vendor\\modernizr-2.8.3.min.js\"></script>");
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
      out.write("                        ");
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
      out.write("                        <form action=\"#\">\r\n");
      out.write("                            <input placeholder=\"Search...\" type=\"text\">\r\n");
      out.write("                            <button type=\"submit\"><i class=\"fa fa-search\"></i></button>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"shopping_cart\">\r\n");
      out.write("                        <a href=\"#\"><i class=\"fa fa-shopping-cart\"></i> 2Items - $209.44 <i class=\"fa fa-angle-down\"></i></a>\r\n");
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
      out.write("                    <div class=\"mobile-menu d-lg-none\">\r\n");
      out.write("                        <nav>\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li><a href=\"home.jsp\">Home</a></li>\r\n");
      out.write("                                <li><a href=\"shop-list.jsp\">shop</a>\r\n");
      out.write("                                    <div>\r\n");
      out.write("                                        <div>\r\n");
      out.write("                                            <ul>\r\n");
      out.write("                                                <li><a href=\"shop-list.html\">shop list</a></li>\r\n");
      out.write("                                                <li><a href=\"shop-fullwidth.html\">shop Full Width Grid</a></li>\r\n");
      out.write("                                                <li><a href=\"shop-fullwidth-list.html\">shop Full Width list</a></li>\r\n");
      out.write("                                                <li><a href=\"shop-sidebar.html\">shop Right Sidebar</a></li>\r\n");
      out.write("                                                <li><a href=\"shop-sidebar-list.html\">shop list Right Sidebar</a></li>\r\n");
      out.write("                                                <li><a href=\"single-product.html\">Product Details</a></li>\r\n");
      out.write("                                                <li><a href=\"single-product-sidebar.html\">Product sidebar</a></li>\r\n");
      out.write("                                                <li><a href=\"single-product-video.html\">Product Details video</a></li>\r\n");
      out.write("                                                <li><a href=\"single-product-gallery.html\">Product Details Gallery</a></li>\r\n");
      out.write("                                            </ul>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>  \r\n");
      out.write("                                </li>\r\n");
      out.write("                                <li><a href=\"contact.jsp\">contact us</a></li>\r\n");
      out.write("\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </nav>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("                    <!--header end -->\r\n");
      out.write("\r\n");
      out.write("                    <!--pos home section-->\r\n");
      out.write("                    <div class=\" pos_home_section\">\r\n");
      out.write("                        <div class=\"row pos_home\">\r\n");
      out.write("                            <div class=\"col-lg-3 col-md-8 col-12\">\r\n");
      out.write("                                <!--sidebar banner-->\r\n");
      out.write("                                <div class=\"sidebar_widget banner mb-35\">\r\n");
      out.write("                                    <div class=\"banner_img mb-35\">\r\n");
      out.write("                                        <a href=\"#\"><img src=\"assets\\img\\banner\\banner5.jpg\" alt=\"\"></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"banner_img\">\r\n");
      out.write("                                        <a href=\"#\"><img src=\"assets\\img\\banner\\banner6.jpg\" alt=\"\"></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!--sidebar banner end-->\r\n");
      out.write("\r\n");
      out.write("                                <!--categorie menu start-->\r\n");
      out.write("                                <div class=\"sidebar_widget catrgorie mb-35\">\r\n");
      out.write("                                    <h3>Categories</h3>\r\n");
      out.write("                                    <ul>\r\n");
      out.write("                                        ");
      if (_jspx_meth_c_if_3(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!--categorie menu end-->\r\n");
      out.write("                                ");

                                    WishlistDAO wl = new WishlistDAO();
                                    ProductDAO product = new ProductDAO();
                                    List<WishListDTO> lists = wl.getWishlist();
                                    int count = 0;
                                
      out.write("\r\n");
      out.write("                                <!--wishlist block start-->\r\n");
      out.write("                                <div class=\"sidebar_widget wishlist mb-35\">\r\n");
      out.write("                                    <div class=\"block_title\">\r\n");
      out.write("                                        <h3><a href=\"#\">Wishlist</a></h3>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                    ");

                                        for (WishListDTO wls : lists) {
                                            List<ProductDTO> productList = product.getProductsforId(String.valueOf(wls.getProductID()));
                                            count++;
                                            for (ProductDTO p : productList) {
                                    
      out.write("\r\n");
      out.write("                                    <div class=\"cart_item\">\r\n");
      out.write("                                        <div class=\"cart_img\">\r\n");
      out.write("                                            <a href=\"single-product.jsp?productId=");
      out.print( p.getId());
      out.write("\"><img src=");
      out.print( p.getImages()[0]);
      out.write(" alt=\"\"></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"cart_info\">\r\n");
      out.write("                                            <a href=\"single-product.jsp?productId=");
      out.print( p.getId());
      out.write('"');
      out.write('>');
      out.print( p.getProductName());
      out.write("</a>\r\n");
      out.write("                                            <span class=\"cart_price\">");
      out.print( p.getPrice());
      out.write("&#8363</span>                                          \r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"cart_remove\">\r\n");
      out.write("                                            <a title=\"Remove this item\" href=\"#\"><i class=\"fa fa-times-circle\"></i></a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                    ");
}
                                        }
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"block_content\">\r\n");
      out.write("                                        <p>");
      out.print( count);
      out.write(" products</p>\r\n");
      out.write("                                        <a href=\"wishlist.jsp\">» My wishlists</a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!--wishlist block end-->\r\n");
      out.write("\r\n");
      out.write("                                <!--newsletter block start-->\r\n");
      out.write("                                <div class=\"sidebar_widget newsletter mb-35\">\r\n");
      out.write("                                    <div class=\"block_title\">\r\n");
      out.write("                                        <h3>newsletter</h3>\r\n");
      out.write("                                    </div> \r\n");
      out.write("                                    <form action=\"EmailServlet\" method=\"POST\">\r\n");
      out.write("                                        <p>Sign up for your newsletter</p>\r\n");
      out.write("                                        <input placeholder=\"Your email address\" type=\"text\" name=\"email\" value=\"");
      if (_jspx_meth_c_if_4(_jspx_page_context))
        return;
      out.write("\">\r\n");
      out.write("                                            <button type=\"submit\" name=\"action\" value=\"subscribe\">Subscribe</button>\r\n");
      out.write("                                        ");
      if (_jspx_meth_c_if_5(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                        ");
      if (_jspx_meth_c_if_6(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                    </form>   \r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!--newsletter block end--> \r\n");
      out.write("\r\n");
      out.write("                                <!--sidebar banner-->\r\n");
      out.write("                                <div class=\"sidebar_widget bottom \">\r\n");
      out.write("                                    <div class=\"banner_img\">\r\n");
      out.write("                                        <a href=\"#\"><img src=\"assets\\img\\banner\\banner9.jpg\" alt=\"\"></a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <!--sidebar banner end-->\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-lg-9 col-md-12\">\r\n");
      out.write("                                <!--banner slider start-->\r\n");
      out.write("                                <div class=\"banner_slider slider_1\">\r\n");
      out.write("                                    <div class=\"slider_active owl-carousel\">\r\n");
      out.write("                                        <div class=\"single_slider\" style=\"background-image: url(assets/img/slider/slide_1.png)\">\r\n");
      out.write("                                            <div class=\"slider_content\">\r\n");
      out.write("                                                <div class=\"slider_content_inner\">  \r\n");
      out.write("                                                    <h1>Women's Fashion</h1>\r\n");
      out.write("                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>\r\n");
      out.write("                                                    <a href=\"#\">shop now</a>\r\n");
      out.write("                                                </div>     \r\n");
      out.write("                                            </div>    \r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"single_slider\" style=\"background-image: url(assets/img/slider/slider_2.png)\">\r\n");
      out.write("                                            <div class=\"slider_content\">\r\n");
      out.write("                                                <div class=\"slider_content_inner\">  \r\n");
      out.write("                                                    <h1>New Collection</h1>\r\n");
      out.write("                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>\r\n");
      out.write("                                                    <a href=\"#\">shop now</a>\r\n");
      out.write("                                                </div>         \r\n");
      out.write("                                            </div>         \r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"single_slider\" style=\"background-image: url(assets/img/slider/slider_3.png)\">\r\n");
      out.write("                                            <div class=\"slider_content\">  \r\n");
      out.write("                                                <div class=\"slider_content_inner\">  \r\n");
      out.write("                                                    <h1>Best Collection</h1>\r\n");
      out.write("                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>\r\n");
      out.write("                                                    <a href=\"#\">shop now</a>\r\n");
      out.write("                                                </div> \r\n");
      out.write("                                            </div> \r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div> \r\n");
      out.write("                                <!--banner slider start-->\r\n");
      out.write("                                <!-- code phan san pham moi -->\r\n");
      out.write("                                ");

                                    ProductDAO pr = new ProductDAO();
                                    List<ProductDTO> listProductnew = pr.getData();
                                
      out.write("\r\n");
      out.write("                                <!-- ket thuc taoj danh sach sp moi -->\r\n");
      out.write("                                <!--new product area start-->\r\n");
      out.write("                                <div class=\"new_product_area\">\r\n");
      out.write("                                    <div class=\"block_title\">\r\n");
      out.write("                                        <h3>Mẫu mới</h3>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <div class=\"product_active owl-carousel\">\r\n");
      out.write("                                            ");
 for (ProductDTO p : listProductnew) {
      out.write("\r\n");
      out.write("                                            <div class=\"col-lg-3\">\r\n");
      out.write("                                                <div class=\"single_product\">\r\n");
      out.write("                                                    <div class=\"product_thumb\">\r\n");
      out.write("                                                        <a href=\"single-product.jsp?productId=");
      out.print( p.getId());
      out.write("\"><img src=");
      out.print( p.getImages()[0]);
      out.write(" alt=\"\"></a> \r\n");
      out.write("                                                        <div class=\"img_icone\">\r\n");
      out.write("                                                            <img src=\"\" alt=\"\">\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <div class=\"product_action\">\r\n");
      out.write("                                                            <a href=\"#\"> <i class=\"fa fa-shopping-cart\"></i> Add to cart</a>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                    </div>s\r\n");
      out.write("                                                    <div class=\"product_content\">\r\n");
      out.write("                                                        <span class=\"product_price\">");
      out.print( p.getPrice());
      out.write(" &#8363</span>\r\n");
      out.write("                                                        <h3 class=\"product_title\"><a href=\"single-product.jsp?productId=");
      out.print( p.getId());
      out.write('"');
      out.write('>');
      out.print( p.getProductName());
      out.write("</a></h3>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    <div class=\"product_info\">\r\n");
      out.write("                                                        <ul>\r\n");
      out.write("                                                            <li><a href=\"#\" title=\" Add to Wishlist \">Add to Wishlist</a></li>\r\n");
      out.write("                                                            <li><a href=\"#\" data-toggle=\"modal\" data-target=\"#modal_box\" title=\"Quick view\">View Detail</a></li>\r\n");
      out.write("                                                        </ul>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            ");
}
      out.write("                                                                                                                                                                                                                                                                                                             \r\n");
      out.write("                                        </div> \r\n");
      out.write("                                    </div>       \r\n");
      out.write("                                </div> \r\n");
      out.write("                                <!--new product area start-->  \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <!--Lay du lieu product tu database -->\r\n");
      out.write("\r\n");
      out.write("                                ");

                                    List<ProductDTO> list = pr.getData();
                                
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                <!-- ket thuc code  -->\r\n");
      out.write("\r\n");
      out.write("                                <!--featured product start--> \r\n");
      out.write("                                <div class=\"featured_product\">\r\n");
      out.write("                                    <div class=\"block_title\">\r\n");
      out.write("                                        <h3>Featured Products</h3>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <div class=\"product_active owl-carousel\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                                            <!-- duyet foreach lay du lieu tung san pham  -->\r\n");
      out.write("                                            ");
 for (ProductDTO p : list) {
      out.write("\r\n");
      out.write("                                            <div class=\"col-lg-3\">\r\n");
      out.write("                                                <div class=\"single_product\">\r\n");
      out.write("                                                    <div class=\"product_thumb\">\r\n");
      out.write("                                                        <a href=\"single-product.jsp?productId=");
      out.print( p.getId());
      out.write("\"><img src= ");
      out.print( p.getImages()[0]);
      out.write(" alt=\"\"></a> \r\n");
      out.write("                                                        <div class=\"hot_img\">\r\n");
      out.write("                                                            <img src=\"assets\\img\\cart\\span-hot.png\" alt=\"\">\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <div class=\"product_action\">\r\n");
      out.write("                                                            <a href=\"#\"> <i class=\"fa fa-shopping-cart\"></i> Add to cart</a>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    <div class=\"product_content\">\r\n");
      out.write("                                                        <span class=\"product_price\"> ");
      out.print( p.getPrice());
      out.write("&#8363</span>\r\n");
      out.write("                                                        <h3 class=\"product_title\"><a href=\"single-product.html\">");
      out.print( p.getProductName());
      out.write("</a></h3>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                    <div class=\"product_info\">\r\n");
      out.write("                                                        <ul>\r\n");
      out.write("                                                            <li><a href=\"#\" title=\" Add to Wishlist \">Add to Wishlist</a></li>\r\n");
      out.write("                                                            <li><a href=\"#\" data-toggle=\"modal\" data-target=\"#modal_box\" title=\"Quick view\">View Detail</a></li>\r\n");
      out.write("                                                        </ul>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            ");
 }
      out.write("\r\n");
      out.write("                                            <!-- ket thuc for  -->\r\n");
      out.write("\r\n");
      out.write("                                        </div> \r\n");
      out.write("                                    </div> \r\n");
      out.write("                                </div>     \r\n");
      out.write("                                <!--featured product end--> \r\n");
      out.write("\r\n");
      out.write("                                <!--banner area start-->\r\n");
      out.write("                                <div class=\"banner_area mb-60\">\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <div class=\"col-lg-6 col-md-6\">\r\n");
      out.write("                                            <div class=\"single_banner\">\r\n");
      out.write("                                                <a href=\"#\"><img src=\"assets\\img\\banner\\banner7.jpg\" alt=\"\"></a>\r\n");
      out.write("                                                <div class=\"banner_title\">\r\n");
      out.write("                                                    <p>Up to <span> 40%</span> off</p>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"col-lg-6 col-md-6\">\r\n");
      out.write("                                            <div class=\"single_banner\">\r\n");
      out.write("                                                <a href=\"#\"><img src=\"assets\\img\\banner\\banner8.jpg\" alt=\"\"></a>\r\n");
      out.write("                                                <div class=\"banner_title title_2\">\r\n");
      out.write("                                                    <p>sale off <span> 30%</span></p>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>     \r\n");
      out.write("                                <!--banner area end--> \r\n");
      out.write("\r\n");
      out.write("                                <!--brand logo strat--> \r\n");
      out.write("                                <div class=\"brand_logo mb-60\">\r\n");
      out.write("                                    <div class=\"block_title\">\r\n");
      out.write("                                        <h3>Brands</h3>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <div class=\"brand_active owl-carousel\">\r\n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>       \r\n");
      out.write("                                <!--brand logo end-->        \r\n");
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
      out.write("</div>");
      out.write("\r\n");
      out.write("        <!--footer area end-->\r\n");
      out.write("\r\n");
      out.write("        <!-- modal area start --> \r\n");
      out.write("        <div class=\"modal fade\" id=\"modal_box\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\r\n");
      out.write("            <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\r\n");
      out.write("                <div class=\"modal-content\">\r\n");
      out.write("                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("                        <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("                    </button>\r\n");
      out.write("                    <div class=\"modal_body\">\r\n");
      out.write("                        <div class=\"container\">\r\n");
      out.write("                            <div class=\"row\">\r\n");
      out.write("                                <div class=\"col-lg-5 col-md-5 col-sm-12\">\r\n");
      out.write("                                    <div class=\"modal_tab\">  \r\n");
      out.write("                                        <div class=\"tab-content\" id=\"pills-tabContent\">\r\n");
      out.write("                                            <div class=\"tab-pane fade show active\" id=\"tab1\" role=\"tabpanel\">\r\n");
      out.write("                                                <div class=\"modal_tab_img\">\r\n");
      out.write("                                                    <a href=\"#\"><img src=\"assets\\img\\product\\product13.jpg\" alt=\"\"></a>    \r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"tab-pane fade\" id=\"tab2\" role=\"tabpanel\">\r\n");
      out.write("                                                <div class=\"modal_tab_img\">\r\n");
      out.write("                                                    <a href=\"#\"><img src=\"assets\\img\\product\\product14.jpg\" alt=\"\"></a>    \r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"tab-pane fade\" id=\"tab3\" role=\"tabpanel\">\r\n");
      out.write("                                                <div class=\"modal_tab_img\">\r\n");
      out.write("                                                    <a href=\"#\"><img src=\"assets\\img\\product\\product15.jpg\" alt=\"\"></a>    \r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"modal_tab_button\">    \r\n");
      out.write("                                            <ul class=\"nav product_navactive\" role=\"tablist\">\r\n");
      out.write("                                                <li>\r\n");
      out.write("                                                    <a class=\"nav-link active\" data-toggle=\"tab\" href=\"#tab1\" role=\"tab\" aria-controls=\"tab1\" aria-selected=\"false\"><img src=\"assets\\img\\cart\\cart17.jpg\" alt=\"\"></a>\r\n");
      out.write("                                                </li>\r\n");
      out.write("                                                <li>\r\n");
      out.write("                                                    <a class=\"nav-link\" data-toggle=\"tab\" href=\"#tab2\" role=\"tab\" aria-controls=\"tab2\" aria-selected=\"false\"><img src=\"assets\\img\\cart\\cart18.jpg\" alt=\"\"></a>\r\n");
      out.write("                                                </li>\r\n");
      out.write("                                                <li>\r\n");
      out.write("                                                    <a class=\"nav-link button_three\" data-toggle=\"tab\" href=\"#tab3\" role=\"tab\" aria-controls=\"tab3\" aria-selected=\"false\"><img src=\"assets\\img\\cart\\cart19.jpg\" alt=\"\"></a>\r\n");
      out.write("                                                </li>\r\n");
      out.write("                                            </ul>\r\n");
      out.write("                                        </div>    \r\n");
      out.write("                                    </div>  \r\n");
      out.write("                                </div> \r\n");
      out.write("                                <div class=\"col-lg-7 col-md-7 col-sm-12\">\r\n");
      out.write("                                    <div class=\"modal_right\">\r\n");
      out.write("                                        <div class=\"modal_title mb-10\">\r\n");
      out.write("                                            <h2>Handbag feugiat</h2> \r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"modal_price mb-10\">\r\n");
      out.write("                                            <span class=\"new_price\">$64.99</span>    \r\n");
      out.write("                                            <span class=\"old_price\">$78.99</span>    \r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"modal_content mb-10\">\r\n");
      out.write("                                            <p>Short-sleeved blouse with feminine draped sleeve detail.</p>    \r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"modal_size mb-15\">\r\n");
      out.write("                                            <h2>size</h2>\r\n");
      out.write("                                            <ul>\r\n");
      out.write("                                                <li><a href=\"#\">s</a></li>\r\n");
      out.write("                                                <li><a href=\"#\">m</a></li>\r\n");
      out.write("                                                <li><a href=\"#\">l</a></li>\r\n");
      out.write("                                                <li><a href=\"#\">xl</a></li>\r\n");
      out.write("                                                <li><a href=\"#\">xxl</a></li>\r\n");
      out.write("                                            </ul>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"modal_add_to_cart mb-15\">\r\n");
      out.write("                                            <form action=\"#\">\r\n");
      out.write("                                                <input min=\"0\" max=\"100\" step=\"2\" value=\"1\" type=\"number\">\r\n");
      out.write("                                                <button type=\"submit\">add to cart</button>\r\n");
      out.write("                                            </form>\r\n");
      out.write("                                        </div>   \r\n");
      out.write("                                        <div class=\"modal_description mb-15\">\r\n");
      out.write("                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>    \r\n");
      out.write("                                        </div> \r\n");
      out.write("                                        <div class=\"modal_social\">\r\n");
      out.write("                                            <h2>Share this product</h2>\r\n");
      out.write("                                            <ul>\r\n");
      out.write("                                                <li><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\r\n");
      out.write("                                                <li><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\r\n");
      out.write("                                                <li><a href=\"#\"><i class=\"fa fa-pinterest\"></i></a></li>\r\n");
      out.write("                                                <li><a href=\"#\"><i class=\"fa fa-google-plus\"></i></a></li>\r\n");
      out.write("                                                <li><a href=\"#\"><i class=\"fa fa-linkedin\"></i></a></li>\r\n");
      out.write("                                            </ul>    \r\n");
      out.write("                                        </div>      \r\n");
      out.write("                                    </div>    \r\n");
      out.write("                                </div>    \r\n");
      out.write("                            </div>     \r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>    \r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div> \r\n");
      out.write("\r\n");
      out.write("        <!-- modal area end --> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- all js here -->\r\n");
      out.write("        ");
      out.write("<script src=\"assets\\js\\vendor\\jquery-1.12.0.min.js\"></script>\r\n");
      out.write("<script src=\"assets\\js\\popper.js\"></script>\r\n");
      out.write("<script src=\"assets\\js\\bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"assets\\js\\plugins.js\"></script>\r\n");
      out.write("<script src=\"assets\\js\\main.js\"></script>");
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
        out.write("                            <li><a href=\"LoginServlet\" title=\"Login\">Login</a></li>  \r\n");
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
        out.write("                            <li><a href=\"AdminServlet\">Hello, ");
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
    _jspx_th_c_if_3.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.LISTCATEGORIES!= null && !requestScope.LISTCATEGORIES.isEmpty()}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_3 = _jspx_th_c_if_3.doStartTag();
    if (_jspx_eval_c_if_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                            ");
        if (_jspx_meth_c_forEach_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_3, _jspx_page_context))
          return true;
        out.write("\r\n");
        out.write("                                        ");
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

  private boolean _jspx_meth_c_forEach_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_3, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_3);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.LISTCATEGORIES}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("c");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                <li class=\"has-sub\"><a href=\"#\"><i class=\"fa fa-caret-right\"></i>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.categoryName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a>\r\n");
          out.write("                                                    <ul class=\"categorie_sub\">\r\n");
          out.write("                                                        <li><a href=\"#\"><i class=\"fa fa-caret-right\"></i> Accessories</a>\r\n");
          out.write("                                                            <ul class=\"categorie_sub\">\r\n");
          out.write("                                                                <li><a href=\"#\"><i class=\"fa fa-caret-right\"></i> Accessories</a></li>\r\n");
          out.write("                                                                <li><a href=\"#\"><i class=\"fa fa-caret-right\"></i> Dresses</a></li>\r\n");
          out.write("                                                                <li><a href=\"#\"><i class=\"fa fa-caret-right\"></i> Tops</a></li>\r\n");
          out.write("                                                                <li><a href=\"#\"><i class=\"fa fa-caret-right\"></i> HandBags</a></li>\r\n");
          out.write("                                                            </ul> \r\n");
          out.write("                                                        </li>\r\n");
          out.write("                                                        <li><a href=\"#\"><i class=\"fa fa-caret-right\"></i> Dresses</a></li>\r\n");
          out.write("                                                        <li><a href=\"#\"><i class=\"fa fa-caret-right\"></i> Tops</a></li>\r\n");
          out.write("                                                        <li><a href=\"#\"><i class=\"fa fa-caret-right\"></i> HandBags</a></li>\r\n");
          out.write("                                                    </ul>     \r\n");
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

  private boolean _jspx_meth_c_if_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_4 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_4.setPageContext(_jspx_page_context);
    _jspx_th_c_if_4.setParent(null);
    _jspx_th_c_if_4.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.EMAIL_CUSTOMER != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_4 = _jspx_th_c_if_4.doStartTag();
    if (_jspx_eval_c_if_4 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.EMAIL_CUSTOMER}", java.lang.String.class, (PageContext)_jspx_page_context, null));
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

  private boolean _jspx_meth_c_if_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_5 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_5.setPageContext(_jspx_page_context);
    _jspx_th_c_if_5.setParent(null);
    _jspx_th_c_if_5.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.CHECK == 'success'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_5 = _jspx_th_c_if_5.doStartTag();
    if (_jspx_eval_c_if_5 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                            <div class=\"col-12\">\r\n");
        out.write("                                                <span class=\"form-messege\" style='color: green;'>");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.MESSAGE}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</span>\r\n");
        out.write("                                            </div>\r\n");
        out.write("                                        ");
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
    _jspx_th_c_if_6.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.CHECK == 'fail'}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_6 = _jspx_th_c_if_6.doStartTag();
    if (_jspx_eval_c_if_6 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("                                            <div class=\"col-12\">\r\n");
        out.write("                                                <span class=\"form-messege\" style='color: red;'>");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.MESSAGE}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</span>\r\n");
        out.write("                                            </div>\r\n");
        out.write("                                        ");
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
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.LISTSUPPLIERS}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("s");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                                                <div class=\"col-lg-2\">\r\n");
          out.write("                                                    <div class=\"single_brand\">\r\n");
          out.write("                                                        <a href=\"#\"><img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${s.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\"></a>\r\n");
          out.write("                                                    </div>\r\n");
          out.write("                                                </div>\r\n");
          out.write("                                            ");
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
}
