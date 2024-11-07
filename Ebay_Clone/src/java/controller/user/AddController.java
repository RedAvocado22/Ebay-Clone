package controller.user;

import dao.CategoryDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import models.Account;
import models.Product;
import dao.ProductDAO;
import java.io.File;
import models.Category;

@WebServlet(name = "AddController", urlPatterns = {"/add"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50
)
public class AddController extends HttpServlet {

    private static final String UPLOAD_DIRECTORY = "/public/images/products";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String section = request.getParameter("section");

        CategoryDAO categoryDAO = new CategoryDAO();

        if ("addProduct".equals(section)) {
            request.setAttribute("categories", categoryDAO.getAll());
            request.getRequestDispatcher("/views/user/add.jsp").forward(request, response);
        } else {
            response.sendRedirect("account");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account seller = (Account) session.getAttribute("account");

        if (seller == null) {
            response.sendRedirect("login");
            return;
        }

        try {
            String name = request.getParameter("productName");
            double price = Double.parseDouble(request.getParameter("price"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int category = Integer.parseInt(request.getParameter("category"));

            CategoryDAO categoryDAO = new CategoryDAO();
            Category cate = categoryDAO.getAll().stream().filter(c -> c.getId() == category).findFirst().orElse(null);
            
            String uploadPath = new File(getServletContext().getRealPath("")).getParentFile().getParent()
                    + File.separator + "web" + File.separator + UPLOAD_DIRECTORY + "/" + cate.getName().toLowerCase();
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            String imagePath = null;
            for (Part part : request.getParts()) {
                if ("productImage".equals(part.getName()) && part.getSize() > 0) {
                    String fileName = System.currentTimeMillis() + "_" + extractFileName(part);
                    imagePath = UPLOAD_DIRECTORY + "/" + cate.getName().toLowerCase() + "/" + fileName;
                    part.write(uploadDir.getAbsolutePath() + File.separator + fileName);
                    break;
                }
            }

            if (imagePath == null) {
                throw new IOException("No file uploaded or file is empty.");
            }

            Product product = new Product(0, name, price, quantity, imagePath, category, seller);
            ProductDAO productDAO = new ProductDAO();
            productDAO.insert(product);

            session.setAttribute("successMessage", "New product uploaded successfully!");
            response.sendRedirect("account?section=about&username=" + seller.getUsername());
        } catch (ServletException | IOException | NumberFormatException e) {
            request.setAttribute("error", "Failed to upload product. Please try again.");
            request.getRequestDispatcher("/views/user/add.jsp").forward(request, response);
        }
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String content : contentDisp.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return null;
    }

    @Override
    public String getServletInfo() {
        return "Servlet handles adding new products by seller";
    }
}
