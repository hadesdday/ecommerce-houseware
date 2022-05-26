package services;

public class ProductServices1 {
    private static ProductServices1 instance;

    public static ProductServices1 getInstance() {
        if (instance == null) {
            instance = new ProductServices1();
        }
        return instance;
    }

//    public List<Product> getProduct() {
//        return ProductDAO1.getInstance().getProduct();
//    }
//
//    public Product getProduct(String maSP) {
//        return ProductDAO1.getInstance().getProduct(maSP);
//    }
//
//    public boolean addProduct(Product product) {
//        return ProductDAO1.getInstance().addProduct(product);
//    }
//
//    public boolean deleteProduct(String maSP) {
//        return ProductDAO1.getInstance().deleteProduct(maSP);
//    }
//
//    public boolean editProduct(Product product) {
//        return ProductDAO1.getInstance().editProduct(product);
//    }
}
