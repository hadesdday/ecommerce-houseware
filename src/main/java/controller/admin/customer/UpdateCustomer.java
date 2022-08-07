package controller.admin.customer;

import beans.Customer;
import com.google.gson.Gson;
import properties.AssetsProperties;
import services.CustomerServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UpdateCustomer", value = "/customer/update")
public class UpdateCustomer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maKH = (String) request.getParameter("maKH");
        Customer kh = CustomerServices.getInstance().getCustomerById(maKH);
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        if (kh != null) {
            response.setContentType("application/json");
            writer.write(gson.toJson(kh));
            writer.close();
            request.getRequestDispatcher("/admin/customer").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            response.setContentType("application/json");
            writer.write("Khách hàng không tồn tại");
            writer.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maKH = request.getParameter("maKH");
        String tenKH = request.getParameter("tenKH");
        String diachi = request.getParameter("diachi");
        String sdt = request.getParameter("sdt");
        String email = request.getParameter("email");

        Customer kh = new Customer(tenKH, diachi, sdt, email);
        kh.setId_khachhang(Integer.parseInt(maKH));

        boolean isErr = false;

        if (maKH.isEmpty()) isErr = true;
        if (tenKH.isEmpty()) isErr = true;
        if (diachi.isEmpty()) isErr = true;
        if (sdt.isEmpty()) isErr = true;
        if (email.isEmpty()) isErr = true;

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            if (CustomerServices.getInstance().updateCustomer(kh)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/customer"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
