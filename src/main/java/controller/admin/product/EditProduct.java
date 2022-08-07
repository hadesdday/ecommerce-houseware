package controller.admin.product;

import beans.Product;
import com.google.gson.Gson;
import services.ProductServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "EditProduct", value = "/product/update")
public class EditProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maSP = (String) request.getParameter("maSP");
        Product product = ProductServices.getInstance().getProduct(maSP);
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        if (product != null) {
            response.setContentType("application/json");
            writer.write(gson.toJson(product));
            writer.close();
            request.getRequestDispatcher("/admin/product").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            response.setContentType("application/json");
            writer.write("Sản phẩm không tồn tại");
            writer.close();
        }
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

        Product product = new Product(maSP, tenSP, loaiSP, Double.parseDouble(giaSP), kmSP, hangSP, Integer.parseInt(slSP), active, ctSP);

        boolean isErr = false;
        if (maSP.trim().length() < 1) isErr = true;
        if (tenSP.trim().length() < 1) isErr = true;
        if (loaiSP.equals("0")) isErr = true;
        if (Double.parseDouble(giaSP) < 0) isErr = true;
        if (hangSP.trim().length() < 1) isErr = true;
        if (Integer.parseInt(slSP) < 0) isErr = true;
        if (active.equals("0")) isErr = true;

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST); // data is not valid with schema from database
        } else {
            if (ProductServices.getInstance().editProduct(product)) {
                request.getRequestDispatcher("/admin/product").forward(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        }
    }
}
