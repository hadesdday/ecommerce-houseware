package controller.admin.payment;

import beans.PaymentMethod;
import beans.Product;
import services.PaymentMethodServices;
import services.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowMethod", value = "/admin/payment-method")
public class ShowPaymentMethod extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<PaymentMethod> paymentMethodList = PaymentMethodServices.getInstance().getPaymentMethod();
        request.setAttribute("paymentMethodList", paymentMethodList);
        request.getRequestDispatcher("payment-method.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
