package controller;

import beans.Category;
import beans.Product;
import helper.Base64;
import services.ProductServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductListController", value = "/ProductList")
public class ProductListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page = Integer.parseInt(request.getParameter("pageN"));
        request.setAttribute("page",page);
        String category = request.getParameter("category");
//        int page =1;
        List<Product> productsAll = ProductServices.getInstance().getAllProductByCategory(category);
        List<Product> emptyList = new ArrayList<>();
        List<Product> products = ProductServices.getInstance().getByCategory(category, page);
        System.out.println(category);
        System.out.println(products.size());
        System.out.println(productsAll.size());
        Category ct = ProductServices.getInstance().getCategory(category);

//        for (int i = 0; i < products.size(); i++) {
//            String imageMain = ProductServices.getInstance().getMainImageProduct(products.get(i).getId_sanpham());
//            String url = Base64.get(imageMain);
//            products.get(i).setImageMain(url);
//        }

        if (products.size() > 0 && ct != null) {
            request.setAttribute("allProducts", productsAll);
            request.setAttribute("products", products);
            request.setAttribute("categoryName", ct.getTen_loaisp());
        } else {
            request.setAttribute("products", emptyList);
//            request.setAttribute("allProducts", emptyList);
            request.setAttribute("categoryName", "Sản phẩm");
        }
        request.getRequestDispatcher("product-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
