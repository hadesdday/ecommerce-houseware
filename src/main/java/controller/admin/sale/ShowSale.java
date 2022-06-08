package controller.admin.sale;

import beans.Product;
import beans.Sale;
import services.ProductServices;
import services.SaleServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowSale", value = "/admin/sale")
public class ShowSale extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Sale> saleList = SaleServices.getInstance().getSale();
        request.setAttribute("saleList", saleList);
        request.getRequestDispatcher("khuyenmai.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
