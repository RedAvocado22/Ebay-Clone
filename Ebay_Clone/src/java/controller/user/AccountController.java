/*
  Student ID   : HE187382
  Student name : Nguyen Minh Cuong
  Due date     :  
 */
package controller.user;

import dao.AccountDAO;
import dao.FeedbackDAO;
import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import models.Account;
import models.Feedback;
import models.Product;

/**
 *
 * @author Minh Cuong
 */
@WebServlet(name = "AccountController", urlPatterns = {"/account"})
public class AccountController extends HttpServlet {

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
        HttpSession session = request.getSession();

        FeedbackDAO feedbackDAO = new FeedbackDAO();
        ProductDAO productDAO = new ProductDAO();
        AccountDAO accountDAO = new AccountDAO();

        Account account;
        String seller = request.getParameter("username");
        if (seller == null) {
            account = (Account) session.getAttribute("account");
            request.setAttribute("username", account.getUsername());
        } else {
            account = accountDAO.getByUsername(seller);
            request.setAttribute("username", seller);
        }

        List<Product> products = productDAO.getAll();
        List<Feedback> feedbacks = feedbackDAO.getAllByUsername(account.getUsername());

        String section = request.getParameter("section");
        if (section == null) {
            section = "about";
        }

        switch (section) {
            case "about" -> {
                products = products.stream().filter(p -> p.getSeller().getUsername().equalsIgnoreCase(account.getUsername())).toList();
                request.setAttribute("products", products);
            }

            case "feedback" -> {
                List<Feedback> positive = feedbacks.stream().filter(f -> "positive".equals(f.getType())).toList();
                List<Feedback> negetive = feedbacks.stream().filter(f -> "negative".equals(f.getType())).toList();

                request.setAttribute("positive", positive);
                request.setAttribute("negative", negetive);
            }
        }

        request.setAttribute("section", section);
        request.setAttribute("account", account);

        PrintWriter out = response.getWriter();
        for (Product feedback : products) {
            out.println(feedback.getName());
        }
        request.getRequestDispatcher("views/user/account.jsp").forward(request, response);
    }

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

}
