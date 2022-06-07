package controller;

import beans.Image;
import beans.Product;
import jakarta.xml.bind.DatatypeConverter;
import services.FileServices;
import services.ProductServices;

import javax.imageio.ImageIO;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexController", value = "")
public class IndexController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = ProductServices.getInstance().getProductByMostSold();
        List<Product> productsDiscount = ProductServices.getInstance().getProductByDiscount();
        List<Image> imageList = FileServices.getInstance().getImages();
        File f;

        for (int i = 0; i < products.size(); i++) {
            String url = ProductServices.getInstance().getMainImageProduct(products.get(i).getId_sanpham());
            f = new File(url);

            BufferedImage bImage = ImageIO.read(f);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(bImage, getFileExtension(f), baos);
            baos.flush();
            byte[] imageInByteArray = baos.toByteArray();
            baos.close();
            String base64 = DatatypeConverter.printBase64Binary(imageInByteArray);
            products.get(i).setImageMain(base64);
        }
        for (int i = 0; i < productsDiscount.size(); i++) {
            String url = ProductServices.getInstance().getMainImageProduct(products.get(i).getId_sanpham());
            f = new File(url);

            BufferedImage bImage = ImageIO.read(f);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            ImageIO.write(bImage, getFileExtension(f), baos);
            baos.flush();
            byte[] imageInByteArray = baos.toByteArray();
            baos.close();
            String base64 = DatatypeConverter.printBase64Binary(imageInByteArray);
            products.get(i).setImageMain(base64);
        }

        request.setAttribute("mostSoldProducts", products);
        request.setAttribute("discountProducts", productsDiscount);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private static String getFileExtension(File file) {
        String fileName = file.getName();
        if (fileName.lastIndexOf(".") != -1 && fileName.lastIndexOf(".") != 0)
            return fileName.substring(fileName.lastIndexOf(".") + 1);
        else return "";
    }
}
