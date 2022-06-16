package controller.admin.customer;

import services.CustomerServices;
import services.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteCustomer", value = "/customer/delete")
public class DeleteCustomer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maKH = (String) request.getParameter("maKH");
        if (CustomerServices.getInstance().deleteCustomer(maKH)) {
            request.getRequestDispatcher("/admin/customer").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
