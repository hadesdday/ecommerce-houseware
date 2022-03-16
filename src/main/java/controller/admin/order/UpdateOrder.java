package controller.admin.order;

import beans.Order;
import com.google.gson.Gson;
import properties.AssetsProperties;
import services.OrderServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
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
            request.getRequestDispatcher("/admin/hoadon").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            response.setContentType("application/json");
            writer.write("Hóa đơn không tồn tại");
            writer.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maHD = request.getParameter("maHD");
        String maKH = request.getParameter("maKH");
        String ngayMua = request.getParameter("ngayMua");
        String coupon = request.getParameter("coupon");
        String paymentMethod = request.getParameter("paymentMethod");
        double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
        String status = request.getParameter("status");

        Order order = new Order(maHD, maKH, ngayMua, coupon, paymentMethod, totalPrice, status);

        boolean isError = false;
        if (maHD.trim().length() < 1) isError = true;
        if (maKH.trim().length() < 1) isError = true;
        if (ngayMua.trim().length() < 1) isError = true;
        if (coupon.trim().length() < 1) isError = true;
        if (paymentMethod.trim().length() < 1) isError = true;
        if (totalPrice < 1) isError = true;
        if (status.trim().length() < 1) isError = true;

        if (isError) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            if (OrderServices.getInstance().updateOrder(order)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/hoadon"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
