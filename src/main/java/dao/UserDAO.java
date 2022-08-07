package dao;

import beans.Customer;
import beans.User;
import db.DbConnector;
import helper.MD5Hashing;

import java.sql.Types;
import java.util.List;
import java.util.stream.Collectors;

public class UserDAO {
    private static UserDAO instance;

    private UserDAO() {
    }

    public static UserDAO getInstance() {
        if (instance == null) {
            instance = new UserDAO();
        }
        return instance;
    }

    public boolean isExistedEmail(String email) {
        try {
            List<User> user = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM user WHERE email = ?")
                            .bind(0, email)
                            .mapToBean(User.class).stream().collect(Collectors.toList())
            );
            return user.size() == 1;
        } catch (Exception exception) {
            return false;
        }
    }

    public Customer getCustomer(String cid) {
        try {
            List<Customer> c = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM khachhang WHERE id_khachhang = ?")
                            .bind(0, cid)
                            .mapToBean(Customer.class).stream().collect(Collectors.toList())
            );
            return c.get(0);
        } catch (Exception exception) {
            return null;
        }
    }

    public boolean isExistedUsername(String username) {
        try {
            List<User> user = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM user WHERE username = ?")
                            .bind(0, username)
                            .mapToBean(User.class).stream().collect(Collectors.toList())
            );
            return user.size() == 1;
        } catch (Exception exception) {
            return false;
        }
    }

    public User checkUser(String username, String password) {
        try {
            List<User> user = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM user WHERE username = ? AND password = ?")
                            .bind(0, username)
                            .bind(1, MD5Hashing.get(password))
                            .mapToBean(User.class).stream().collect(Collectors.toList())
            );
            return user.get(0);
        } catch (Exception exception) {
            return null;
        }
    }

    public int addCustomer(Customer c) {
        try {
            int insertedCustomerId = DbConnector.get().withHandle(h ->
                    h.createUpdate("insert into khachhang(ten_kh, diachi, sodt, email) values(?,?,?,?)")
                            .bind(0, c.getTen_kh())
                            .bind(1, c.getDiachi())
                            .bind(2, c.getSodt())
                            .bind(3, c.getEmail())
                            .executeAndReturnGeneratedKeys("id_khachhang").mapTo(Integer.class).one()
            );
            return insertedCustomerId;
        } catch (Exception e) {
            return -1;
        }
    }

    public boolean register(User user) {
        try {
            int insertedRecord = DbConnector.get().withHandle(h ->
                    h.createUpdate("INSERT INTO user(username, password, email, id_khachhang,active) values(?,?,?,?,?)")
                            .bind(0, user.getUsername())
                            .bind(1, MD5Hashing.get(user.getPassword()))
                            .bind(2, user.getEmail())
                            .bind(3, user.getId_khachhang())
                            .bind(4, user.getActive())
                            .execute());
            return insertedRecord == 1;
        } catch (Exception err) {
            return false;
        }
    }

    public boolean setToken(String email, String token) {
        try {
            int insertedRecord = DbConnector.get().withHandle(h ->
                    h.createUpdate("update user set token = ? where email = ?")
                            .bind(0, token)
                            .bind(1, email)
                            .execute());
            return insertedRecord == 1;
        } catch (Exception err) {
            return false;
        }
    }

    public String getEmail(String input) {
        try {
            String email = DbConnector.get().withHandle(h ->
                    h.select("select email from user where email = ? or username = ?")
                            .bind(0, input)
                            .bind(1, input)
                            .mapTo(String.class).one());
            return email;
        } catch (Exception e) {
            return null;
        }
    }

    public boolean forgotPassword(String email, String token) {
        try {
            int rowUpdated = DbConnector.get().withHandle(h ->
                    h.createUpdate("UPDATE user set token = ? where email = ?")
                            .bind(0, token)
                            .bind(1, email)
                            .execute());
            return rowUpdated == 1;
        } catch (Exception err) {
            return false;
        }
    }

    public boolean checkToken(String email, String token) {
        try {
            List<User> user = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from user where email = ? and token = ?")
                            .bind(0, email)
                            .bind(1, token)
                            .mapToBean(User.class).stream().collect(Collectors.toList())
            );
            return user.get(0) != null;
        } catch (Exception exception) {
            return false;
        }
    }

    public boolean active(String email, String token) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("update user set token = ?,active = ? where email = ? and token = ?")
                            .bindNull(0, Types.NULL)
                            .bind(1, 2)
                            .bind(2, email)
                            .bind(3, token)
                            .execute());
            return rowAffected == 1;
        } catch (Exception exception) {
            return false;
        }
    }

    public boolean resetPassword(String email, String newPassword, String token) {
        try {
            int rowUpdated = DbConnector.get().withHandle(h ->
                    h.createUpdate("UPDATE user set token = ?,password = ? WHERE email = ? and token = ?")
                            .bindNull(0, Types.NULL)
                            .bind(1, MD5Hashing.get(newPassword))
                            .bind(2, email)
                            .bind(3, token)
                            .execute());
            return rowUpdated == 1;
        } catch (Exception exception) {
            return false;
        }
    }

    public boolean changePassword(String email, String newPassword) {
        try {
            int rowUpdated = DbConnector.get().withHandle(h ->
                    h.createUpdate("UPDATE user set password = ? where email = ?")
                            .bind(0, MD5Hashing.get(newPassword))
                            .bind(1, email)
                            .execute()
            );
            return rowUpdated == 1;
        } catch (Exception exception) {
            return false;
        }
    }

    public boolean updateInformation(Customer c) {
        try {
            int rowUpdated = DbConnector.get().withHandle(h ->
                    h.createUpdate("UPDATE khachhang set ten_kh = ? ,email = ?,diachi = ?,sodt = ? where email = ?")
                            .bind(0, c.getTen_kh())
                            .bind(1, c.getEmail())
                            .bind(2, c.getDiachi())
                            .bind(3, c.getSodt())
                            .bind(4, c.getEmail())
                            .execute());
            return rowUpdated == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public List<User> getUsers() {
        List<User> users = DbConnector.get().withHandle(h ->
                h.createQuery("select * from user")
                        .mapToBean(User.class).stream().collect(Collectors.toList())
        );
        return users;
    }

    public User getUser(String username) {
        try {
            List<User> users = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from user where username = ?")
                            .bind(0, username)
                            .mapToBean(User.class).stream().collect(Collectors.toList())
            );
            return users.get(0);
        } catch (Exception e) {
            return null;
        }
    }

    public boolean deleteUser(String username) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("delete from user where username = ?")
                            .bind(0, username)
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean editUser(User u) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("UPDATE user SET email=?,role=?,active=? where username = ?")
                            .bind(0, u.getEmail())
                            .bind(1, u.getRole())
                            .bind(2, u.getActive())
                            .bind(3, u.getUsername())
                            .execute());
            return rowAffected == 1;
        } catch (Exception err) {
            return false;
        }
    }


}
