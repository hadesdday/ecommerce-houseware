package controller.admin.sale;

import beans.Sale;
import properties.AssetsProperties;
import services.ProductServices;
import services.SaleServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddSale", value = "/sale/add")
public class AddSale extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        double rate = Double.parseDouble(request.getParameter("rate"));
        int active = Integer.parseInt(request.getParameter("active"));

        boolean isErr = false;

        if (id.isEmpty() || rate < 0 || active == 0) isErr = true;

        Sale s = new Sale(id, rate, active);

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            if (SaleServices.getInstance().addSale(s)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/sale"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
