package controller.admin.order;

import beans.Order;
import properties.AssetsProperties;
import services.OrderServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddOrder", value = "/order/add")
public class AddOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maKH = request.getParameter("maKH");
        String coupon = request.getParameter("coupon");
        String paymentMethod = request.getParameter("paymentMethod");
        double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
        String status = request.getParameter("status");

        Order newOrder = new Order(maKH, coupon, paymentMethod, totalPrice, status);

        boolean isError = false;
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
