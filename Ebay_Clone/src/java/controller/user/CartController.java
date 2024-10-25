package controller.user;

import dao.CartDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
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
        
        int productId = Integer.parseInt(request.getParameter("productId"));
        int change = Integer.parseInt(request.getParameter("change"));
        
        CartDAO cartDAO = new CartDAO();
        Cart cart = cartDAO.get(account.getUsername());

        for (CartItem item : cart.getItems()) {
            if (item.getProduct().getId() == productId) {
                int newQuantity = item.getQuantity() + change;
                if (newQuantity > 0) {
                    item.setQuantity(newQuantity);
                }
                break;
            }
        }
        
        cartDAO.update(cart);
        
        response.sendRedirect("cart");
    }
}
