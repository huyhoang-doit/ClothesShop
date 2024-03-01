/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.web;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CategoryDTO;
import model.ProductDTO;

/**
 *
 * @author Admin
 */
@WebServlet(name = "SearchServlet", urlPatterns = {"/SearchServlet"})
public class SearchServlet extends HttpServlet {

    private static final String SEARCH_PAGE = "shop-list.jsp";
    private static final String SEARCH_IN_SHOPLIST = "ajax/sortproducts.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = SEARCH_PAGE;
        try {
            String txtSearch = request.getParameter("txtSearch");
            String scope = request.getParameter("scope");
            ProductDAO pDao = new ProductDAO();
            List<ProductDTO> listProducts = pDao.getProductBySearch(txtSearch);
            CategoryDAO cDao = new CategoryDAO();
            List<CategoryDTO> listCategories = cDao.getData();
            
            
            if(("shop-list.jsp").equals(scope)) {
                url = SEARCH_IN_SHOPLIST;
            }
            //Paging
            int page, numPerPage = 9;
            int size = listProducts.size();
            int numberpage = ((size % numPerPage == 0) ? (size / 9) : (size / 9) + 1);
            String xpage = request.getParameter("page");
            if (xpage == null) {
                page = 1;
            } else {
                page = Integer.parseInt(xpage);
            }
            int start, end;
            start = (page - 1) * 9;
            end = Math.min(page * numPerPage, size);

            List<ProductDTO> listByPage = pDao.getListByPage(listProducts, start, end);
            
            
            
            request.setAttribute("LISTPRODUCTS", listByPage);
            request.setAttribute("LISTCATEGORIES", listCategories);
        } catch (Exception e) {

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
