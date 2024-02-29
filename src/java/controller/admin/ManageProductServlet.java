/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
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
 * @author HuuThanh
 */
@WebServlet(name = "ManageProductServlet", urlPatterns = {"/ManageProductServlet"})
public class ManageProductServlet extends HttpServlet {

    private final String PRODUCT_PAGE = "admin_products.jsp";
    private final String INSERT_PRODUCT_PAGE = "admin_products_insert.jsp";
    private final String INSERT = "Insert";
    private final String DELETE_PRODUCT_CONTROLLER = "DeleteProductServlet";
    private final String INSERT_PRODUCT_CONTROLLER = "InsertProductServlet";
    private final String Delete = "Delete";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = PRODUCT_PAGE;
        try {
            String action = request.getParameter("action");
            ProductDAO pDao = new ProductDAO();
            CategoryDAO cDao = new CategoryDAO();

            List<ProductDTO> listProducts = pDao.getData();
            List<CategoryDTO> listCategories = cDao.getData();
            if (action == null) {
                request.setAttribute("LIST_PRODUCTS", listProducts);
                request.setAttribute("LIST_CATEGORIES", listCategories);
            } else if (action.equals(INSERT)) {
                url = INSERT_PRODUCT_CONTROLLER;
            } else if (action.equals("update")) {
                request.setAttribute("LIST_PRODUCTS", listProducts);
                request.setAttribute("LIST_CATEGORIES", listCategories);
            } 
//            else if (action.equals("insertcategory")) {
//                String msgInsertCate = null;
//                String checkInsertCate = null;
//                url = INSERT_PRODUCT_PAGE;
//                String newCate = request.getParameter("newcate");
//                if (cDao.insertCategory(newCate)) {
//                    checkInsertCate = "success";
//                    msgInsertCate = "Thêm danh mục mới thành công";
//                    request.setAttribute("LIST_CATEGORIES", listCategories);
//                    request.setAttribute("MSG_INSERT_CATE", msgInsertCate);
//                    request.setAttribute("STATUS_INSERT_CATE", msgInsertCate);
//
//                } else {
//                    checkInsertCate = "fail";
//                    msgInsertCate = "Đã có lỗi xảy ra, thử lại sau";
//                    request.setAttribute("LIST_CATEGORIES", listCategories);
//                    request.setAttribute("MSG_INSERT_CATE", msgInsertCate);
//                    request.setAttribute("STATUS_INSERT_CATE", msgInsertCate);
//                }
//            }
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
