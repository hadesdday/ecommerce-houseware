package controller;

import beans.Category;
import com.google.gson.Gson;
import services.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "header", value = "/header")
public class header extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categoryList = ProductServices.getInstance().getCategory();
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();
        response.setContentType("application/json");
        writer.write(gson.toJson(categoryList));
        writer.close();
        request.getRequestDispatcher("header.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
