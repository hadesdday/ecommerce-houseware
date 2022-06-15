package controller.admin.product.category;

import beans.Category;
import beans.Product;
import services.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowCategory", value = "/admin/category")
public class ShowCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categoryList = ProductServices.getInstance().getCategory();
        request.setAttribute("categoryList", categoryList);
        request.getRequestDispatcher("loai-sp.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
