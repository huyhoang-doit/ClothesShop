/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.web;

import dal.CategoryDAO;
import dal.ProductDAO;
import dal.SupplierDAO;
import dal.TypeDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CartItem;
import model.CategoryDTO;
import model.ProductDTO;
import model.SupplierDTO;
import model.TypeDTO;

/**
 *
 * @author lvhho
 */
public class DispatchServlet extends HttpServlet {

    private final String LOGIN = "Login";
    private final String SEARCH = "Search";
    private final String LOGOUT = "Logout";
    private final String REGISTER = "Register";
    private final String ADDTOWISHLIST = "AddToWishList";
    private final String WELCOME = "home.jsp";
    private final String LOGIN_CONTROLlER = "LoginServlet";
    private final String WISHLIST_CONTROLlER = "WishlistServlet";
    private final String REGISTER_CONTROLLER = "RegisterServlet";
    private final String SEARCH_CONTROLLER = "SearchServlet";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        String url = WELCOME;
        try {
            String btnValue = request.getParameter("btnAction");
            HttpSession session = request.getSession();
            if (btnValue == null) {
                getDataHomeLSP(request, response);
            } else if (btnValue.equals(LOGOUT)) {
                url = WELCOME;
                getDataHomeLSP(request, response);
                if (session.getAttribute("account") != null) {
                    session.removeAttribute("account");
                }
            } else if (btnValue.equals(LOGIN)) {
                url = LOGIN_CONTROLlER;
            } else if (btnValue.equals(REGISTER)) {
                url = REGISTER_CONTROLLER;
            } else if (btnValue.equals(SEARCH)) {
                url = SEARCH_CONTROLLER;
            } else if (btnValue.equals(ADDTOWISHLIST)) {
                url = WISHLIST_CONTROLlER;
            }
        } catch (Exception ex) {

        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    protected void getDataHomeLSP(HttpServletRequest request, HttpServletResponse response) {
        try {
            ProductDAO pDao = new ProductDAO();
            CategoryDAO cDao = new CategoryDAO();
            SupplierDAO sDao = new SupplierDAO();
            TypeDAO tDao = new TypeDAO();
            CategoryDAO caDao = new CategoryDAO();

            List<ProductDTO> listProducts = pDao.getData();
            List<CategoryDTO> listCategories = cDao.getData();
            List<SupplierDTO> listSuppliers = sDao.getData();
            List<ProductDTO> listProductsNew = pDao.getProductNew();
            List<ProductDTO> listProductsBestSeller = pDao.getProductsBestSeller();
            List<TypeDTO> listTypes = tDao.getAllType();

            request.setAttribute("LIST_PRODUCTS", listProducts);
            request.setAttribute("LIST_TYPES", listTypes);
            request.setAttribute("LIST_CATEGORIESS", listCategories);
            request.setAttribute("LIST_SUPPLIERS", listSuppliers);
            request.setAttribute("LIST_PRODUCTS_NEW", listProductsNew);
            request.setAttribute("LIST_PRODUCTS_SELLER", listProductsBestSeller);
        } catch (Exception ex) {
            log("DispatchServlet error:" + ex.getMessage());
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CartUtil cartUtil = new CartUtil();

        WishlistUtil wishlistUtil = new WishlistUtil();
        try {
            List<CartItem> carts = null;
            List<ProductDTO> wishlists = null;

            HttpSession session = request.getSession();
            if (session.getAttribute("CART") == null) {
                Cookie cookie = cartUtil.getCookieByName(request, "Cart");
                if (cookie != null) {
                    carts = cartUtil.getCartFromCookie(cookie);
                }
            } else {
                carts = (List<CartItem>) session.getAttribute("CART");
            }
//            if (session.getAttribute("WISHLIST") == null) {
//                Cookie cookie = wishlistUtil.getCookieByName(request, "Wishlist");
//                if (cookie != null) {
//                    wishlists = wishlistUtil.getWishlistFromCookie(cookie);
//                }
//            } else {
//                carts = (List<CartItem>) session.getAttribute("WISHLIST");
//            }
//            session.setAttribute("WISHLIST", wishlists);
            session.setAttribute("CART", carts);

        } catch (Exception e) {
        }
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
