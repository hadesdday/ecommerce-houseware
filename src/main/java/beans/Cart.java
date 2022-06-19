package beans;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Cart implements Serializable {
    private Map<String, Product> data;
    private static Cart instance;
    private double rate=0;

    private Cart() {
        data = new HashMap<>();
    }

    public static Cart getInstance() {
        if (instance == null) {
            instance = new Cart();
        }
        return instance;
    }

    public Product get(String id) {
        return data.get(id);
    }

    public void put(Product product) {
        data.put(product.getId_sanpham(), product);
    }

    public Product remove(String id) {
        return data.remove(id);
    }

    public double total() {
        double total = 0;
        for (Product p : data.values()) {
            total += p.total();
        }
        return total;
    }

    

    public int quantity() {
        int quantity = 0;
        for (Product p : data.values()) {
            quantity += p.getQuantitySold();
        }
        return quantity;
    }

    public boolean isContain(String id) {
        return data.containsKey(id);

    }

    public void add(Product p) {
        data.put(p.getId_sanpham(), p);
    }

    public Collection<Product> getProducts() {
        return data.values();
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }
}
