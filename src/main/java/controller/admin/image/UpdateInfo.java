package controller.admin.image;

import beans.Image;
import com.google.gson.Gson;
import properties.AssetsProperties;
import services.FileServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UpdateInfo", value = "/image/update")
public class UpdateInfo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        Image i = FileServices.getInstance().getImage(id);
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        if (i != null) {
            response.setContentType("application/json");
            writer.write(gson.toJson(i));
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
        String id = request.getParameter("id");
        String maSP = request.getParameter("maSP");
        Image i = new Image();
        i.setID_ANH(id);
        i.setID_SANPHAM(maSP);

        if (id.isEmpty() || maSP.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            if (FileServices.getInstance().updateInfor(i)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/image"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
