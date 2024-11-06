package controller.admin;

import dao.AccountDAO;
import dao.FeedbackDAO;
import dao.OrderDAO;
import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import models.Account;
import models.Feedback;
import models.Order;
import models.Product;

@WebServlet(name = "AdminController", urlPatterns = {"/admin"})
public class AdminController extends HttpServlet {

    private ProductDAO productDAO = new ProductDAO();
    private AccountDAO accountDAO = new AccountDAO();
    private OrderDAO orderDAO = new OrderDAO();
    private FeedbackDAO feedbackDAO = new FeedbackDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String section = request.getParameter("section");
        String action = request.getParameter("action");

        PrintWriter out = response.getWriter();
        out.print(section);

        if (section == null) {
            section = "";
        }

        switch (section) {
            case "product" -> {
                handeleProduct(request, response, action);
            }

            case "order" -> {
                handeleOrder(request, response, action);
            }

            case "account" -> {
                handeleAccount(request, response, action);
            }

            case "feedback" -> {
                handeleFeedback(request, response, action);
            }

            default -> {
                request.getRequestDispatcher("/views/admin/admin.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    private void handeleProduct(HttpServletRequest request, HttpServletResponse response, String action) throws ServletException, IOException {
        if (action == null) {
            List<Product> products = productDAO.getAll();
            String keyword = request.getParameter("keyword");

            request.setAttribute("products", products);
            request.getRequestDispatcher("/views/admin/admin.jsp").forward(request, response);
        } else {
            switch (action) {
                case "delete" -> {
                    int productId = Integer.parseInt(request.getParameter("id"));
                    boolean deletionSuccessful = productDAO.delete(productId);
                    response.sendRedirect("admin?section=product");
                }

            }
        }
    }

    private void handeleOrder(HttpServletRequest request, HttpServletResponse response, String action) throws ServletException, IOException {
        if (action == null) {
            List<Order> orders = orderDAO.getAll();
            String keyword = request.getParameter("keyword");

            request.setAttribute("orders", orders);
            request.getRequestDispatcher("/views/admin/admin.jsp").forward(request, response);
            orders = orders.stream().filter(o -> o.getBuyer().getUsername().equals("moonlight")).toList();
        } else {

        }
    }

    private void handeleAccount(HttpServletRequest request, HttpServletResponse response, String action) throws ServletException, IOException {
        if (action == null) {
            List<Account> accounts = accountDAO.getAll();
            String keyword = request.getParameter("keyword");

            request.setAttribute("accounts", accounts);
            request.getRequestDispatcher("/views/admin/admin.jsp").forward(request, response);
        } else {
            switch (action) {
                case "delete" -> {
                    String username = request.getParameter("username");
                    boolean deletionSuccessful = accountDAO.delete(username);
                    response.sendRedirect("admin?section=account");}
                case "active" -> {
                    String username = request.getParameter("username");
                    boolean deletionSuccessful = accountDAO.active(username);
                    response.sendRedirect("admin?section=account");
                }
            }
        }
    }

    private void handeleFeedback(HttpServletRequest request, HttpServletResponse response, String action) throws ServletException, IOException {
        String username = request.getParameter("username");
        if (action == null) {
            List<Feedback> feedbacks = feedbackDAO.getAllByUsername(username);
            String keyword = request.getParameter("keyword");

            request.setAttribute("feedbacks", feedbacks);
            request.getRequestDispatcher("/views/admin/admin.jsp").forward(request, response);
        } else {
            switch (action) {
                case "delete" ->{
                    int id = Integer.parseInt(request.getParameter("id"));
                    boolean deletionSuccessful = feedbackDAO.delete(id);
                    response.sendRedirect("admin?section=feedback&username=" + username);}
            }
        }
    }
}
