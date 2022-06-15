package controller.admin.sale;

import beans.Product;
import beans.Sale;
import com.google.gson.Gson;
import properties.AssetsProperties;
import services.ProductServices;
import services.SaleServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "EditSale", value = "/sale/edit")
public class EditSale extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = (String) request.getParameter("id");
        Sale s = SaleServices.getInstance().getSale(id);
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        if (s != null) {
            response.setContentType("application/json");
            writer.write(gson.toJson(s));
            writer.close();
            request.getRequestDispatcher("/admin/sale").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            response.setContentType("application/json");
            writer.write("Khuyến mãi không tồn tại");
            writer.close();
        }
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
            if (SaleServices.getInstance().editSale(s)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/sale"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
