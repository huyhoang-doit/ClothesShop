/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.OrderDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.OrderDTO;

/**
 *
 * @author HuuThanh
 */
public class AdminServlet extends HttpServlet {

    private static final String ADMIN = "admin_home.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AdminServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        ProductDAO pDao = new ProductDAO();
        OrderDAO oDao = new OrderDAO();
        try {
            double totalSale = oDao.getTotalSale();
            double totalSaleTD = oDao.getTotalSaleToday();
            int totalProducts = pDao.getTotalProducts();
            int quantitySold = pDao.getQuantitySold();
            List<OrderDTO> last5Orders = oDao.getLast5Orders();

            
            double year2018 = oDao.getTotalMoneyByYear(2018);
            double year2019 = oDao.getTotalMoneyByYear(2019);
            double year2020 = oDao.getTotalMoneyByYear(2020);
            double year2021 = oDao.getTotalMoneyByYear(2021);
            double year2022 = oDao.getTotalMoneyByYear(2022);
            double year2023 = oDao.getTotalMoneyByYear(2023);
            double year2024 = oDao.getTotalMoneyByYear(2024);

            
            request.setAttribute("YEAR18", year2018);
            request.setAttribute("YEAR19", year2019);
            request.setAttribute("YEAR20", year2020);
            request.setAttribute("YEAR21", year2021);
            request.setAttribute("YEAR22", year2022);
            request.setAttribute("YEAR23", year2023);
            request.setAttribute("YEAR24", year2024);
            
            request.setAttribute("TOTALSALE", totalSale);
            request.setAttribute("TOTALSALETODAY", totalSaleTD);
            request.setAttribute("TOTALPRODUCTS", totalProducts);
            request.setAttribute("QUANTITYSOLD", quantitySold);
            request.setAttribute("LAST5ORDERS", last5Orders);
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            request.getRequestDispatcher(ADMIN).forward(request, response);
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
