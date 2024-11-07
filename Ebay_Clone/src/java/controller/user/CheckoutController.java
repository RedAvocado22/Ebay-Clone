/*
  Student ID   : HE187382
  Student name : Nguyen Minh Cuong
  Due date     :  
 */
package controller.user;

import dao.AccountDAO;
import dao.CartDAO;
import dao.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import models.Account;
import models.Cart;
import models.CartItem;
import models.Order;
import models.OrderItem;

/**
 *
 * @author Minh Cuong
 */
@WebServlet(name = "CheckoutController", urlPatterns = {"/checkout"})
public class CheckoutController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CheckoutController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckoutController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        HttpSession session = request.getSession();

        Account buyer = (Account) session.getAttribute("account");
        if (buyer == null) {
            response.sendRedirect("login?error=Please login to continue.");
            return;
        }

        CartDAO cartDAO = new CartDAO();
        Cart cart = cartDAO.get(buyer.getUsername());

        if (cart == null || cart.getItems().isEmpty()) {
            response.sendRedirect("cart?error=Your cart is empty!");
            return;
        }

        Map<String, List<CartItem>> groupedBySeller = cart.getItems().stream()
                .collect(Collectors.groupingBy(item -> item.getProduct().getSeller().getUsername()));

        OrderDAO orderDAO = new OrderDAO();
        List<Order> createdOrders = new ArrayList();

        try {
            for (Map.Entry<String, List<CartItem>> entry : groupedBySeller.entrySet()) {
                String sellerUsername = entry.getKey();
                List<CartItem> itemsBySeller = entry.getValue();

                double total = itemsBySeller.stream()
                        .mapToDouble(item -> item.getProduct().getPrice() * item.getQuantity())
                        .sum();

                AccountDAO accountDAO = new AccountDAO();

                Order order = new Order();
                order.setBuyer(buyer);
                order.setSeller(accountDAO.getByUsername(sellerUsername));
                order.setTotal(total);
                order.setStatus("Pending");

                List<OrderItem> orderItems = itemsBySeller.stream()
                        .map(cartItem -> new OrderItem(cartItem.getProduct(), cartItem.getQuantity()))
                        .toList();

                order.setOrders(orderItems);

                orderDAO.insert(order);
                createdOrders.add(order);
            }

            cartDAO.deleteAllItems(cart.getId());

            request.setAttribute("orders", createdOrders);
            request.getRequestDispatcher("views/user/checkout.jsp").forward(request, response);

        } catch (Exception e) { // Bắt tất cả lỗi để kiểm tra
            e.printStackTrace(); // Ghi chi tiết lỗi ra log
            response.sendRedirect("cart?error=Something went wrong, please try again.");
        }

    }
}
