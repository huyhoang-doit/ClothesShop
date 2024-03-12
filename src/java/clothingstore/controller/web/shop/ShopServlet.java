/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.controller.web.shop;

import clothingstore.dao.CategoryDAO;
import clothingstore.dao.ProductDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import clothingstore.model.CategoryDTO;
import clothingstore.model.ProductDTO;

/**
 *
 * @author HuuThanh
 */
public class ShopServlet extends HttpServlet {

    private static final String SHOP = "view/jsp/home/shop-list.jsp";
    private static final String SORT = "view/jsp/ajax/sortproducts.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = SHOP;
        try {
            ProductDAO pDao = new ProductDAO();
            CategoryDAO cDao = new CategoryDAO();
            List<ProductDTO> listProducts = new ArrayList<>();
            
            List<CategoryDTO> listCategories = cDao.getData();
            if (request.getAttribute("LISTPRODUCTS") == null) {
                listProducts = pDao.getData();
            } else {
                listProducts = ( List<ProductDTO>) request.getAttribute("LISTPRODUCTS");
            }

            String valueSort = request.getParameter("valueSort");
            if (valueSort != null) {
                switch (valueSort) {
                    case "1":
                        listProducts = pDao.sortProduct(listProducts, valueSort);
                        break;
                    case "2":
                        listProducts = pDao.sortProduct(listProducts, valueSort);
                        break;
                    case "3":
                        listProducts = pDao.sortProduct(listProducts, valueSort);
                        break;
                }
                url = SORT;
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
            
            request.setAttribute("DATA_FROM", "ShopServlet");
            request.setAttribute("NUMBERPAGE", numberpage);
            request.setAttribute("CURRENTPAGE", page);
            request.setAttribute("LISTPRODUCTS", listByPage);
            request.setAttribute("LISTCATEGORIES", listCategories);
            request.setAttribute("VALUESORT", valueSort);
            request.setAttribute("CURRENTSERVLET", "Shop");
        } catch (Exception ex) {
            log("ShopServlet error:" + ex.getMessage());
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
