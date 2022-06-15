package controller.admin.product.category;

import beans.Category;
import beans.Product;
import properties.AssetsProperties;
import services.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCategory", value = "/category/add")
public class AddCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maLoai = request.getParameter("maLoai");
        String tenLoai = request.getParameter("tenLoai");
        Category c = new Category(maLoai, tenLoai);

        boolean isErr = false;
        if (maLoai.isEmpty() || tenLoai.isEmpty()) isErr = true;

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            if (ProductServices.getInstance().addCategory(c)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/category"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
