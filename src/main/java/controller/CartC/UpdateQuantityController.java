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

@WebServlet(name = "UpdateQuantityController", value = "/Update-quantity")
public class UpdateQuantityController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        String id=request.getParameter("id");
        String quantity=request.getParameter("quantity");
        Cart cart=(Cart) session.getAttribute("cart");
        if(cart==null) cart=Cart.getInstance();
        Product p=cart.get(id);
        if(p==null){
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
        p.setQuantitySold(Integer.parseInt(quantity));
        if(p.getQuantitySold()!=Integer.parseInt(quantity)){
            response.setStatus(405);
        }
    }
}
