package controller.admin.payment;

import beans.PaymentMethod;
import properties.AssetsProperties;
import services.PaymentMethodServices;
import services.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddMethod", value = "/payment-method/add")
public class AddPaymentMethod extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");

        boolean isErr = false;

        if (id.isEmpty() || name.isEmpty()) isErr = true;

        PaymentMethod p = new PaymentMethod(id, name,"");

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            if (PaymentMethodServices.getInstance().addPaymentMethod(p)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/payment-method"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
