package controller.user;

import dao.AccountDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.regex.Pattern;
import models.Account;

@WebServlet(name = "RegisterController", urlPatterns = {"/register"})
public class RegisterController extends HttpServlet {

    private AccountDAO accountDAO;
    private static final String EMAIL_REGEX = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
    private static final int MIN_PASSWORD_LENGTH = 6;

    @Override
    public void init() {
        accountDAO = new AccountDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/views/user/register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String avatar = "/public/images/avatar/default.png";

        String error = validateInput(username, password, firstName, lastName, email, request);

        if (error != null) {
            request.getRequestDispatcher("register").forward(request, response);
            return;
        }

        Account account = new Account(username, password, firstName + " " + lastName, email, "user", "1", avatar);
        if (accountDAO.register(account)) {
            response.sendRedirect("login");
        }

        request.setAttribute("error", "Registration failed. The username or email may already be in use.");
        request.getRequestDispatcher("register").forward(request, response);
//        response.sendRedirect("register");
    }

    private String validateInput(String username, String password, String firstName, String lastName, String email, HttpServletRequest request) {
        if (username == null || username.isEmpty()) {
            request.setAttribute("error", "Username is required.");
            return "username";
        }
        if (firstName == null || firstName.isEmpty()) {
            request.setAttribute("error", "First name is required.");
            return "name";
        }
        if (lastName == null || lastName.isEmpty()) {
            request.setAttribute("error", "Last name is required.");
            return "name";
        }
        if (email == null || email.isEmpty()) {
            request.setAttribute("error", "Email is required.");
            return "email";
        } else if (!Pattern.matches(EMAIL_REGEX, email)) {
            request.setAttribute("error", "Invalid email format.");
            return "email";
        }
        if (password == null || password.isEmpty()) {
            request.setAttribute("error", "Password is required.");
            return "password";
        } else if (password.length() < MIN_PASSWORD_LENGTH) {
            request.setAttribute("error", "Password must be at least " + MIN_PASSWORD_LENGTH + " characters.");
            return "password";
        }
        return null;
    }
}
