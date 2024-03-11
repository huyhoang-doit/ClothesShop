/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.controller.web.login;

import clothingstore.dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import clothingstore.model.UserDTO;

/**
 *
 * @author HuuThanh
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("view/jsp/home/login.jsp").forward(request, response);
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
        try {
            request.setCharacterEncoding("UTF-8");
            String fName = request.getParameter("firstname");
            String lName = request.getParameter("lastname");
            String uName = request.getParameter("username");
            String uPass = request.getParameter("password");
            String email = request.getParameter("email");
            String avatar = request.getParameter("avatar");
            String action = request.getParameter("action");
            String message;
            UserDAO ud = new UserDAO();
            if (action != null && action.equals("CheckDuplicate")) {
                PrintWriter out = response.getWriter();
                String username = request.getParameter("username");
                boolean isDuplicate = ud.checkUserNameDuplicate(uName);
                if (isDuplicate) {
                    request.setAttribute("DUPLICATE", 1);
                    out.println("<h6 style='color: red'>Username already exist!</h6>");
                }
                request.setAttribute("DUPLICATE", 0);
                return;
            }
            boolean isDup = ud.checkUserNameDuplicate(uName);
            if (isDup == true) {
                message = "Username already exist!";
                request.setAttribute("ERROR", message);
                request.getRequestDispatcher("view/jsp/home/login.jsp").forward(request, response);
            } else {
                UserDTO user = new UserDTO(0, fName, lName, email, (avatar == null ? "assets/img/users/user.jpg" : avatar), uName, uPass, "", "", 2, true);
                ud.registerUser(user);
                message = "Register successfully. Please Login!";

                request.setAttribute("SUCCESS", message);
                request.getRequestDispatcher("view/jsp/home/login.jsp").forward(request, response);
            }
        } catch (Exception ex) {
            log("RegisterServlet error:" + ex.getMessage());
        }
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
