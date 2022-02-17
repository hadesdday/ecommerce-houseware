package dao;

import beans.Order;
import db.DbConnector;

import java.util.List;
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

    public boolean addOrder(Order o) {
        try {
            int rowInserted = DbConnector.get().withHandle(h ->
                    h.createUpdate("INSERT INTO hoadon(ID_HOADON,ID_KHACHHANG,NGAYLAPHD,ID_MAGG,MAPTTT,TRIGIA,TRANGTHAI) VALUES(?,?,?,?,?,?,?)")
                            .bind(0, o.getID_HOADON())
                            .bind(1, o.getID_KHACHHANG())
                            .bind(2, o.getNGAYLAPHD())
                            .bind(3, o.getID_MAGG())
                            .bind(4, o.getMAPTTT())
                            .bind(5, o.getTRIGIA())
                            .bind(6, o.getTRANGTHAI())
                            .execute()
            );
            return rowInserted == 1;
        } catch (Exception e) {
            return false;
        }
    }
}
