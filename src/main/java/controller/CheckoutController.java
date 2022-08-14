package controller;

import beans.*;
import services.CheckoutService;
import services.PaymentMethodServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CheckoutController", value = "/Checkout")
public class CheckoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        List<PaymentMethod> paymentMethodList = PaymentMethodServices.getInstance().getPaymentMethod();

        Cart cart =(Cart) session.getAttribute("cart");
        if(cart==null) {
            cart = Cart.getInstance();
            session.setAttribute("cart",cart);
        }
        request.setAttribute("paymentMethodList2", paymentMethodList);
        int authenticated=  session.getAttribute("authenticated")==null?0:(int)session.getAttribute("authenticated");
        if(authenticated==1){
            User user = (User) session.getAttribute("user");
            Customer c= (Customer)  session.getAttribute("customer");
//            session.setAttribute("khachhang",c);
        }
        request.getRequestDispatcher("/Checkout.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        String id=request.getParameter("id");
        Cart cart=(Cart) session.getAttribute("cart");
        if(cart==null) cart=Cart.getInstance();
        Product remove=cart.remove(id);
        session.setAttribute("cart",cart);
        if(remove==null) response.setStatus(HttpServletResponse.SC_NOT_FOUND);
    }
}
