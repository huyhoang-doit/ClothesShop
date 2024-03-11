/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.controller.web.profile;

import clothingstore.dao.UserDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import clothingstore.model.UserDTO;

/**
 *
 * @author HuuThanh
 */
public class EditProfileServlet extends HttpServlet {

    private final String PROFILE = "view/jsp/home/my-account.jsp";

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
        try {
            String firstName = request.getParameter("first-name");
            String lastName = request.getParameter("last-name");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            String avatar = request.getParameter("avatar");
            String role_raw = request.getParameter("role");
            UserDAO uDao = new UserDAO();

            int roleId = (role_raw.equals("Admin") ? 1 : 2);
            HttpSession session = request.getSession();
            UserDTO user = (UserDTO) session.getAttribute("account");

            uDao.updateUser(firstName, lastName, email, address, phone, user.getUserName(), avatar, roleId);
            
            // refresh lại session user vì mới update
            user = uDao.checkLogin(user.getUserName(), user.getPassword());
            session.setAttribute("account", user);
            
            request.setAttribute("STATUS", "Update successfully!!!");
        } catch (Exception ex) {
            log("EditProfileServlet error:" + ex.getMessage());
        } finally {
            request.getRequestDispatcher(PROFILE).forward(request, response);
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
