/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.controller.web.email;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import clothingstore.model.Email;

/**
 *
 * @author lvhho
 */
@WebServlet(name = "EmailServlet", urlPatterns = {"/EmailServlet"})
public class EmailServlet extends HttpServlet {

    private static final String CONTACT_PAGE = "view/jsp/home/contact.jsp";
    private static final String HOME_PAGE = "view/jsp/home/home.jsp";
    private static final String NEWSLETTER_AJAX = "view/jsp/ajax/newsletter_ajax.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = CONTACT_PAGE;
        Email handleEmail = new Email();
        String message = "Có vẻ như một số thông tin cung cấp của bạn không hợp lệ, vui lòng cung cấp lại thông tin";
        String check = "fail";
        String action = request.getParameter("action");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String txt = request.getParameter("message");
        try {
            if (action.equals("sendEmail")) {
                if (handleEmail.isValidEmail(email)) {
                    message = "Cảm ơn bạn đã liên hệ với chúng tôi, chúng tôi sẽ kết nối với bạn trong thời gian sớm nhất";
                    check = "success";
                    String sub = handleEmail.subjectContact(name);
                    String msg = handleEmail.messageContact(name);
                    handleEmail.sendEmail(sub, msg, email);
                }
            } else if (action.equals("subscribe")) {
                url = NEWSLETTER_AJAX;
                if (handleEmail.isValidEmail(email)) {
                    message = "Cảm ơn bạn đã liên hệ với chúng tôi";
                    check = "success";
                    String sub = handleEmail.subjectSubsribe();
                    String msg = handleEmail.messageSubscribe();
                    handleEmail.sendEmail(sub, msg, email);
                }
            }
        } catch (Exception ex) {
            log("EmailServlet error:" + ex.getMessage());
        } finally {
            request.setAttribute("MESSAGE", message);
            request.setAttribute("CHECK", check);
            request.setAttribute("NAME_CUSTOMER", name);
            request.setAttribute("EMAIL_CUSTOMER", email);
            request.setAttribute("TEXT", txt);
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
