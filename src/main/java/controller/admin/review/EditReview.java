package controller.admin.review;

import beans.Product;
import beans.Review;
import com.google.gson.Gson;
import properties.AssetsProperties;
import services.ProductServices;
import services.ReviewServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "EditReview", value = "/review/edit")
public class EditReview extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        String username = request.getParameter("username");
        int rating = Integer.parseInt(request.getParameter("rating"));

        Review r = ReviewServices.getInstance().getReview(pid, rating, username);
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        if (r != null) {
            response.setContentType("application/json");
            writer.write(gson.toJson(r));
            writer.close();
            request.getRequestDispatcher("/admin/review").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            response.setContentType("application/json");
            writer.write("Đánh giá không tồn tại");
            writer.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        String username = request.getParameter("username");
        int rating = Integer.parseInt(request.getParameter("rating"));
        String content = request.getParameter("content");

        boolean isErr = false;
        Review r = new Review(pid, username, rating, content);

        if (pid.isEmpty() || username.isEmpty() || rating < 0) isErr = true;

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            if (ReviewServices.getInstance().editReview(r)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/review"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
