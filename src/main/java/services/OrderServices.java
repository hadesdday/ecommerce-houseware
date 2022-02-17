package services;

import beans.Order;
import dao.OrderDAO;

import java.util.List;

public class OrderServices {
    private static OrderServices instance;

    public static OrderServices getInstance() {
        if (instance == null) {
            instance = new OrderServices();
        }
        return instance;
    }

    public List<Order> getOrders() {
        return OrderDAO.getInstance().getOrders();
    }

    public boolean addOrder(Order o) {
        return OrderDAO.getInstance().addOrder(o);
    }
}
