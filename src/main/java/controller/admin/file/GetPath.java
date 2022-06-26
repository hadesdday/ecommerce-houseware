package controller.admin.file;

import beans.Image;
import com.google.gson.Gson;
import services.FileServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "GetPath", value = "/GetPath")
public class GetPath extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        Image i = FileServices.getInstance().getImage(id);
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        if (i != null) {
            response.setContentType("application/json");
            writer.write(gson.toJson(i.getLINK_ANH()));
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
