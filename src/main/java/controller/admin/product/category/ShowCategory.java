package controller.admin.product.category;

import beans.Category;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import services.ProductServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ShowCategory", value = "/admin/category")
public class ShowCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categoryList = ProductServices.getInstance().getCategory();
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();
        response.setContentType("application/json");
        writer.write(gson.toJson(categoryList));
        writer.close();
        request.getRequestDispatcher("loai-sp.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
