package services;

import beans.Product;
import dao.ProductDAO;
import db.DbConnector;

import java.util.List;

public class ProductService {
    private static ProductService instance;

    private ProductService() {

    }

    public static ProductService getInstance() {
        if (instance == null)
            instance = new ProductService();
        return instance;
    }

    public List<Product> getAll() {
        return ProductDAO.getInstance().getAll();
    }

    public Product getById(String id) {
        return DbConnector.get().withHandle(h->h.createQuery("select * from sanpham where id=?")
                .bind(0,id)
                .mapToBean(Product.class)
                .first());
    }
}
