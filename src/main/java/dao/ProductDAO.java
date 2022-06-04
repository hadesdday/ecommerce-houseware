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

    public List<Product> getProductByCategory(String cat) {
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("select a.id_sanpham, a.ten_sp, a.maloaisp, a.gia, a.id_km, a.thuonghieu, a.soluongton, a.active from sanpham a,loaisanpham b where a.maloaisp=b.maloaisp and (b.maloaisp=? or a.thuonghieu=?)")
                    .bind(0, cat)
                    .bind(1, cat)
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.print(re.size());
            return re;
        } catch (Exception exception) {
            System.out.print(exception);
            return null;

        }
    }

    public List<Product> getProductByMostSold() {
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("SELECT * from sanpham WHERE id_sanpham in(\n" +
                            "SELECT id_sanpham from chitiethoadon GROUP BY id_sanpham ORDER BY sum(soluong) DESC) LIMIT 10")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            System.out.print(re.size());
            return re;
        } catch (Exception exception) {
            System.out.print(exception);
            return null;

        }
    }

    public List<Product> getProductByDiscount() {
        try {
            List<Product> re = DbConnector.get().withHandle(h -> h.createQuery("SELECT * FROM sanpham WHERE id_sanpham in(SELECT a.id_sanpham FROM sanpham a,khuyenmai b WHERE a.id_km=b.id_km )")
                    .mapToBean(Product.class)
                    .stream().collect(Collectors.toList()));
            for (Product p : re) {
                String km = p.getId_km();
                p.setRateDiscount(DbConnector.get().withHandle(h -> h.createQuery("SELECT rate FROM khuyenmai WHERE id_km=?")
                        .bind(0, p.getId_km())
                        .mapTo(Double.class)
                        .one()));
            }
            return re;
        } catch (Exception exception) {
            System.out.print(exception);
            return null;

        }
    }

    public String getMainImageProduct(String masp) {
        try {
            List<String> re = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT link_anh FROM hinhanh where id_sanpham=?")
                            .bind(0, masp)
                            .mapTo(String.class).stream().collect(Collectors.toList())
            );
            return re.get(0);
        } catch (Exception exception) {
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
            return re.get(0);
        } catch (Exception exception) {
            return null;
        }
    }

    public List<Product> getAll() {
        return DbConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from sanpham").mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }

    public boolean addProduct(Product product) {
        try {
            int rowInserted = DbConnector.get().withHandle(h ->
                    h.createUpdate("insert into sanpham(id_sanpham,ten_sp,ma_loaisp,gia,id_km,thuonghieu,soluongton,active) values(?,?,?,?,?,?,?,?)")
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
                    h.createUpdate("UPDATE sanpham SET ten_sp=?,ma_loaisp=?,gia=?,id_km=?,thuongHieu=?,soLuongTon=?,active=? where id_sanpham = ?")
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

    public double discountCodeRate(String code) {
        try {
            double re = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT rate FROM magiamgia where id_magg = ?")
                            .bind(0, code)
                            .mapTo(Double.class).one()
            );

            return re;
        } catch (Exception exception) {

            return 0.0;
        }
    }
}
