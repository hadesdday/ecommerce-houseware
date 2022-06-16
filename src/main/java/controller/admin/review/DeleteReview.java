package controller.admin.review;

import services.ProductServices;
import services.ReviewServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteReview", value = "/review/delete")
public class DeleteReview extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        String username = request.getParameter("username");
        int rating = Integer.parseInt(request.getParameter("rating"));

        if (ReviewServices.getInstance().deleteReview(pid, rating, username)) {
            request.getRequestDispatcher("/admin/review").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
