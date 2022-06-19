package controller.client;

import beans.Review;
import beans.User;
import services.ReviewServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MyReview", value = "/myReview")
public class MyReview extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User sessionUser = (User) session.getAttribute("user");
        String username = sessionUser.getUsername();
        List<Review> reviewList = ReviewServices.getInstance().getReviewByUsername(username);
        request.setAttribute("reviewList", reviewList);
        request.getRequestDispatcher("my-review.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
