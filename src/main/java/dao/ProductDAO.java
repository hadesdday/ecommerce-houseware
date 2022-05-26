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
    public List<Product> getProductByCategory(String cat){
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select a.id_sanpham, a.ten_sp, a.maloaisp, a.gia, a.id_km, a.thuonghieu, a.soluongton, a.active from sanpham a,loaisanpham b where a.maloaisp=b.maloaisp and b.ten_loaisp=?")
                    .bind(0, cat)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.print(re.size());
            return re;
        } catch (Exception exception) {
            System.out.print(exception);
            return null;

        }
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

    public Product getProduct(String id_sanpham) {
        System.out.println(id_sanpham);
        try {
            List<Product> re = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM sanpham where id_sanpham = ?")
                            .bind(0, id_sanpham)
                            .mapToBean(Product.class).stream().collect(Collectors.toList())
            );
            System.out.println("ok");
            return re.get(0);
        } catch (Exception exception) {
            System.out.println(exception);
            return null;
        }
    }
    public List<Product> getAll() {
        return  DbConnector.get().withHandle(handle ->{
            return handle.createQuery("select * from sanpham").mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }
    public boolean addProduct(Product product) {
        try {
            int rowInserted = DbConnector.get().withHandle(h ->
                    h.createUpdate("insert into sanpham(id_sanpham,ten_sp,maloaisp,gia,id_km,thuongHieu,soLuongTon,active) values(?,?,?,?,?,?,?,?)")
                            .bind(0, product.getId_sanpham())
                            .bind(1, product.getTen_sp())
                            .bind(2, product.getMa_loaisp())
                            .bind(3, product.getGia())
                            .bind(4, product.getId_km())
                            .bind(5, product.getThuonghieu())
                            .bind(6, product.getSoluongton())
                            .bind(7, product.getActive())
                            .execute()
            );
            return rowInserted == 1;
        } catch (Exception exception) {
            return false;
        }
    }

    public boolean deleteProduct(String id_sanpham) {
        try {
            int rowsAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("DELETE FROM sanpham WHERE id_sanpham = ?")
                            .bind(0, id_sanpham)
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
                    h.createUpdate("UPDATE sanpham SET ten_sp=?,maloaisp=?,gia=?,id_km=?,thuongHieu=?,soLuongTon=?,active=? where id_sanpham = ?")
                            .bind(0, product.getTen_sp())
                            .bind(1, product.getMa_loaisp())
                            .bind(2, product.getGia())
                            .bind(3, product.getId_km())
                            .bind(4, product.getThuonghieu())
                            .bind(5, product.getSoluongton())
                            .bind(6, product.getActive())
                            .bind(7, product.getId_sanpham())
                            .execute()
            );
            return rowsAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }
}
