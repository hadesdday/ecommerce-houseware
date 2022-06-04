package controller.admin.order;

import beans.Order;
import services.OrderServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowOrder", value = "/admin/order")
public class ShowOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Order> orderList = OrderServices.getInstance().getOrders();
        Order latestOrder = OrderServices.getInstance().getLatestOrder();
        latestOrder.setID_HOADON(latestOrder.getID_HOADON());
        request.setAttribute("orderList", orderList);
        request.setAttribute("latestOrder", latestOrder);
        request.getRequestDispatcher("hoadon.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
