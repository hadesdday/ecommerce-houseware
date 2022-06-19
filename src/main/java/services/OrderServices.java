package services;

import beans.Order;
import beans.OrderDetails;
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

    public Order getOrderById(String maHD) {
        return OrderDAO.getInstance().getOrderById(maHD);
    }

    public boolean addOrder(Order o) {
        return OrderDAO.getInstance().addOrder(o);
    }

    public boolean deleteOrder(String maHD) {
        return OrderDAO.getInstance().deleteOrder(maHD);
    }

    public boolean updateOrder(Order o) {
        return OrderDAO.getInstance().updateOrder(o);
    }

    public Order getLatestOrder() {
        return OrderDAO.getInstance().getLatestOrder();
    }

    public int getSumPriceByOrder() {
        return OrderDAO.getInstance().getSumPriceAllOrder();
    }

    public int getTotalOrder() {
        return OrderDAO.getInstance().getTotalOrder();
    }

    public List<Order> getOrdersByCustomerId(int cid) {
        return OrderDAO.getInstance().getOrdersByCustomerId(cid);
    }

    public List<OrderDetails> getOrderDetailsByOrderId(String id) {
        return OrderDAO.getInstance().getOrderDetailsByOrderId(id);
    }
}
