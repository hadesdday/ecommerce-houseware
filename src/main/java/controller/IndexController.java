package controller;

import beans.Image;
import beans.Product;
import helper.Base64;
import jakarta.xml.bind.DatatypeConverter;
import services.FileServices;
import services.ProductServices;

import javax.imageio.ImageIO;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
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
            int avgRating = ProductServices.getInstance().getAverageRating(products.get(i).getId_sanpham());
            String starItem = "";

            for (int j = 1; j <= avgRating; j++) {
                starItem += "<li><i class=\"fa fa-star-o\"></i></li>";
            }

            for (int k = 1; k <= 5 - avgRating; k++) {
                starItem += "<li class=\"no-star\"><i class=\"fa fa-star-o\"></i></li>";
            }

//            products.get(i).setImageMain(Base64.get(url));
            products.get(i).setAvgRating(starItem);
        }

        for (int i = 0; i < productsDiscount.size(); i++) {
            String url = ProductServices.getInstance().getMainImageProduct(products.get(i).getId_sanpham());
            int avgRating = ProductServices.getInstance().getAverageRating(productsDiscount.get(i).getId_sanpham());
            String nonStar = "";

            for (int j = 1; j <= avgRating; j++) {
                nonStar += "<li><i class=\"fa fa-star-o\"></i></li>";
            }

            for (int k = 1; k <= 5 - avgRating; k++) {
                nonStar += "<li class=\"no-star\"><i class=\"fa fa-star-o\"></i></li>";
            }

//            productsDiscount.get(i).setImageMain(Base64.get(url));
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
