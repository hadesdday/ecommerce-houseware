package controller.client;

import beans.Image;
import beans.OrderDetails;
import services.FileServices;
import services.OrderServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "MyOrderDetails", value = "/myOrderDetails")
public class MyOrderDetails extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String oid = request.getParameter("oid");
        List<OrderDetails> orderDetails = OrderServices.getInstance().getOrderDetailsByOrderId(oid);
        List<String> listUrl = new ArrayList<>();
        for (OrderDetails detail : orderDetails) {
            Image i = FileServices.getInstance().getImagesByPid(detail.getId_sanpham()).get(0);
            listUrl.add(i.getLINK_ANH());
        }
        request.setAttribute("listUrl", listUrl);
        request.setAttribute("orderDetails", orderDetails);
        request.getRequestDispatcher("my-order-details.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
