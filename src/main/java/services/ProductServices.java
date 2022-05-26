package services;

import beans.Product;
import dao.ProductDAO;

import java.util.List;
import java.util.stream.Collectors;

public class ProductServices {
    private static ProductServices instance;

    public static ProductServices getInstance() {
        if (instance == null) {
            instance = new ProductServices();
        }
        return instance;
    }

    public List<Product> getAll() {
        return ProductDAO.getInstance().getAll();
    }

    public List<Product> getByCategory(String cat) {
        return ProductDAO.getInstance().getProductByCategory(cat);
    }

    public List<Product> getProduct() {
        return ProductDAO.getInstance().getProduct();
    }

    public Product getProduct(String maSP) {
        return ProductDAO.getInstance().getProduct(maSP);
    }
//
    public boolean addProduct(Product product) {
        return ProductDAO.getInstance().addProduct(product);
    }

    public boolean deleteProduct(String maSP) {
        return ProductDAO.getInstance().deleteProduct(maSP);
    }

    public boolean editProduct(Product product) {
        return ProductDAO.getInstance().editProduct(product);
    }
}
