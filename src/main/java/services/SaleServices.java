package services;

import beans.Sale;
import dao.SaleDAO;

import java.util.List;

public class SaleServices {
    private static SaleServices instance;

    public static SaleServices getInstance() {
        if (instance == null) {
            instance = new SaleServices();
        }
        return instance;
    }

    public List<Sale> getSale() {
        return SaleDAO.getInstance().getSale();
    }

    public Sale getSale(String id) {
        return SaleDAO.getInstance().getSale(id);
    }

    public boolean addSale(Sale s) {
        return SaleDAO.getInstance().addSale(s);
    }

    public boolean deleteSale(String id) {
        return SaleDAO.getInstance().deleteSale(id);
    }

    public boolean editSale(Sale s) {
        return SaleDAO.getInstance().editSale(s);
    }
}
