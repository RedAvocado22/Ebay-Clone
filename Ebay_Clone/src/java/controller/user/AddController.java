package controller.user;

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

@WebServlet(name = "AddController", urlPatterns = {"/add"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class AddController extends HttpServlet {

    private static final String UPLOAD_DIRECTORY = "uploads";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String section = request.getParameter("section");

        if ("addProduct".equals(section)) {
            // Chuyển tiếp đến add.jsp nếu section là addProduct
            request.getRequestDispatcher("/views/user/add.jsp").forward(request, response);
        } else {
            // Xử lý các trường hợp khác nếu cần
            response.sendRedirect("account.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Account seller = (Account) session.getAttribute("account");

        if (seller == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        try {
            // Lấy dữ liệu từ form
            String name = request.getParameter("productName");
            double price = Double.parseDouble(request.getParameter("price"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int category = Integer.parseInt(request.getParameter("category"));

            // Đường dẫn thực tế để lưu ảnh
            String uploadPath = getServletContext().getRealPath("") + "public/images/product";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            String imagePath = null;
            for (Part part : request.getParts()) {
                if ("productImage".equals(part.getName()) && part.getSize() > 0) {
                    String fileName = extractFileName(part);
                    imagePath = "public/images/product/" + fileName; // Lưu đường dẫn tương đối
                    part.write(uploadPath + File.separator + fileName); // Ghi file vào thư mục
                    break;
                }
            }

            // Tạo đối tượng Product
            Product product = new Product(0, name, price, quantity, imagePath, category, seller);

            // Thêm sản phẩm vào cơ sở dữ liệu
            ProductDAO productDAO = new ProductDAO();
            productDAO.insert(product);

            // Đặt thông báo thành công trong session
            session.setAttribute("successMessage", "New product uploaded successfully!");

            // Chuyển hướng về account.jsp của người bán
            response.sendRedirect("account?section=about&username=" + seller.getUsername());
        } catch (Exception e) {
            e.printStackTrace();
            // Chuyển hướng về lại form thêm sản phẩm nếu có lỗi
            request.setAttribute("error", "Failed to upload product. Please try again.");
            request.getRequestDispatcher("add.jsp").forward(request, response);
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
