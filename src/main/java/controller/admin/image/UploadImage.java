package controller.admin.image;

import beans.Image;
import properties.AssetsProperties;
import services.FileServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UploadImage", value = "/image/upload")
public class UploadImage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String url = request.getParameter("url");
        String maSP = request.getParameter("maSP");

        String[] inp = {id, url, maSP};

        boolean isError = false;
        if (isEmpty(inp)) {
            isError = true;
        }

        if (isError) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            Image i = new Image(id, url, maSP);
            if (FileServices.getInstance().addImage(i)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/image"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }

    }

    private static boolean isEmpty(String[] inp) {
        for (String s : inp) {
            if (s.isEmpty()) return true;
        }
        return false;
    }
}
