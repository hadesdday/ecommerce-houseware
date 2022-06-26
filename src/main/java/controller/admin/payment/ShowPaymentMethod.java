package controller.admin.payment;

import beans.PaymentMethod;
import services.PaymentMethodServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
