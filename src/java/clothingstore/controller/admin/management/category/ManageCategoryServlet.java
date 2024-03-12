/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.controller.admin.management.category;

import clothingstore.dao.CategoryDAO;
import clothingstore.dao.TypeDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import clothingstore.model.CategoryDTO;
import clothingstore.model.TypeDTO;

/**
 *
 * @author HuuThanh
 */
@WebServlet(name = "ManageCategoryServlet", urlPatterns = {"/ManageCategoryServlet"})
public class ManageCategoryServlet extends HttpServlet {

    private static final String MANAGE_CATEGORY_PAGE = "view/jsp/admin/admin_categories.jsp";
    private static final String INSERT_CATEGORY_PAGE = "view/jsp/admin/admin_categories_insert.jsp";
    private static final String UPDATE_CATEGORY_SERVLET = "EditCategoryServlet";
    private static final String INSERT = "Insert";
    private static final String UPDATE = "Update";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = MANAGE_CATEGORY_PAGE;
        try {
            CategoryDAO cDao = new CategoryDAO();
            TypeDAO tDao = new TypeDAO();

            List<TypeDTO> listTypes = tDao.getAllType();

            String action = request.getParameter("action");
            if (INSERT.equals(action)) {
                url = INSERT_CATEGORY_PAGE;
            }
            List<CategoryDTO> list = cDao.getData();
            request.setAttribute("LIST_CATEGORIES", list);
            request.setAttribute("LIST_TYPES", listTypes);
            request.setAttribute("CURRENTSERVLET", "Category");
        } catch (Exception ex) {
            log("ManageCategoryServlet error:" + ex.getMessage());
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
