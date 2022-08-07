package controller.admin.review;

import beans.Review;
import com.google.gson.Gson;
import properties.AssetsProperties;
import services.ReviewServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "EditReview", value = "/review/edit")
public class EditReview extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int rid = Integer.parseInt(request.getParameter("rid"));

        Review r = ReviewServices.getInstance().getReview(rid);
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
        int rid = Integer.parseInt(request.getParameter("rid"));
        int rating = Integer.parseInt(request.getParameter("rating"));
        String content = request.getParameter("content");

        boolean isErr = false;
        Review r = new Review();
        r.setId(rid);
        r.setRating(rating);
        r.setContent(content);

        if (rid < 0 || rating < 0) isErr = true;

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
