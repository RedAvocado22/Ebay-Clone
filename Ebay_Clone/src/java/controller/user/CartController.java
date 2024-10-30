package controller.user;

import dao.CartDAO;
import dao.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;
import models.Account;
import models.Cart;
import models.CartItem;

@WebServlet(name = "CartController", urlPatterns = {"/cart"})
public class CartController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        CartDAO cartDAO = new CartDAO();

        Account account = (Account) session.getAttribute("account");

        if (account == null) {
            request.getRequestDispatcher("login").forward(request, response);
            return;
        }

        Cart cart = cartDAO.get(account.getUsername());
        request.setAttribute("cart", cart.getItems());
        request.getRequestDispatcher("views/user/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");

        if (account == null) {
            response.sendRedirect("login");
            return;
        }

        int id = Integer.parseInt(request.getParameter("id"));
        String changeString = request.getParameter("change");
        String quantityString = request.getParameter("quantity");
        String action = request.getParameter("action");

        ProductDAO productDAO = new ProductDAO();
        CartDAO cartDAO = new CartDAO();
        Cart cart = cartDAO.get(account.getUsername());

        if ("change".equalsIgnoreCase(action)) {
            for (CartItem item : cart.getItems()) {
                if (item.getProduct().getId() == id) {
                    int newQuantity = item.getQuantity() + Integer.parseInt(changeString);
                    if (newQuantity > 0 && newQuantity <= item.getProduct().getQuantity()) {
                        item.setQuantity(newQuantity);
                    }
                    break;
                }
            }
        } else {
            cart.getItems().add(new CartItem(productDAO.findById(id), Integer.parseInt(quantityString)));
        }

        cartDAO.update(cart);

//        PrintWriter out = response.getWriter();
//        for (CartItem item : cart.getItems()) {
//            out.print(item.getProduct().getName());
//        }
        response.sendRedirect("cart");
    }
}
