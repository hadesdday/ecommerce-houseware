package controller.admin.image;

import properties.AssetsProperties;
import services.FileServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "DeleteImage", value = "/image/delete")
public class DeleteImage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        File root = new File((String) request.getServletContext().getAttribute("FILES_DIR") + File.separator);
        String id = request.getParameter("id");
        String url = root + File.separator + request.getParameter("url");
        if (FileServices.getInstance().deleteImage(id)) {
            File f = new File(url);
            if (f.exists()) f.delete();
            response.sendRedirect(AssetsProperties.getBaseURL("admin/image"));
        } else {
            response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
        }
    }
}
