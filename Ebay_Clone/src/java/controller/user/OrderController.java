/*
  Student ID   : HE187382
  Student name : Nguyen Minh Cuong
  Due date     :  
 */
package controller.user;

import dao.AccountDAO;
import dao.FeedbackDAO;
import dao.OrderDAO;
import dao.OrderItemDAO;
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
import models.Order;
import models.OrderItem;

/**
 *
 * @author Minh Cuong
 */
@WebServlet(name = "OrderController", urlPatterns = {"/order"})
public class OrderController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OrderDAO orderDAO = new OrderDAO();

        String id = request.getParameter("id");

        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");

        if (account == null) {
            request.getRequestDispatcher("login").forward(request, response);
            return;
        }

        if (id != null) {
            List<Order> orders = orderDAO.getAll();
            Order order = orders.stream().filter(o -> o.getId() == Integer.parseInt(id)).findFirst().orElse(null);

            if (order.getBuyer().getUsername().equalsIgnoreCase(account.getUsername())
                    || order.getSeller().getUsername().equalsIgnoreCase(account.getUsername())) {
                request.setAttribute("order", order);
                request.getRequestDispatcher("views/user/order.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("account?section=order").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        int id = Integer.parseInt(request.getParameter("id"));

        OrderDAO orderDAO = new OrderDAO();
        OrderItemDAO orderItemDAO = new OrderItemDAO();

        Order order = orderDAO.getById(id);

        switch (action) {
            case "decline" -> {
                orderItemDAO.deleteAllItem(id);
                orderDAO.delete(id);
            }

            case "accept" -> {
                orderDAO.update(id, "Shipped");
            }

            case "received" -> {
                orderDAO.update(id, "Received");

                ProductDAO productDAO = new ProductDAO();
                for (OrderItem item : order.getItems()) {
                    productDAO.updateQuantity(item.getProduct().getId(), item.getProduct().getQuantity() - item.getQuantity());
                }
            }

            case "feedback" -> {
                String content = request.getParameter("content");
                String type = request.getParameter("type");

                FeedbackDAO feedbackDAO = new FeedbackDAO();
                AccountDAO accountDAO = new AccountDAO();

                orderDAO.update(id, "Feedbacked");
                feedbackDAO.insert(new Feedback(
                        0, content, type,
                        accountDAO.getByUsername(order.getBuyer().getUsername()),
                        accountDAO.getByUsername(order.getSeller().getUsername()))
                );
            }
        }

        request.getRequestDispatcher("account?section=order").forward(request, response);
    }

}
