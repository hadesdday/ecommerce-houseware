package controller;

import beans.Category;
import beans.Image;
import beans.Product;
import beans.Review;
import services.FileServices;
import services.ProductServices;
import services.ReviewServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ViewProductDetails", value = "/ProductDetails")
public class ViewProductDetails extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
//        int page = (int) request.getAttribute("page");
        Product p = ProductServices.getInstance().getProduct(pid);
        List<Product> sameCategoryProducts = ProductServices.getInstance().getProductByCategory(p.getMa_loaisp());
        List<Review> comments = ReviewServices.getInstance().getReviewByPid(pid);
        if (comments.size() > 3) {
            List<Review> threeFirstReview = ReviewServices.getInstance().getReviewByPidWithLimit(pid, 0, 4);
            List<Review> remainComments = ReviewServices.getInstance().getReviewByPidWithLimit(pid, 4, comments.size());
            comments = threeFirstReview;

            for (Review r : remainComments) {
                int rating = r.getRating();
                String starElm = "";
                for (int j = 1; j <= rating; j++) {
                    starElm += "<i class=\"fa fa-star-o cl__star\"></i>";
                }
                for (int k = 1; k <= 5 - rating; k++) {
                    starElm += "<i class=\"fa fa-star-o cl-non__star\"></i>";
                }
                r.setStars(starElm);
            }
            request.setAttribute("remainComments", remainComments);
        }

        for (Review r : comments) {
            int rating = r.getRating();
            String starElm = "";
            for (int j = 1; j <= rating; j++) {
                starElm += "<i class=\"fa fa-star-o cl__star\"></i>";
            }
            for (int k = 1; k <= 5 - rating; k++) {
                starElm += "<i class=\"fa fa-star-o cl-non__star\"></i>";
            }
            r.setStars(starElm);
        }
        List<Image> images = FileServices.getInstance().getImagesByPid(pid);
        Category c = ProductServices.getInstance().getCategory(p.getMa_loaisp());
        String url = ProductServices.getInstance().getMainImageProduct(p.getId_sanpham());
        p.setImageMain(url);

        int avgRating = ProductServices.getInstance().getAverageRating(p.getId_sanpham());
        String starItem = "";

        for (int j = 1; j <= avgRating; j++) {
            starItem += "<li><i class=\"fa fa-star-o\"></i>";
        }

        for (int k = 1; k <= 5 - avgRating; k++) {
            starItem += "<li class=\"no-star\"><i class=\"fa fa-star-o\"></i>";
        }

        p.setAvgRating(starItem);

        for (Product sp : sameCategoryProducts) {
            String sUrl = ProductServices.getInstance().getMainImageProduct(sp.getId_sanpham());
            int avgRate = ProductServices.getInstance().getAverageRating(sp.getId_sanpham());
            String starElm = "";

            for (int j = 1; j <= avgRate; j++) {
                starElm += "<li><i class=\"fa fa-star-o\"></i>";
            }

            for (int k = 1; k <= 5 - avgRate; k++) {
                starElm += "<li class=\"no-star\"><i class=\"fa fa-star-o\"></i>";
            }

            sp.setAvgRating(starElm);
            sp.setImageMain(sUrl);
        }

        request.setAttribute("categoryName", c.getTen_loaisp());
        request.setAttribute("product", p);
        request.setAttribute("sameCategoryProducts", sameCategoryProducts);
        request.setAttribute("comments", comments);
        request.setAttribute("images", images);
        request.getRequestDispatcher("product-details.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
