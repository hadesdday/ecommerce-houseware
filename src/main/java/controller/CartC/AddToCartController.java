package controller.CartC;

import beans.Cart;
import beans.Product;
import jakarta.xml.bind.DatatypeConverter;
import services.ProductServices;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "AddToCartController", value = "/AddToCart")
public class AddToCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String quantitySold = request.getParameter("quantitySold");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null)
            cart = Cart.getInstance();
        Product p = ProductServices.getInstance().getProduct(id);
        String url = ProductServices.getInstance().getMainImageProduct(id);
        File f = new File(url);

        BufferedImage bImage = ImageIO.read(f);
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write(bImage, getFileExtension(f), baos);
        baos.flush();
        byte[] imageInByteArray = baos.toByteArray();
        baos.close();
        String base64 = DatatypeConverter.printBase64Binary(imageInByteArray);
        p.setImageMain(base64);
        
        if (cart.isContain(id)) {
            int newQuantitySold = (cart.get(id).getQuantitySold()) + 1;
            p.setQuantitySold(newQuantitySold);
        } else {
            p.setQuantitySold(Integer.parseInt(quantitySold));
        }
        cart.put(p);
        session.setAttribute("cart", cart);
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
