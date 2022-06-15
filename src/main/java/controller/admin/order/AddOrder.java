package controller.admin.order;

import beans.Order;
import properties.AssetsProperties;
import services.OrderServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddOrder", value = "/order/add")
public class AddOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maHD = Integer.parseInt(request.getParameter("maHD"));
        String maKH = request.getParameter("maKH");
        String coupon = request.getParameter("coupon");
        String paymentMethod = request.getParameter("paymentMethod");
        double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
        String status = request.getParameter("status");

        Order newOrder = new Order(maHD, maKH, coupon, paymentMethod, totalPrice, status);

        boolean isError = false;
        if (maHD < 1) isError = true;
        if (maKH.trim().length() < 1) isError = true;
        if (paymentMethod.trim().length() < 1) isError = true;
        if (totalPrice < 1) isError = true;
        if (status.trim().length() < 1) isError = true;

        if (isError) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            if (OrderServices.getInstance().addOrder(newOrder)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/order"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
