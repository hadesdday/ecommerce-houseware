package dao;

import beans.Product;
import db.DbConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ProductDAO {
    private static ProductDAO instance;

    private ProductDAO() {
    }

    public static ProductDAO getInstance() {
        if (instance == null) {
            instance = new ProductDAO();
        }
        return instance;
    }

    public List<Product> getProduct() {
        try {
            List<Product> re = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM sanpham")
                            .mapToBean(Product.class).stream().collect(Collectors.toList())
            );
            return re;
        } catch (Exception exception) {
            return null;
        }
    }

    public Product getProduct(String maSP) {
        try {
            List<Product> re = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM sanpham where maSP = ?")
                            .bind(0, maSP)
                            .mapToBean(Product.class).stream().collect(Collectors.toList())
            );
            return re.get(0);
        } catch (Exception exception) {
            return null;
        }
    }

    public boolean addProduct(Product product) {
        try {
            int rowInserted = DbConnector.get().withHandle(h ->
                    h.createUpdate("insert into sanpham(maSP,tenSP,maLoaiSP,gia,maKM,thuongHieu,soLuongTon,active) values(?,?,?,?,?,?,?,?)")
                            .bind(0, product.getMaSP())
                            .bind(1, product.getTenSP())
                            .bind(2, product.getMaLoaiSP())
                            .bind(3, product.getGia())
                            .bind(4, product.getMaKM())
                            .bind(5, product.getThuongHieu())
                            .bind(6, product.getSoLuongTon())
                            .bind(7, product.getActive())
                            .execute()
            );
            return rowInserted == 1;
        } catch (Exception exception) {
            return false;
        }
    }

    public boolean deleteProduct(String maSP) {
        try {
            int rowsAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("DELETE FROM sanpham WHERE maSP = ?")
                            .bind(0, maSP)
                            .execute()
            );
            return rowsAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean editProduct(Product product) {
        try {
            int rowsAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("UPDATE sanpham SET tenSP=?,maLoaiSP=?,gia=?,maKM=?,thuongHieu=?,soLuongTon=?,active=? where maSP = ?")
                            .bind(0, product.getTenSP())
                            .bind(1, product.getMaLoaiSP())
                            .bind(2, product.getGia())
                            .bind(3, product.getMaKM())
                            .bind(4, product.getThuongHieu())
                            .bind(5, product.getSoLuongTon())
                            .bind(6, product.getActive())
                            .bind(7, product.getMaSP())
                            .execute()
            );
            return rowsAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }
}
