package controller.CartC;

import beans.Cart;
import beans.Product;
import services.ProductServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
        String url = ProductServices.getInstance().getMainImageProduct(p.getId_sanpham());
        p.setImageMain(url);

        if (cart.isContain(id)) {
            int newQuantitySold = (cart.get(id).getQuantitySold()) + 1;
            p.setQuantitySold(newQuantitySold);
        } else {
            p.setQuantitySold(Integer.parseInt(quantitySold));
        }
        cart.put(p);
        session.setAttribute("cart", cart);
        request.getRequestDispatcher("/").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
