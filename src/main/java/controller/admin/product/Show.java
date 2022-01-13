package controller.admin.product;

import beans.Product;
import db.DbConnector;
import services.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(name = "Show", value = "/admin/product")
public class Show extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        renderPage(request, response);
    }

    private void renderPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<beans.Product> productList = DbConnector.get().withHandle(h ->
                h.createQuery("select * from sanpham")
                        .mapToBean(Product.class).stream().collect(Collectors.toList())
        );
        request.setAttribute("productList", productList);
        request.getRequestDispatcher("sanpham.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
