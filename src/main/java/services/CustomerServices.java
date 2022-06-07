package services;

import beans.KhachHang;
import dao.CustomerDAO;

import java.util.List;

public class CustomerServices {
    private static CustomerServices instance;

    public static CustomerServices getInstance() {
        if (instance == null) {
            instance = new CustomerServices();
        }
        return instance;
    }

    public KhachHang getCustomerById(String maKH) {
        return CustomerDAO.getInstance().getCustomerById(maKH);
    }

    public List<KhachHang> getCustomerList() {
        return CustomerDAO.getInstance().getCustomerList();
    }

    public boolean addCustomer(KhachHang c) {
        return CustomerDAO.getInstance().addCustomer(c);
    }

    public boolean updateCustomer(KhachHang c) {
        return CustomerDAO.getInstance().updateCustomer(c);
    }

    public boolean deleteCustomer(String maKH) {
        return CustomerDAO.getInstance().deleteCustomer(maKH);
    }

    public KhachHang getLatestCustomer() {
        return CustomerDAO.getInstance().getLatestCustomer();
    }
}
