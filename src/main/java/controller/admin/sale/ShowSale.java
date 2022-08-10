package controller.admin.sale;

import beans.Sale;
import com.google.gson.Gson;
import services.SaleServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ShowSale", value = "/admin/sale")
public class ShowSale extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Sale> saleList = SaleServices.getInstance().getSale();
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();
        response.setContentType("application/json");
        writer.write(gson.toJson(saleList));
        writer.close();
        request.getRequestDispatcher("khuyenmai.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
