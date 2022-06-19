package services;

import beans.Customer;
import beans.User;
import dao.UserDAO;

import java.util.List;

public class UserServices {
    private static UserServices instance;

    public static UserServices getInstance() {
        if (instance == null) {
            instance = new UserServices();
        }
        return instance;
    }

    public boolean isExistedEmail(String email) {
        return UserDAO.getInstance().isExistedEmail(email);
    }

    public boolean isExistedUsername(String username) {
        return UserDAO.getInstance().isExistedUsername(username);
    }

    public User checkUser(String username, String password) {
        return UserDAO.getInstance().checkUser(username, password);
    }

    public boolean register(User user) {
        return UserDAO.getInstance().register(user);
    }

    public boolean forgotPassword(String email) {
        return UserDAO.getInstance().forgotPassword(email);
    }

    public boolean checkToken(String email, String token) {
        return UserDAO.getInstance().checkToken(email, token);
    }

    public boolean resetPassword(String email, String newPassword, String token) {
        return UserDAO.getInstance().resetPassword(email, newPassword, token);
    }

    public boolean changePassword(String email, String newPassword) {
        return UserDAO.getInstance().changePassword(email, newPassword);
    }

    public boolean updateInformation(Customer c) {
        return UserDAO.getInstance().updateInformation(c);
    }

    public List<User> getUsers() {
        return UserDAO.getInstance().getUsers();
    }

    public User getUser(String username) {
        return UserDAO.getInstance().getUser(username);
    }

    public boolean deleteUser(String username) {
        return UserDAO.getInstance().deleteUser(username);
    }

    public boolean editUser(User u) {
        return UserDAO.getInstance().editUser(u);
    }

    public int addCustomer(Customer c) {
        return UserDAO.getInstance().addCustomer(c);
    }

    public boolean active(String email, String token) {
        return UserDAO.getInstance().active(email, token);
    }

    public boolean setToken(String email, String token) {
        return UserDAO.getInstance().setToken(email, token);
    }
}
