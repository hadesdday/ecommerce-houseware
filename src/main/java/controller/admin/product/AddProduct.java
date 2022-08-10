package controller.admin.product;

import beans.Image;
import beans.Product;
import helper.GenerateRandom;
import properties.AssetsProperties;
import services.FileServices;
import services.ProductServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddProduct", value = "/product/add")
public class AddProduct extends HttpServlet {
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
        String ctSP = request.getParameter("ctSP");
        String url = request.getParameter("imageURL");

        Product product = new Product(maSP, tenSP, loaiSP, Double.parseDouble(giaSP), kmSP, hangSP, Integer.parseInt(slSP), active, ctSP);

        boolean isErr = false;
        if (maSP.trim().length() < 1) isErr = true;
        if (tenSP.trim().length() < 1) isErr = true;
        if (loaiSP.equals("0")) isErr = true;
        if (Double.parseDouble(giaSP) < 0) isErr = true;
        if (hangSP.trim().length() < 1) isErr = true;
        if (Integer.parseInt(slSP) < 0) isErr = true;
        if (active.equals("0")) isErr = true;
        if (url.isEmpty()) isErr = true;

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST); // data is not valid with schema from database
        } else {
            Image i = new Image();
            i.setLINK_ANH(url);
            i.setID_SANPHAM(maSP);
            i.setID_ANH(GenerateRandom.getString(10));
            if (ProductServices.getInstance().addProduct(product) && FileServices.getInstance().addImage(i)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/product"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
