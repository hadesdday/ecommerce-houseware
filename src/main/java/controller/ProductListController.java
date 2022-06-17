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
import java.util.StringTokenizer;

@WebServlet(name = "ProductListController", value = "/ProductList")
public class ProductListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page = Integer.parseInt(request.getParameter("pageN"));
        request.setAttribute("page", page);
        String category = request.getParameter("category");
        String branchs = "";
        String prices = "";
        String priceQuery = "";
        String filterQuery = "";
        if (request.getParameter("branch") != null && request.getParameter("branch") != ""&&request.getParameter("branch") != "null") {
            branchs = request.getParameter("branch");
            branchs = branchs.substring(0, branchs.length() - 1).replace("-", "' or thuonghieu='");
            branchs = "(thuonghieu='" + branchs + "')";

        }


        if (request.getParameter("price") != null & request.getParameter("price") != ""&&request.getParameter("price") != "null") {
            prices = request.getParameter("price");
            StringTokenizer st = new StringTokenizer(prices, "-", false);
            while (st.hasMoreTokens()) {
                String price = st.nextToken();
                switch (price) {
                    case "duoi1":
                        priceQuery += "<100000),";
                        break;
                    case "1den3":
                        priceQuery += ">=1000000 and gia<3000000),";
                        break;
                    case "3den6":
                        priceQuery += ">=3000000 and gia<6000000),";
                        break;
                    case "tren6":
                        priceQuery += ">=600000),";
                        break;
                }
            }
            priceQuery = priceQuery.substring(0, priceQuery.length() - 1).replace("-", " or (gia");
            priceQuery = "((gia" + priceQuery + ")";

        }
        if (branchs.equals("") && priceQuery.equals("")) {
            filterQuery = "";
        } else if (branchs.equals("")) {
            filterQuery = "and " + priceQuery;
        } else if (priceQuery.equals("")) {
            filterQuery = "and " + branchs;
        } else {
            filterQuery = "and (" + branchs + " and " + priceQuery + ")";
        }
        System.out.println(filterQuery);
//        int page =1;
        List<Product> productsAll = ProductServices.getInstance().getAllProductByCategory(category, filterQuery);
        List<Product> emptyList = new ArrayList<>();
        List<Product> products = ProductServices.getInstance().getByCategory(category, page, filterQuery);

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
