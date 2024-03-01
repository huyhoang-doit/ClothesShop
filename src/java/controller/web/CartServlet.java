/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.web;

import dal.CartDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CartDTO;
import model.ProductDTO;
import model.UserDTO;

/**
 *
 * @author lvhho
 */
@WebServlet(name = "CartServlet", urlPatterns = {"/CartServlet"})
public class CartServlet extends HttpServlet {

    private static final String LOGIN = "LoginServlet?btnAction=Login";
    private static final String CART_AJAX = "DispatchServlet";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = CART_AJAX;
        try {
            HttpSession session = request.getSession();
            String quantity = request.getParameter("quantity");
            String product_id = request.getParameter("product_id");
            UserDTO user = (UserDTO) session.getAttribute("account");
            ProductDAO pDao = new ProductDAO();
            CartDAO cDao = new CartDAO();

            ProductDTO product = pDao.getProductByID(Integer.parseInt(product_id));
            if (user == null) {
                url = LOGIN;
            } else {
                List<CartDTO> carts = null;
                CartDTO cart = new CartDTO(product, Integer.parseInt(quantity), user.getUserName());
                // Check cart exist ??
                carts = (List<CartDTO>) session.getAttribute("CART");
                if (carts == null) {
                    if (cDao.createCart(cart)) {
                        carts = cDao.getCartByUserName(user.getUserName());
                    }
                } else {
                    carts = cDao.insertCart(carts, cart);
                }
                session.setAttribute("CART", carts);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
