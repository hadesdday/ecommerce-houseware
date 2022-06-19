package controller.client;

import beans.Customer;
import beans.Order;
import services.OrderServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MyOrder", value = "/myOrder")
public class MyOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer customer = (Customer) session.getAttribute("customer");
        int id = customer.getId_khachhang();

        List<Order> orderList = OrderServices.getInstance().getOrdersByCustomerId(id);
        for (Order o : orderList) {
            switch (Integer.parseInt(o.getTRANGTHAI())) {
                case 1:
                    o.setTRANGTHAI("Bị hủy bỏ");
                    break;
                case 2:
                    o.setTRANGTHAI("Đang chờ xử lý");
                    break;
                case 3:
                    o.setTRANGTHAI("Hết hạn xử lý");
                    break;
                case 4:
                    o.setTRANGTHAI("Khách hàng trả lại hàng");
                    break;
                case 5:
                    o.setTRANGTHAI("Đơn hàng được giao thành công");
                    break;
                case 6:
                    o.setTRANGTHAI("Khách hàng từ chối nhận hàng");
                    break;
                case 7:
                    o.setTRANGTHAI("Đang vận chuyển");
                    break;
                case 8:
                    o.setTRANGTHAI("Đã được xử lý");
                    break;
                case 9:
                    o.setTRANGTHAI("Đang xử lý");
                    break;
            }
        }
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("my-order.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
