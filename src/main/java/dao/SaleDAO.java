package dao;

import beans.Product;
import beans.Sale;
import db.DbConnector;

import java.util.List;
import java.util.stream.Collectors;

public class SaleDAO {
    private static SaleDAO instance;

    private SaleDAO() {
    }

    public static SaleDAO getInstance() {
        if (instance == null) {
            instance = new SaleDAO();
        }
        return instance;
    }

    public List<Sale> getSale() {
        try {
            List<Sale> list = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from khuyenmai").mapToBean(Sale.class).stream().collect(Collectors.toList())
            );
            return list;
        } catch (Exception ex) {
            return null;
        }
    }

    public Sale getSale(String id) {
        try {
            List<Sale> list = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from khuyenmai where id_km = ?")
                            .bind(0, id)
                            .mapToBean(Sale.class).stream().collect(Collectors.toList())
            );
            return list.get(0);
        } catch (Exception ex) {
            return null;
        }
    }

    public boolean addSale(Sale s) {
        try {
            int rowInserted = DbConnector.get().withHandle(h ->
                    h.createUpdate("insert into khuyenmai(id_km, rate, active) values(?,?,?)")
                            .bind(0, s.getId_km())
                            .bind(1, s.getRate())
                            .bind(2, s.getActive())
                            .execute()
            );
            return rowInserted == 1;
        } catch (Exception exception) {
            return false;
        }
    }

    public boolean deleteSale(String id) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("delete from khuyenmai where id_km = ?")
                            .bind(0, id)
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean editSale(Sale s) {
        try {
            int rowsAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("UPDATE khuyenmai SET rate=?,active=? where id_km = ?")
                            .bind(0, s.getRate())
                            .bind(1, s.getActive())
                            .bind(2, s.getId_km())
                            .execute()
            );
            return rowsAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

}
