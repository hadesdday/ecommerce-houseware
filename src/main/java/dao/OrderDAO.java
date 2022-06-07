package dao;

import beans.Order;
import db.DbConnector;
import org.jdbi.v3.core.statement.Update;

import java.sql.Types;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class OrderDAO {
    private static OrderDAO instance;

    private OrderDAO() {
    }

    public static OrderDAO getInstance() {
        if (instance == null) {
            instance = new OrderDAO();
        }
        return instance;
    }

    public List<Order> getOrders() {
        List<Order> re = DbConnector.get().withHandle(h ->
                h.createQuery("SELECT * FROM hoadon")
                        .mapToBean(Order.class).stream().collect(Collectors.toList())
        );
        return re;
    }

    public Order getOrderById(String maHD) {
        try {
            List<Order> re = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM hoadon WHERE ID_HOADON = ?")
                            .bind(0, maHD)
                            .mapToBean(Order.class).stream().collect(Collectors.toList())
            );
            return re.get(0);
        } catch (Exception e) {
            return null;
        }
    }

    public boolean addOrder(Order o) {
        try {
            int rowInserted = 0;
            if (!o.getID_MAGG().isEmpty()) {
                rowInserted = DbConnector.get().withHandle(h ->
                        h.createUpdate("INSERT INTO hoadon(ID_HOADON,ID_KHACHHANG,ID_MAGG,MAPTTT,TRIGIA,TRANGTHAI) VALUES(?,?,?,?,?,?)")
                                .bind(0, o.getID_HOADON())
                                .bind(1, o.getID_KHACHHANG())
                                .bind(2, o.getID_MAGG())
                                .bind(3, o.getMAPTTT())
                                .bind(4, o.getTRIGIA())
                                .bind(5, o.getTRANGTHAI())
                                .execute()
                );
            } else {
                rowInserted = DbConnector.get().withHandle(h ->
                        h.createUpdate("INSERT INTO hoadon(ID_HOADON,ID_KHACHHANG,ID_MAGG,MAPTTT,TRIGIA,TRANGTHAI) VALUES(?,?,?,?,?,?)")
                                .bind(0, o.getID_HOADON())
                                .bind(1, o.getID_KHACHHANG())
                                .bindNull(2, Types.NULL)
                                .bind(3, o.getMAPTTT())
                                .bind(4, o.getTRIGIA())
                                .bind(5, o.getTRANGTHAI())
                                .execute());
            }
            return rowInserted == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean deleteOrder(String maHD) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("DELETE FROM hoadon WHERE ID_HOADON = ?")
                            .bind(0, maHD)
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean updateOrder(Order o) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("UPDATE hoadon SET ID_KHACHHANG=?,ID_MAGG=?,MAPTTT=?,TRIGIA=?,TRANGTHAI=? WHERE ID_HOADON = ?")
                            .bind(0, o.getID_KHACHHANG())
                            .bind(1, o.getID_MAGG())
                            .bind(2, o.getMAPTTT())
                            .bind(3, o.getTRIGIA())
                            .bind(4, o.getTRANGTHAI())
                            .bind(5, o.getID_HOADON())
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public Order getLatestOrder() {
        try {
            List<Order> re = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from hoadon where id_hoadon = (SELECT MAX(id_hoadon) FROM hoadon)")
                            .mapToBean(Order.class).stream().collect(Collectors.toList())
            );
            return re.get(0);
        } catch (Exception e) {
            return null;
        }
    }
}
