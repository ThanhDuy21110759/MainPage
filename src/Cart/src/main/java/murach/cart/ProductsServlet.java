package murach.cart;

import java.io.*;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import murach.data.ProductIO;
import murach.business.Product;


public class ProductsServlet extends HttpServlet {
    
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String path = getServletContext().getRealPath("/WEB-INF/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);
        session.setAttribute("products", products);

        String url = "/index.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}