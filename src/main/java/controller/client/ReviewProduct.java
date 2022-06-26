package controller.client;

import beans.Review;
import services.ReviewServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ReviewProduct", value = "/post/comment")
public class ReviewProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        String username = request.getParameter("username");
        int rating = Integer.parseInt(request.getParameter("rating"));
        String content = request.getParameter("content");
        String currentUrl = request.getParameter("currentUrl");

        boolean isErr = false;
        Review r = new Review(pid, username, rating, content);

        if (pid.isEmpty() || username.isEmpty() || rating < 0) isErr = true;

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            if (ReviewServices.getInstance().addReview(r)) {
                response.sendRedirect(currentUrl);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
