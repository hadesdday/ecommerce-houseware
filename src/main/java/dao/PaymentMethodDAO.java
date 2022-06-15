package dao;

import beans.PaymentMethod;
import beans.Sale;
import db.DbConnector;

import java.util.List;
import java.util.stream.Collectors;

public class PaymentMethodDAO {
    private static PaymentMethodDAO instance;

    private PaymentMethodDAO() {
    }

    public static PaymentMethodDAO getInstance() {
        if (instance == null) {
            instance = new PaymentMethodDAO();
        }
        return instance;
    }

    public List<PaymentMethod> getPaymentMethod() {
        try {
            List<PaymentMethod> list = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from thanhtoan").mapToBean(PaymentMethod.class).stream().collect(Collectors.toList())
            );
            return list;
        } catch (Exception e) {
            return null;
        }
    }

    public PaymentMethod getPaymentMethod(String id) {
        try {
            List<PaymentMethod> list = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from thanhtoan where mapttt = ?")
                            .bind(0, id)
                            .mapToBean(PaymentMethod.class).stream().collect(Collectors.toList())
            );
            return list.get(0);
        } catch (Exception e) {
            return null;
        }
    }

    public boolean addPaymentMethod(PaymentMethod p) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("insert into thanhtoan(mapttt, tenpttt) values(?,?)")
                            .bind(0, p.getMapttt())
                            .bind(1, p.getTenpttt())
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean deletePaymentMethod(String id) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("delete from thanhtoan where mapttt = ?")
                            .bind(0, id)
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean editPaymentMethod(PaymentMethod p) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("update thanhtoan set tenpttt = ? where mapttt = ?")
                            .bind(0, p.getTenpttt())
                            .bind(1, p.getMapttt())
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }
}
