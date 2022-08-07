package controller.admin.customer;

import beans.Customer;
import services.CustomerServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "GetCustomer", value = "/admin/customer")
public class GetCustomer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> list = CustomerServices.getInstance().getCustomerList();
        Customer kh = CustomerServices.getInstance().getLatestCustomer();

        request.setAttribute("latestCustomer", kh);
        request.setAttribute("customerList", list);
        request.getRequestDispatcher("khachhang.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
