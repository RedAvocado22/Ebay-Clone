/*
  Student ID   : HE187382
  Student name : Nguyen Minh Cuong
  Due date     :  
 */
package controller.user;

import dao.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import models.Product;

/**
 *
 * @author Minh Cuong
 */
@WebServlet(name = "ProductController", urlPatterns = {"/product"})
public class ProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO productDAO = new ProductDAO();

        List<Product> products = productDAO.getAll();
        String idString = request.getParameter("id");
        
        if (!idString.isEmpty() && idString != null) {
            int id = Integer.parseInt(idString);
            Product product = productDAO.findById(id);
            request.setAttribute("product", product);
            
            products = products.stream().filter(p -> p.getCategory() == product.getCategory()).toList().subList(0, 6);
            
            
            request.setAttribute("products", products);
            request.setAttribute("seller", product.getSeller());
            
            request.getRequestDispatcher("/views/user/product.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
