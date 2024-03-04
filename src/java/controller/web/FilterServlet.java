/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.web;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.util.ArrayList;
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
 * @author lvhho
 */
@WebServlet(name = "FilterServlet", urlPatterns = {"/FilterServlet"})
public class FilterServlet extends HttpServlet {

    private static final String SHOP_LIST = "shop-list.jsp";
    private static final String SORT = "ajax/sortproducts.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = SHOP_LIST;
        try {
            ProductDAO pDao = new ProductDAO();
            CategoryDAO cDao = new CategoryDAO();
            List<CategoryDTO> listCategories = cDao.getData();
            List<ProductDTO> listProducts = pDao.getData();
            String group = request.getParameter("sort_group");
            String action = request.getParameter("btnAction");
            String id_filter_raw = request.getParameter("id_filter");
            String[] cid_filter_raw = request.getParameterValues("id_filter");
            int[] cid_filter = null;
            Boolean[] chid = new Boolean[listCategories.size() + 1];
            int id_filter = 0;
            String queryString = request.getQueryString();

            if (action == null) {
                action = group;
            }

            //CategoryId 
            if (id_filter_raw != null) {
                id_filter = Integer.parseInt(id_filter_raw);
                if ("filterByCategory".equals(action)) {
                    //RefineBrand
                    if (cid_filter_raw != null) {
                        cid_filter = new int[cid_filter_raw.length];
                        for (int i = 0; i < cid_filter.length; i++) {
                            cid_filter[i] = Integer.parseInt(cid_filter_raw[i]);
                        }
                        listProducts = pDao.searchByCheckBox(listProducts, cid_filter);
                        if (id_filter == 0) {
                            chid[0] = true;
                        }
                    }
//                  
                } else if ("filterBySupplier".equals(action)) {
                    listProducts = pDao.getProductSupplierId(id_filter);
                }
            } else if (id_filter_raw == null || id_filter == 0) {
                chid[0] = true;
            }
            if (cid_filter == null && cid_filter_raw != null) {
                cid_filter = new int[cid_filter_raw.length];
                cid_filter[0] = 0;
            }

            //Sort Products
            String valueSort = request.getParameter("valueSort");
            if (valueSort != null && !valueSort.equals("")) {
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

            //Price
            String priceFrom_raw = request.getParameter("pricefrom");
            String priceTo_raw = request.getParameter("priceto");
            double priceFrom = ((priceFrom_raw == null || "".equals(priceFrom_raw)) ? 0 : Double.parseDouble(priceFrom_raw));
            double priceTo = ((priceTo_raw == null || "".equals(priceTo_raw)) ? 0 : Double.parseDouble(priceTo_raw));
            if (priceFrom != 0 || priceTo != 0) {
                listProducts = pDao.searchByPrice(listProducts, priceFrom, priceTo);
                request.setAttribute("price1", priceFrom);
                request.setAttribute("price2", priceTo);
                url = SHOP_LIST;
            }

            //Color
            String color = request.getParameter("color");
            if (color != null && !color.equals("")) {
                listProducts = pDao.searchByColor(listProducts, color);
                url = SHOP_LIST;
            }

            //Discount
            String discount = request.getParameter("discount");
            if (discount != null) {
                switch (discount) {
                    case "dis25":
                        listProducts = pDao.searchByDiscount(listProducts, 0.25);
                        break;
                    case "dis40":
                        listProducts = pDao.searchByDiscount(listProducts, 0.4);
                        break;
                    case "dis75":
                        listProducts = pDao.searchByDiscount(listProducts, 0.75);
                        break;
                    default:
                        break;
                }
                request.setAttribute("DISCOUNT", discount);
                url = SHOP_LIST;
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

            //RefineBrand
            if ((cid_filter_raw != null) && (cid_filter[0] != 0)) {
                chid[0] = false;
                for (int i = 1; i < chid.length; i++) {
                    if (isCheck(listCategories.get(i - 1).getId(), cid_filter)) {
                        chid[i] = true;
                    } else {
                        chid[i] = false;
                    }
                }
            }

            request.setAttribute("CORLOR", color);
            request.setAttribute("SORT_GROUP", action);
            request.setAttribute("DATA_FROM", "FilterServlet");
            request.setAttribute("NUMBERPAGE", numberpage);
            request.setAttribute("CURRENTPAGE", page);
            request.setAttribute("chid", chid);
            request.setAttribute("CIDCHECK", id_filter_raw);
            request.setAttribute("LISTPRODUCTS", listByPage);
            request.setAttribute("LISTCATEGORIES", listCategories);
            request.setAttribute("VALUESORT", valueSort);
            request.setAttribute("filterByCategory", "filterByCategory");
            request.setAttribute("QUERYSTRING", queryString);
        } catch (Exception e) {
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    private boolean isCheck(int d, int[] id) {
        if (id == null) {
            return false;
        } else {
            for (int i = 0; i < id.length; i++) {
                if (id[i] == d) {
                    return true;
                }
            }
        }
        return false;
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
