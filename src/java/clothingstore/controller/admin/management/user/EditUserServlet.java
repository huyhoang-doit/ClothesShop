/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.controller.admin.management.user;

import clothingstore.dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import clothingstore.model.UserDTO;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "EditUserServlet", urlPatterns = {"/EditUserServlet"})
public class EditUserServlet extends HttpServlet {

    private static final String EDIT_PAGE = "view/jsp/admin/admin_edit_user.jsp";
    private static final String MANAGE_USER_CONTROLLER = "ManageUserServlet";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditUserServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditUserServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO dao = new UserDAO();
        try {
            String action = request.getParameter("action");
            String url = EDIT_PAGE;
            if (action == null) {
                String username = request.getParameter("username");
                UserDTO user = dao.getUserByName(username);

                request.setAttribute("username", user.getUserName());
                request.setAttribute("firstname", user.getFirstName());
                request.setAttribute("lastname", user.getLastName());
                request.setAttribute("phone", user.getPhone());
                request.setAttribute("roleid", user.getRoleID());
                request.setAttribute("address", user.getAddress());
                request.setAttribute("email", user.getEmail());
                request.setAttribute("avatar", user.getAvatar());
                request.getRequestDispatcher(url).forward(request, response);
            } else {
                url = MANAGE_USER_CONTROLLER;
                String username = request.getParameter("username");
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String phone = request.getParameter("phone");
                String address = request.getParameter("address");
                String email = request.getParameter("email");
                String permission = request.getParameter("permission");
                String avatar = request.getParameter("avatar");
                
                if (avatar != null && !avatar.equals("")) {
                    avatar = "view/assets/home/img/users/" + avatar;
                } else {
                    avatar = dao.getUserByName(username).getAvatar();
                }
                
                int roleid = (permission.equals("True") ? 1 : 2);
                dao.updateUser(firstname, lastname, email, address, phone, username, avatar, roleid);

                request.setAttribute("mess", "Edit successfully!");
                request.getRequestDispatcher(url).forward(request, response);
            }
        } catch (Exception ex) {
            log("EditProductServlet error:" + ex.getMessage());
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
