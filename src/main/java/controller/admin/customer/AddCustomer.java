package controller.admin.customer;

import beans.KhachHang;
import properties.AssetsProperties;
import services.CustomerServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCustomer", value = "/customer/add")
public class AddCustomer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tenKH = request.getParameter("tenKH");
        String diachi = request.getParameter("diachi");
        String sdt = request.getParameter("sdt");
        String email = request.getParameter("email");

        KhachHang kh = new KhachHang(tenKH, diachi, sdt, email);

        boolean isErr = false;

        if (tenKH.isEmpty()) isErr = true;
        if (diachi.isEmpty()) isErr = true;
        if (sdt.isEmpty()) isErr = true;
        if (email.isEmpty()) isErr = true;

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            if (CustomerServices.getInstance().addCustomer(kh)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/customer"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
