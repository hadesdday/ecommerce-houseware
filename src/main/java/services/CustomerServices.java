package services;

import beans.Customer;
import dao.CustomerDAO;
import dao.OrderDAO;

import java.util.List;

public class CustomerServices {
    private static CustomerServices instance;

    public static CustomerServices getInstance() {
        if (instance == null) {
            instance = new CustomerServices();
        }
        return instance;
    }

    public Customer getCustomerById(String maKH) {
        return CustomerDAO.getInstance().getCustomerById(maKH);
    }

    public List<Customer> getCustomerList() {
        return CustomerDAO.getInstance().getCustomerList();
    }

    public boolean addCustomer(Customer c) {
        return CustomerDAO.getInstance().addCustomer(c);
    }

    public boolean updateCustomer(Customer c) {
        return CustomerDAO.getInstance().updateCustomer(c);
    }

    public boolean deleteCustomer(String maKH) {
        return CustomerDAO.getInstance().deleteCustomer(maKH);
    }

    public Customer getLatestCustomer() {
        return CustomerDAO.getInstance().getLatestCustomer();
    }

    public int getTotalCustomer() {
        return CustomerDAO.getInstance().getTotalCustomer();
    }
}
