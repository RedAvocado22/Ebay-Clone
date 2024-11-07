package controller.user;

import dao.AccountDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;
import models.Account;

@WebServlet(name = "RegisterController", urlPatterns = {"/register"})
public class RegisterController extends HttpServlet {

    private AccountDAO accountDAO;
    private static final String EMAIL_REGEX = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
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

        String error = validateInput(username, password, firstName, lastName, email);

        if (error != null) {
            request.setAttribute("error", error);
            request.getRequestDispatcher("/views/user/register.jsp").forward(request, response);
            return;
        }

        Account account = new Account(username, password, firstName + " " + lastName, email, "user", "1", avatar);
        if (accountDAO.register(account)) {
            response.sendRedirect("login");
            return;
        }

        request.setAttribute("error", "Registration failed. The username or email may already be in use.");
        request.getRequestDispatcher("/views/user/register.jsp").forward(request, response);
    }

    private String validateInput(String username, String password, String firstName, String lastName, String email) {
        if (username == null) {
            return "Username is required.";
        }
        if (firstName == null) {
            return "First name is required.";
        }
        if (lastName == null) {
            return "Last name is required.";
        }
        if (email == null) {
            return "Email is required.";
        } else if (!Pattern.matches(EMAIL_REGEX, email)) {
            return "Invalid email format.";
        }
        if (password == null) {
            return "Password is required.";
        } else if (password.length() < MIN_PASSWORD_LENGTH) {
            return "Password must be at least " + MIN_PASSWORD_LENGTH + " characters.";
        }
        return null;
    }
}
