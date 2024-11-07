/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dao.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "ForgetPassController", urlPatterns = {"/forgetPass"})
public class ForgetPassController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("views/user/forgetPass.jsp").forward(request, response);
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
        String username = request.getParameter("username");
        String newPassword = request.getParameter("newPassword");
        String cfPassword = request.getParameter("cfPassword");

        AccountDAO accountDAO = new AccountDAO();

        if (!newPassword.equals(cfPassword)) {
            request.setAttribute("error", "Password do not match!");
            request.getRequestDispatcher("views/user/forgetPass.jsp").forward(request, response);
            return;
        }

        boolean success = accountDAO.resetPassword(username, newPassword);
        if (success) {
            request.setAttribute("message", "Password updated succesful!");
            request.getRequestDispatcher("login").forward(request, response);
        } else {
            request.setAttribute("error", "Username doesn't existed!");
        }

        request.getRequestDispatcher("views/user/forgetPass.jsp").forward(request, response);
    }
}
