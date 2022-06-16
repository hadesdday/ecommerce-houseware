package services;

import beans.PaymentMethod;
import dao.PaymentMethodDAO;

import java.util.List;

public class PaymentMethodServices {
    private static PaymentMethodServices instance;

    private PaymentMethodServices() {
    }

    public static PaymentMethodServices getInstance() {
        if (instance == null) {
            instance = new PaymentMethodServices();
        }
        return instance;
    }

    public List<PaymentMethod> getPaymentMethod() {
        return PaymentMethodDAO.getInstance().getPaymentMethod();
    }

    public PaymentMethod getPaymentMethod(String id) {
        return PaymentMethodDAO.getInstance().getPaymentMethod(id);
    }

    public boolean addPaymentMethod(PaymentMethod p) {
        return PaymentMethodDAO.getInstance().addPaymentMethod(p);
    }

    public boolean deletePaymentMethod(String id) {
        return PaymentMethodDAO.getInstance().deletePaymentMethod(id);
    }

    public boolean editPaymentMethod(PaymentMethod p) {
        return PaymentMethodDAO.getInstance().editPaymentMethod(p);
    }

}
