package dao;

import beans.Order;
import db.DbConnector;

import java.sql.Types;
import java.util.*;
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

    public int getSumPriceAllOrder() {
        try {
            int re = DbConnector.get().withHandle(h ->
                    h.select("select sum(trigia) from hoadon")
                            .mapTo(int.class).one()
            );
            return re;
        } catch (Exception e) {
            return 0;
        }
    }

    public int getTotalOrder() {
        try {
            int re = DbConnector.get().withHandle(h ->
                    h.select("select count(*) from hoadon")
                            .mapTo(int.class).one()
            );
            return re;
        } catch (Exception e) {
            return 0;
        }
    }

    public TreeMap<String, Float> getTurnoverByMonth() {
        TreeMap<String, Float> re = new TreeMap<>();

        List<Integer> thang = new ArrayList<>();
        List<Float> sumValue = new ArrayList<>();

        List<Map<String, Object>> r = DbConnector.get().withHandle(h ->
                h.select("select month(createdat) thang ,sum(trigia) tong\n" +
                        " from hoadon\n" +
                        " where trangthai = 5 and year(createdat) = year(NOW())\n" +
                        "group by month(createdat)").mapToMap().list()
        );

        for (Map<String, Object> e : r) {
            for (Map.Entry<String, Object> entry : e.entrySet()) {
                String key = entry.getKey();
                float value = Float.parseFloat(String.valueOf(entry.getValue()));
                if (key.equals("thang")) {
                    thang.add((Integer) entry.getValue());
                } else if (key.equals("tong")) {
                    sumValue.add(value);
                }
            }
        }

        for (int i = 0; i < thang.size(); i++) {
            re.put(thang.get(i).toString(), sumValue.get(i));
        }

        for (int i = 1; i <= 12; i++) {
            if (!thang.contains(i)) {
                re.put(String.valueOf(i), (float) 0);
            }
        }

//        for (Map.Entry<String, Float> rs : re.entrySet()) {
//            String key = rs.getKey();
//            float value = Float.parseFloat(String.valueOf(rs.getValue()));
//
//            System.out.println(key + "-" + value);
//        }

        return re;
    }
}
