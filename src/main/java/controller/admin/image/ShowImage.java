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
        File f;
        for (Image i : imageList) {
            String url = i.getLINK_ANH();
            f = new File(url);

            BufferedImage bImage = ImageIO.read(f);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(bImage, getFileExtension(f), baos);
            baos.flush();
            byte[] imageInByteArray = baos.toByteArray();
            baos.close();
            String base64 = DatatypeConverter.printBase64Binary(imageInByteArray);
            i.setLINK_ANH(base64);
        }
        request.setAttribute("imageList", imageList);
        request.getRequestDispatcher("hinhanh.jsp").forward(request, response);
    }

    private static String getFileExtension(File file) {
        String fileName = file.getName();
        if (fileName.lastIndexOf(".") != -1 && fileName.lastIndexOf(".") != 0)
            return fileName.substring(fileName.lastIndexOf(".") + 1);
        else return "";
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
