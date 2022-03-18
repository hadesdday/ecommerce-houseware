package services;

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

    public User login(String username, String password) {
        return UserDAO.getInstance().checkUser(username, password);
    }

    public boolean isExistedUsername(String username) {
        return UserDAO.getInstance().isExistedUsername(username);
    }

    public boolean isExistedEmail(String email) {
        return UserDAO.getInstance().isExistedEmail(email);
    }

    public boolean register(String username, String password, String fullname, String email, String phone, String address) {
        return UserDAO.getInstance().register(username, password, fullname, email, phone, address);
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

    public boolean updateInformation(String email, String address, String phoneNumber) {
        return UserDAO.getInstance().updateInformation(email, address, phoneNumber);
    }

    public List<User> getUsers() {
        return UserDAO.getInstance().getUsers();
    }

    public boolean add(User u) {
        return UserDAO.getInstance().add(u);
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
}
