package dao;

import beans.Customer;
import db.DbConnector;

import java.util.List;
import java.util.stream.Collectors;

public class CustomerDAO {
    private static CustomerDAO instance;

    private CustomerDAO() {
    }

    public static CustomerDAO getInstance() {
        if (instance == null) {
            instance = new CustomerDAO();
        }
        return instance;
    }

    public Customer getCustomerById(String maKH) {
        try {
            List<Customer> re = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from khachhang where id_khachhang = ?")
                            .bind(0, maKH)
                            .mapToBean(Customer.class).stream().collect(Collectors.toList())
            );
            return re.get(0);
        } catch (Exception e) {
            return null;
        }
    }

    public List<Customer> getCustomerList() {
        try {
            List<Customer> re = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from khachhang").mapToBean(Customer.class).stream().collect(Collectors.toList())
            );
            return re;
        } catch (Exception e) {
            return null;
        }
    }

    public boolean addCustomer(Customer c) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("insert into khachhang(ten_kh,diachi,sodt,email) values(?,?,?,?)")
                            .bind(0, c.getTen_kh())
                            .bind(1, c.getDiachi())
                            .bind(2, c.getSodt())
                            .bind(3, c.getEmail())
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean updateCustomer(Customer c) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("update khachhang set ten_kh = ?,diachi=?,sodt=?,email=? where id_khachhang = ?")
                            .bind(0, c.getTen_kh())
                            .bind(1, c.getDiachi())
                            .bind(2, c.getSodt())
                            .bind(3, c.getEmail())
                            .bind(4, c.getId_khachhang())
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean deleteCustomer(String maKH) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("delete from khachhang where id_khachhang = ?")
                            .bind(0, maKH)
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public Customer getLatestCustomer() {
        try {
            Customer kh = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from khachhang where id_khachhang=(select max(id_khachhang) from khachhang)")
                            .mapToBean(Customer.class).stream().collect(Collectors.toList())
            ).get(0);
            return kh;
        } catch (Exception e) {
            return null;
        }
    }

    public int getTotalCustomer() {
        try {
            int re = DbConnector.get().withHandle(h ->
                    h.select("select count(*) from khachhang")
                            .mapTo(int.class).one()
            );
            return re;
        } catch (Exception e) {
            return 0;
        }
    }
}
