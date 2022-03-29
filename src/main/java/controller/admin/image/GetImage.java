package controller.admin.image;

import beans.Order;
import com.google.gson.Gson;
import helper.Base64;
import services.OrderServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "GetImage", value = "/GetImage")
public class GetImage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getParameter("url");
        String toBase64 = Base64.get(url);
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        if (!toBase64.isEmpty()) {
            response.setContentType("application/json");
            writer.write(gson.toJson(toBase64));
            writer.close();
            request.getRequestDispatcher("/admin/image").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            response.setContentType("application/json");
            writer.write("Hình ảnh không tồn tại");
            writer.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
