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
//import java.io.PrintWriter;
import java.util.List;
import models.Product;

/**
 *
 * @author Minh Cuong
 */
@WebServlet(name = "ProductsController", urlPatterns = {"/products"})
public class ProductsController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO productDAO = new ProductDAO();
        List<Product> products = productDAO.getAll();

        String idString = request.getParameter("category");
        String keyword = request.getParameter("search");
        
        if (idString != null) {
            int id = Integer.parseInt(idString);
            products = products.stream().filter(p -> p.getCategory() == id).toList();
        }
        
        if (keyword != null) {
            products = products.stream().filter(p -> p.getName().contains(keyword)).toList();
        }
        
        request.setAttribute("products", products);
//        PrintWriter out = response.getWriter();
//        products.forEach(p -> out.println(p.toString()));
        request.getRequestDispatcher("/views/user/products.jsp").forward(request, response);
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

}
