package controller.admin.image;

import beans.Image;
import jakarta.xml.bind.DatatypeConverter;
import services.FileServices;

import javax.imageio.ImageIO;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.List;
import java.util.Properties;

@WebServlet(name = "ShowImage", value = "/admin/image")
public class ShowImage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Image> imageList = FileServices.getInstance().getImages();
        request.setAttribute("imageList", imageList);
        request.getRequestDispatcher("hinhanh.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
