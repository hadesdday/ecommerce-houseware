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

@WebServlet(name = "IndexController", value = "")
public class IndexController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = ProductServices.getInstance().getProductByMostSold();
        List<Product> productsDiscount = ProductServices.getInstance().getProductByDiscount();

        for (int i = 0; i < products.size(); i++) {
            String url = ProductServices.getInstance().getMainImageProduct(products.get(i).getId_sanpham());
            products.get(i).setImageMain(url);
            int avgRating = ProductServices.getInstance().getAverageRating(products.get(i).getId_sanpham());
            String starItem = "";

            for (int j = 1; j <= avgRating; j++) {
                starItem += "<li><i class=\"fa fa-star-o\"></i></li>";
            }

            for (int k = 1; k <= 5 - avgRating; k++) {
                starItem += "<li class=\"no-star\"><i class=\"fa fa-star-o\"></i></li>";
            }
            products.get(i).setAvgRating(starItem);
        }

        for (int i = 0; i < productsDiscount.size(); i++) {
            String url = ProductServices.getInstance().getMainImageProduct(productsDiscount.get(i).getId_sanpham());
            productsDiscount.get(i).setImageMain(url);
            int avgRating = ProductServices.getInstance().getAverageRating(productsDiscount.get(i).getId_sanpham());
            String nonStar = "";

            for (int j = 1; j <= avgRating; j++) {
                nonStar += "<li><i class=\"fa fa-star-o\"></i></li>";
            }

            for (int k = 1; k <= 5 - avgRating; k++) {
                nonStar += "<li class=\"no-star\"><i class=\"fa fa-star-o\"></i></li>";
            }
            productsDiscount.get(i).setAvgRating(nonStar);
        }

        request.setAttribute("mostSoldProducts", products);
        request.setAttribute("discountProducts", productsDiscount);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
