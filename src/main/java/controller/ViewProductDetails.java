package controller;

import beans.Product;
import beans.Review;
import helper.Base64;
import services.ProductServices;
import services.ReviewServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ViewProductDetails", value = "/ProductDetails")
public class ViewProductDetails extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        Product p = ProductServices.getInstance().getProduct(pid);
        List<Product> sameCategoryProducts = ProductServices.getInstance().getByCategory(p.getMa_loaisp());
        List<Review> comments = ReviewServices.getInstance().getReviewByPid(pid);
        String url = ProductServices.getInstance().getMainImageProduct(p.getId_sanpham());
        p.setImageMain(Base64.get(url));

        int avgRating = ProductServices.getInstance().getAverageRating(p.getId_sanpham());
        String starItem = "";

        for (int j = 1; j <= avgRating; j++) {
            starItem += "<li><i class=\"fa fa-star-o\"></i></li>";
        }

        for (int k = 1; k <= 5 - avgRating; k++) {
            starItem += "<li class=\"no-star\"><i class=\"fa fa-star-o\"></i></li>";
        }

        p.setAvgRating(starItem);

        for (Product sp : sameCategoryProducts) {
            String sUrl = ProductServices.getInstance().getMainImageProduct(sp.getId_sanpham());
            int avgRate = ProductServices.getInstance().getAverageRating(sp.getId_sanpham());
            String starElm = "";

            for (int j = 1; j <= avgRate; j++) {
                starElm += "<li><i class=\"fa fa-star-o\"></i></li>";
            }

            for (int k = 1; k <= 5 - avgRate; k++) {
                starElm += "<li class=\"no-star\"><i class=\"fa fa-star-o\"></i></li>";
            }

            sp.setAvgRating(starElm);
            sp.setImageMain(Base64.get(sUrl));
        }

        request.setAttribute("product", p);
        request.setAttribute("sameCategoryProducts", sameCategoryProducts);
        request.setAttribute("comments", comments);
        request.getRequestDispatcher("product-details.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
