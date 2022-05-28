package controller;

import beans.Product;
import services.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexController", value = "")
public class IndexController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = ProductServices.getInstance().getProductByMostSold();
        List<Product> productsDiscount = ProductServices.getInstance().getProductByDiscount();
        for (int i=0;i<products.size();i++) {
            String imageMain=ProductServices.getInstance().getMainImageProduct(products.get(i).getId_sanpham());
            products.get(i).setImageMain(imageMain);
        }
        for (int i=0;i<productsDiscount.size();i++) {
            String imageMain=ProductServices.getInstance().getMainImageProduct(products.get(i).getId_sanpham());
            productsDiscount.get(i).setImageMain(imageMain);
        }

        request.setAttribute("mostSoldProducts", products);
        request.setAttribute("discountProducts", productsDiscount);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
