package controller.admin.sale;

import beans.Sale;
import properties.AssetsProperties;
import services.SaleServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
