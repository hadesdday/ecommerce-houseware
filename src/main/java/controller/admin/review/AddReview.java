package controller.admin.review;

import beans.Review;
import com.google.gson.Gson;
import dao.ReviewDAO;
import properties.AssetsProperties;
import services.ReviewServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddReview", value = "/review/add")
public class AddReview extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
            int generatedKey = ReviewDAO.getInstance().addReviewAndReturnKey(r);
            if (generatedKey > 0) {
                Gson gson = new Gson();
                response.setContentType("application/json");
                response.getWriter().write(gson.toJson(generatedKey));
                response.getWriter().close();
                request.getRequestDispatcher("/admin/review").forward(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
