package controller.admin.product;

import beans.Product;
import com.google.gson.Gson;
import db.DbConnector;
import services.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(name = "ShowProduct", value = "/admin/product")
public class ShowProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        renderPage(request, response);
    }

    private void renderPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<beans.Product> productList = ProductServices.getInstance().getProduct();
//        Gson gson = new Gson();
//        PrintWriter writer = response.getWriter();
//        if (productList.size() > 0) {
//            response.setContentType("application/json");
//            writer.write(gson.toJson(productList));
//            writer.close();
//            request.getRequestDispatcher("/admin/product").forward(request, response);
//        } else {
//            response.sendError(HttpServletResponse.SC_NOT_FOUND);
//            response.setContentType("application/json");
//            writer.write("Trống");
//            writer.close();
//        }
        request.setAttribute("productList", productList);
        request.getRequestDispatcher("sanpham.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
