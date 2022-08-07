package services;

import beans.Category;
import beans.Product;
import dao.ProductDAO;

import java.util.List;

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

    public List<Product> getByCategory(String cat, int page, String filter) {
        return ProductDAO.getInstance().getProductByCategory(cat, page, filter);
    }

    public List<Product> getAllProductByCategory(String cat, String filter) {
        return ProductDAO.getInstance().getAllProductByCategory(cat, filter);
    }

    public List<Product> getProductByMostSold() {
        return ProductDAO.getInstance().getProductByMostSold();
    }

    public double discountCodeRate(String code) {
        return ProductDAO.getInstance().discountCodeRate(code);
    }

    public List<Product> getProductByDiscount() {
        return ProductDAO.getInstance().getProductByDiscount();
    }

    public List<Product> getProduct() {
        return ProductDAO.getInstance().getProduct();
    }

    public List<String> getAllImageProduct(String masp) {
        return ProductDAO.getInstance().getAllImageProduct(masp);
    }

    public String getMainImageProduct(String masp) {
        return ProductDAO.getInstance().getMainImageProduct(masp);
    }

    public Product getProduct(String maSP) {
        return ProductDAO.getInstance().getProduct(maSP);
    }

    public boolean addProduct(Product product) {
        return ProductDAO.getInstance().addProduct(product);
    }

    public boolean deleteProduct(String maSP) {
        return ProductDAO.getInstance().deleteProduct(maSP);
    }

    public boolean editProduct(Product product) {
        return ProductDAO.getInstance().editProduct(product);
    }

    public Category getCategory(String maloai) {
        return ProductDAO.getInstance().getCategory(maloai);
    }

    public List<Category> getCategory() {
        return ProductDAO.getInstance().getCategory();
    }

    public boolean addCategory(Category c) {
        return ProductDAO.getInstance().addCategory(c);
    }

    public boolean deleteCategory(String maloai) {
        return ProductDAO.getInstance().deleteCategory(maloai);
    }

    public boolean editCategory(Category c) {
        return ProductDAO.getInstance().editCategory(c);
    }

    public int getAverageRating(String id) {
        return ProductDAO.getInstance().getAverageRating(id);
    }

    public List<Product> getProductByCategory(String cat) {
        return ProductDAO.getInstance().getProductByCategory(cat);
    }

    public List<Product> getProductBySearch(String cat,String search, int page, String filter) {
        return ProductDAO.getInstance().getProductBySearch(cat,search, page, filter);
    }
    public List<Product> getProductBySearch(String cat,String search, String filter) {
        return ProductDAO.getInstance().getProductBySearch(cat,search, filter);
    }
}
