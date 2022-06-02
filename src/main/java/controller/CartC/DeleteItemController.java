package controller.CartC;

import beans.Cart;
import beans.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DeleteItemController", value = "/product-remove")
public class DeleteItemController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        String id=request.getParameter("id");
        Cart cart=(Cart) session.getAttribute("cart");
        if(cart==null) cart=Cart.getInstance();
        System.out.print("đasadasdsadasd"+cart.getProducts().size());
        Product remove=cart.remove(id);
        System.out.print("remove"+remove);
        session.setAttribute("cart",cart);
        if(remove==null) response.setStatus(HttpServletResponse.SC_NOT_FOUND);
    }
}
