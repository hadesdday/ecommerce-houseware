package controller.admin.product;

import beans.Product;
import properties.AssetsProperties;
import properties.DBProperties;
import services.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Properties;

@WebServlet(name = "Add", value = "/product/add")
public class Add extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maSP = request.getParameter("maSP");
        String tenSP = request.getParameter("tenSP");
        String loaiSP = request.getParameter("loaiSP");
        String giaSP = request.getParameter("giaSP");
        String kmSP = request.getParameter("kmSP");
        String hangSP = request.getParameter("hangSP");
        String slSP = request.getParameter("slSP");
        String active = request.getParameter("active");

        Product product = new Product(maSP, tenSP, loaiSP, Double.parseDouble(giaSP), kmSP, hangSP, Integer.parseInt(slSP), active);

        boolean isErr = false;
        if (maSP.trim().length() < 1) isErr = true;
        if (tenSP.trim().length() < 1) isErr = true;
        if (loaiSP.equals("0")) isErr = true;
        if (Double.parseDouble(giaSP) < 0) isErr = true;
        if (kmSP.trim().length() < 1) isErr = true;
        if (hangSP.trim().length() < 1) isErr = true;
        if (Integer.parseInt(slSP) < 0) isErr = true;
        if (active.equals("0")) isErr = true;

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST); // data is not valid with schema from database
        } else {
            if (ProductServices.getInstance().addProduct(product)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/product"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
