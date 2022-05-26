package dao;

import beans.Bill;
import beans.KhachHang;
import db.DbConnector;

import java.sql.Timestamp;
import java.time.LocalDateTime;
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

    public Bill checkBill(int authenticated, String idkhachhang, String fullName, String email, String phoneNumber, String address, String ptThanhToan, String maGG, double triGia) {
            
        KhachHang sc= signinedCustomer(idkhachhang);
        if (authenticated == 1) {
            if (sc==null) return null;
            else
                insertBill(idkhachhang, ptThanhToan, maGG, triGia);
        } else {
            DbConnector.get().withHandle(h -> h.createUpdate("INSERT INTO KhachHang (Ten_KH,DiaChi,SoDT,Email) VALUES(?,?,?,?,?)")
                    .bind(1, fullName)
                    .bind(2, address)
                    .bind(3, phoneNumber)
                    .bind(4, email)
                    .execute());
            List<KhachHang> khachhangList = DbConnector.get().withHandle(h -> h.createQuery("SELECT * FROM KhachHang ").mapToBean(KhachHang.class).stream().collect(Collectors.toList()));
            insertBill(khachhangList.get(khachhangList.size() - 1).getId_khachhang(), ptThanhToan, maGG, triGia);
        }
        Bill bill=new Bill(idkhachhang,"ngay lap hoa don",maGG,ptThanhToan,triGia);
        return bill;
    }

    public void insertBill(String idkhachhang, String ptThanhToan, String maGG, double triGia) {
        DbConnector.get().withHandle(h -> h.createUpdate("INSERT INTO hoadon (ID_KhachHang,NgayLapHD,ID_MaGG,MaPTTT,TriGia,TrangThai) VALUES(?,?,?,?,?,?)")
                .bind(0, idkhachhang)
                .bind(1, Timestamp.valueOf(LocalDateTime.now()))
                .bind(2, maGG)
                .bind(3, ptThanhToan)
                .bind(4, triGia)
                .bind(5, "Chua thanh toan")
                .execute());
    }

    public KhachHang signinedCustomer(String idkhachhang){
        List<KhachHang> userList = DbConnector.get().withHandle(h -> h.createQuery("SELECT * FROM KhachHang WHERE ID_KhachHang=?")
                .bind(0, idkhachhang)
                .mapToBean(KhachHang.class).stream().collect(Collectors.toList()));
        if (userList.size() !=1) return null;
        else return userList.get(0);
    }

}
