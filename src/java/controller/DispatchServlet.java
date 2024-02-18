/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CategoryDTO;
import model.ProductDTO;

/**
 *
 * @author lvhho
 */
public class DispatchServlet extends HttpServlet {

    private final String LOGINPAGE = "login.jsp";
    private final String LOGIN = "Login";
    private final String LOGOUT = "Logout";
    private final String WELCOME = "home.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        String url = WELCOME;
        try {
            String btnValue = request.getParameter("btnAction");
            if (btnValue == null) {
                ProductDAO pDao = new ProductDAO();
                CategoryDAO cDao = new CategoryDAO();
                List<ProductDTO> listProducts = pDao.getData();
                List<CategoryDTO> listCategories = cDao.getData();
                request.setAttribute("LISTPRODUCTS", listProducts);
                request.setAttribute("LISTCATEGORIES", listCategories);
            } else if (btnValue.equals(LOGOUT)) {
                url = WELCOME;
                HttpSession session = request.getSession();
                if (session.getAttribute("account") != null) {
                    session.removeAttribute("account");
                }
            }
        } catch (Exception ex) {

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
