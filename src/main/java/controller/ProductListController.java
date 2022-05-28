package controller;

import beans.Product;
import services.ProductServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductListController", value = "/ProductList")
public class ProductListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String category = request.getParameter("category");
        List<Product> products = ProductServices.getInstance().getByCategory(category);
//        String imageMain=ProductServices.getInstance().getMainImageProduct();
        for (int i=0;i<products.size();i++) {
            String imageMain=ProductServices.getInstance().getMainImageProduct(products.get(i).getId_sanpham());
            products.get(i).setImageMain(imageMain);
        }
//        HttpSession session=request.getSession();
//        Cart cart =(Cart) session.getAttribute("cart");
//        if(cart==null) {
//            cart = Cart.getInstance();
//            session.setAttribute("cart",cart);
//        }
        request.setAttribute("products", products);
        request.getRequestDispatcher("product-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
