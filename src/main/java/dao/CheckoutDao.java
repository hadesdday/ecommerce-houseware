package dao;

import beans.Bill;
import beans.Cart;
import beans.Customer;
import beans.Product;
import db.DbConnector;

import java.util.List;
import java.util.stream.Collectors;

public class CheckoutDao {
    private static CheckoutDao instance;

    private CheckoutDao() {

    }

    public static CheckoutDao getInstance() {
        if (instance == null)
            instance = new CheckoutDao();
        return instance;
    }

    public Bill checkBill(int authenticated, int idkhachhang, String fullName, String email, String phoneNumber, String address, String ptThanhToan, String maGG, double triGia, Cart cart) {
        Integer id_hoadon = 0;
        Customer sc = signinedCustomer(idkhachhang);
        if (authenticated == 1) {
            if (sc == null) return null;
            else
                id_hoadon = insertBill(idkhachhang, ptThanhToan, maGG, triGia);
        } else {
            DbConnector.get().withHandle(h -> h.createUpdate("INSERT INTO KhachHang (Ten_KH,DiaChi,SoDT,Email) VALUES(?,?,?,?)")
                    .bind(0, fullName)
                    .bind(1, address)
                    .bind(2, phoneNumber)
                    .bind(3, email)
                    .execute());
            List<Customer> khachhangList = DbConnector.get().withHandle(h -> h.createQuery("SELECT * FROM KhachHang ").mapToBean(Customer.class).stream().collect(Collectors.toList()));
            id_hoadon = insertBill(khachhangList.get(khachhangList.size() - 1).getId_khachhang(), ptThanhToan, maGG, triGia);
        }

        for (Product p : cart.getProducts()) {
            Integer finalId_hoadon = id_hoadon;
            DbConnector.get().withHandle(h -> h.createUpdate("INSERT INTO chitiethoadon (id_hoadon,id_sanpham,soluong) VALUES(?,?,?)")
                    .bind(0, finalId_hoadon)
                    .bind(1, p.getId_sanpham())
                    .bind(2, p.getQuantitySold())
                    .execute());
        }
        Bill bill = new Bill(idkhachhang, maGG, ptThanhToan, triGia);
        return bill;
    }

    public Integer insertBill(int idkhachhang, String ptThanhToan, String maGG, double triGia) {
        return DbConnector.get().withHandle(h -> h.createUpdate("INSERT INTO hoadon (ID_KhachHang,ID_MaGG,MaPTTT,TriGia,TrangThai) VALUES(?,?,?,?,?)")
                .bind(0, idkhachhang)
                .bind(1, maGG)
                .bind(2, ptThanhToan)
                .bind(3, triGia)
                .bind(4, 2)
                .executeAndReturnGeneratedKeys("ID_KhachHang").mapTo(Integer.class)
                .one());
    }

    public Customer signinedCustomer(int idkhachhang) {
        List<Customer> userList = DbConnector.get().withHandle(h -> h.createQuery("SELECT * FROM KhachHang WHERE ID_KhachHang=?")
                .bind(0, idkhachhang)
                .mapToBean(Customer.class).stream().collect(Collectors.toList()));
        if (userList.size() != 1) return null;
        else return userList.get(0);
    }

}
