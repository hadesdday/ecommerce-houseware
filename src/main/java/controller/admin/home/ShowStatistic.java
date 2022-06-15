package controller.admin.home;

import com.google.gson.Gson;
import dao.OrderDAO;
import services.CustomerServices;
import services.OrderServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.TreeMap;

@WebServlet(name = "ShowStatistic", value = "/admin/stats")
public class ShowStatistic extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer sumPriceByOrder = OrderServices.getInstance().getSumPriceByOrder();
        Integer totalOrder = OrderServices.getInstance().getTotalOrder();
        Integer totalCustomer = CustomerServices.getInstance().getTotalCustomer();
        TreeMap<String, Float> turnoverByMonth = OrderDAO.getInstance().getTurnoverByMonth();

        Object[] a = new Object[]{sumPriceByOrder, totalCustomer, totalOrder, turnoverByMonth};


        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        response.setContentType("application/json");
        writer.write(gson.toJson(a));
        writer.close();
        request.getRequestDispatcher("/admin").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
