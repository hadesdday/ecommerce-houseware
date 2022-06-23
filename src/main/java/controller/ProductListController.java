package controller;

import beans.Category;
import beans.Product;
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
        List<Product> productsAll = new ArrayList<>();
        List<Product> products = new ArrayList<>();
        String branchs = "";
        String prices = "";
        String priceQuery = "";
        String filterQuery = "";
        String category = "";
        String search = "";
        Category ct = null;
        if (request.getParameter("branch") != null && request.getParameter("branch") != "" && request.getParameter("branch") != "null") {
            branchs = request.getParameter("branch");
            branchs = branchs.substring(0, branchs.length() - 1).replace("-", "' or thuonghieu='");
            branchs = "(thuonghieu='" + branchs + "')";
        }

        if (request.getParameter("price") != null & request.getParameter("price") != "" && request.getParameter("price") != "null") {
            prices = request.getParameter("price");
            StringTokenizer st = new StringTokenizer(prices, "-", false);
            while (st.hasMoreTokens()) {
                String price = st.nextToken();
                switch (price) {
                    case "duoi1":
                        priceQuery += "<1000000-";
                        break;
                    case "1den3":
                        priceQuery += ">=1000000 and gia<3000000)-";
                        break;
                    case "3den6":
                        priceQuery += ">=3000000 and gia<6000000)-";
                        break;
                    case "tren6":
                        priceQuery += ">=600000)-";
                        break;
                }
            }
            priceQuery = priceQuery.substring(0, priceQuery.length() - 1).replace("-", " or (gia");
            priceQuery = "(gia" + priceQuery + ")";

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

        if (request.getParameter("category") != null && request.getParameter("category") != "" && request.getParameter("category") != "null") {
            category = request.getParameter("category");
            products = ProductServices.getInstance().getByCategory(category, page, filterQuery);
            productsAll = ProductServices.getInstance().getAllProductByCategory(category, filterQuery);
            ct = ProductServices.getInstance().getCategory(category);
        }
        if (request.getParameter("search") != null && request.getParameter("search") != "" && request.getParameter("search").compareTo("null") != 0) {
            search = request.getParameter("search");
            System.out.println(search);
            products = ProductServices.getInstance().getProductBySearch(category, search, page, filterQuery);
            productsAll = ProductServices.getInstance().getProductBySearch(category, search, filterQuery);
        }
        System.out.println("product:" + products.size());
        System.out.println("productall:" + productsAll.size());
        List<Product> emptyList = new ArrayList<>();
        List<Product> emptyList2 = new ArrayList<>();


        for (Product sp : products) {
            String sUrl = ProductServices.getInstance().getMainImageProduct(sp.getId_sanpham());
            int avgRate = ProductServices.getInstance().getAverageRating(sp.getId_sanpham());
            String starElm = "";

            for (int j = 1; j <= avgRate; j++) {
                starElm += "<li><i class=\"fa fa-star-o\"></i></li>";
            }

            for (int k = 1; k <= 5 - avgRate; k++) {
                starElm += "<li class=\"no-star\"><i class=\"fa fa-star-o\"></i></li>";
            }

            sp.setAvgRating(starElm);
            sp.setImageMain(sUrl);
        }

        for (Product sp : productsAll) {
            String sUrl = ProductServices.getInstance().getMainImageProduct(sp.getId_sanpham());
            int avgRate = ProductServices.getInstance().getAverageRating(sp.getId_sanpham());
            String starElm = "";

            for (int j = 1; j <= avgRate; j++) {
                starElm += "<li><i class=\"fa fa-star-o\"></i></li>";
            }

            for (int k = 1; k <= 5 - avgRate; k++) {
                starElm += "<li class=\"no-star\"><i class=\"fa fa-star-o\"></i></li>";
            }

            sp.setAvgRating(starElm);
            sp.setImageMain(sUrl);
        }

        if (products.size() > 0 && ct != null) {
            request.setAttribute("allProducts", productsAll);
            request.setAttribute("products", products);
            request.setAttribute("categoryName", ct.getTen_loaisp());
        } else if (products.size() > 0) {
            request.setAttribute("allProducts", productsAll);
            request.setAttribute("products", products);
            request.setAttribute("categoryName", "Sản phẩm");
        } else {
            request.setAttribute("allProducts", emptyList2);
            request.setAttribute("products", emptyList);
            request.setAttribute("categoryName", "Sản phẩm");
        }
        request.getRequestDispatcher("product-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
