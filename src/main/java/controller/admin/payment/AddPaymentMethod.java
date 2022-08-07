package controller.admin.payment;

import beans.PaymentMethod;
import properties.AssetsProperties;
import services.PaymentMethodServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
        String description = request.getParameter("description");

        boolean isErr = false;

        if (id.isEmpty() || name.isEmpty()) isErr = true;

        PaymentMethod p = new PaymentMethod(id, name, description);

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
