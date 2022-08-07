package controller.admin.order;

import beans.Order;
import com.google.gson.Gson;
import properties.AssetsProperties;
import services.OrderServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UpdateOrder", value = "/order/update")
public class UpdateOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maHD = request.getParameter("maHD");
        Order o = OrderServices.getInstance().getOrderById(maHD);
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        if (o != null) {
            response.setContentType("application/json");
            writer.write(gson.toJson(o));
            writer.close();
            request.getRequestDispatcher("/admin/order").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            response.setContentType("application/json");
            writer.write("Hóa đơn không tồn tại");
            writer.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int maHD = Integer.parseInt(request.getParameter("maHD"));
        String maKH = request.getParameter("maKH");
        String coupon = request.getParameter("coupon");
        String paymentMethod = request.getParameter("paymentMethod");
        double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
        String status = request.getParameter("status");

        Order newOrder = new Order(maKH, coupon, paymentMethod, totalPrice, status);
        newOrder.setID_HOADON(maHD);

        boolean isError = false;
        if (maHD < 1) isError = true;
        if (maKH.trim().length() < 1) isError = true;
        if (paymentMethod.trim().length() < 1) isError = true;
        if (totalPrice < 1) isError = true;
        if (status.trim().length() < 1) isError = true;

        if (isError) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            if (OrderServices.getInstance().updateOrder(newOrder)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/order"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
