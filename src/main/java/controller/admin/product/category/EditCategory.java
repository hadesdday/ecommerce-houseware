package controller.admin.product.category;

import beans.Category;
import com.google.gson.Gson;
import properties.AssetsProperties;
import services.ProductServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "EditCategory", value = "/category/edit")
public class EditCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maLoai = (String) request.getParameter("maLoai");
        Category c = ProductServices.getInstance().getCategory(maLoai);
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        if (c != null) {
            response.setContentType("application/json");
            writer.write(gson.toJson(c));
            writer.close();
            request.getRequestDispatcher("/admin/category").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            response.setContentType("application/json");
            writer.write("Loại sản phẩm không tồn tại");
            writer.close();
        }
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
            if (ProductServices.getInstance().editCategory(c)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/category"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
