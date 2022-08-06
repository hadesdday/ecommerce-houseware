package controller.admin.payment;

import beans.Category;
import beans.PaymentMethod;
import com.google.gson.Gson;
import properties.AssetsProperties;
import services.PaymentMethodServices;
import services.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "EditMethod", value = "/payment-method/edit")
public class EditPaymentMethod extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = (String) request.getParameter("id");
        PaymentMethod p = PaymentMethodServices.getInstance().getPaymentMethod(id);
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        if (p != null) {
            response.setContentType("application/json");
            writer.write(gson.toJson(p));
            writer.close();
            request.getRequestDispatcher("/admin/payment-method").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            response.setContentType("application/json");
            writer.write("Phương thức thanh toán không tồn tại");
            writer.close();
        }
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
            if (PaymentMethodServices.getInstance().editPaymentMethod(p)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/payment-method"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
