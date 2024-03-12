/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.controller.admin.management.product;

import clothingstore.dao.CategoryDAO;
import clothingstore.dao.ProductDAO;
import clothingstore.dao.SupplierDAO;
import clothingstore.dao.TypeDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import clothingstore.model.CategoryDTO;
import clothingstore.model.SupplierDTO;
import clothingstore.model.TypeDTO;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "InsertProductServlet", urlPatterns = {"/InsertProductServlet"})
public class InsertProductServlet extends HttpServlet {

    private static final String INSERT_PAGE = "view/jsp/admin/admin_products_insert.jsp";
    private static final String MANAGE_PRODUCT_CONTROLLER = "ManageProductServlet";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

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
        String url = INSERT_PAGE;
        try {
            String action = request.getParameter("action");
            ProductDAO pDao = new ProductDAO();
            if (action != null) {
                CategoryDAO cDao = new CategoryDAO();
                SupplierDAO sDao = new SupplierDAO();
                TypeDAO tDao = new TypeDAO();

                List<CategoryDTO> listCategories = cDao.getData();
                List<SupplierDTO> listSuppliers = sDao.getData();
                List<TypeDTO> listTypes = tDao.getAllType();

                request.setAttribute("LIST_SUPPLIERS", listSuppliers);
                request.setAttribute("LIST_TYPES", listTypes);
                request.setAttribute("LIST_CATEGORIES", listCategories);
            } else {
                String name = request.getParameter("product_name");
                String price_raw = request.getParameter("price");
                String size = request.getParameter("size");
                String color = request.getParameter("color");
                String stock_raw = request.getParameter("stock");
                String[] images = request.getParameterValues("product_img");
                String description = request.getParameter("description");
                String cid_raw = request.getParameter("category_id");
                String sid_raw = request.getParameter("supplier_id");
                String tid_raw = request.getParameter("type_id");
                String date = request.getParameter("date");
                String discount_raw = request.getParameter("discount");

                int cId = Integer.parseInt(cid_raw);
                int sId = Integer.parseInt(sid_raw);
                int tId = Integer.parseInt(tid_raw);
                int stock = Integer.parseInt(stock_raw);
                double price = Double.parseDouble(price_raw);
                double discount = Double.parseDouble(discount_raw);
                String image = "";
                if (images[0] != null && !images[0].equals("")) {
                    for (int i = 0; i < images.length; i++) {
                        image += "view/assets/home/img/products/" + images[i] + " ";
                    }
                }
                
                pDao.insertProduct(name, cId, sId, tId, price, discount, size, color, stock, date, image, description);
                
                request.setAttribute("mess", "Insert successfully!");
                url = MANAGE_PRODUCT_CONTROLLER;
            }
        } catch (Exception ex) {
            log("InsertProductServlet error:" + ex.getMessage());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
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
