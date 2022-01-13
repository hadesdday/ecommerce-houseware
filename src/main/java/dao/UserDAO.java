package dao;

import beans.EmailMessage;
import beans.User;
import db.DbConnector;
import services.EmailServices;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.List;
import java.util.Random;
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
                    h.createQuery("SELECT * FROM Account WHERE email = ?")
                            .bind(0, email)
                            .mapToBean(User.class).stream().collect(Collectors.toList())
            );
            return user.size() == 1;
        } catch (Exception exception) {
            return false;
        }
    }

    public boolean isExistedUsername(String username) {
        try {
            List<User> user = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM Account WHERE username = ?")
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
                    h.createQuery("SELECT * FROM Account WHERE username = ? AND password = ?")
                            .bind(0, username)
                            .bind(1, hashPassword(password))
                            .mapToBean(User.class).stream().collect(Collectors.toList())
            );
            return user.get(0);
        } catch (Exception exception) {
            return null;
        }
    }

    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("md5");
            md.update(password.getBytes());
            byte byteData[] = md.digest();
            BigInteger number = new BigInteger(1, byteData);
            return number.toString(16);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean register(String username, String password, String fullname, String email, String phone, String address) {
        try {
            int insertedRecord = DbConnector.get().withHandle(h ->
                    h.createUpdate("INSERT INTO Account (username,password,fullname,email,phone,address) VALUES(?,?,?,?,?,?)")
                            .bind(0, username)
                            .bind(1, hashPassword(password))
                            .bind(2, fullname)
                            .bind(3, email)
                            .bind(4, phone)
                            .bind(5, address)
                            .execute());
            return insertedRecord == 1;
        } catch (Exception err) {
            return false;
        }
    }

    public String generateToken(int len) {
        String chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        Random rnd = new Random();
        StringBuilder sb = new StringBuilder(len);
        for (int i = 0; i < len; i++)
            sb.append(chars.charAt(rnd.nextInt(chars.length())));
        return sb.toString();
    }

    public boolean forgotPassword(String email) {
        try {
            String token = generateToken(11);
            int rowUpdated = DbConnector.get().withHandle(h ->
                    h.createUpdate("UPDATE Account set token = ? where  email = ?")
                            .bind(0, token)
                            .bind(1, email)
                            .execute());
            String resetUrl = "http://localhost:8080/forgot_password_project_war_exploded/forgotPassword?email=" + email + "&token=" + token;
            EmailMessage emailbean = new EmailMessage();
            emailbean.setTo(email);
            emailbean.setSubject("Thiết lập lại mật khẩu đăng nhập NLU");
            emailbean.setMessage("Chào bạn\n" + "Chúng tôi có nhận được yêu cầu thiết lập lại mật khẩu cho tài khoản của bạn."
                    + "\n" + "Nhấn đường link này[" + resetUrl + "] để thiết lập mật khẩu mới cho tài khoản của bạn.\n" +
                    "Hoặc vui lòng copy và dán đường dẫn bên dưới lên trình duyệt:[" + resetUrl + "]\n"
                    + "Nếu bạn không yêu cầu thiết lập lại mật khẩu, vui lòng liên hệ Bộ phận chăm sóc khách hàng của chúng tôi.\n" +
                    "Trân trọng,\n" + "Đội ngũ NLU"
            );
            EmailServices.sendMail(emailbean);
            return rowUpdated == 1;
        } catch (Exception err) {
            return false;
        }
    }

    public boolean checkToken(String email, String token) {
        try {
            List<User> user = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from account where email = ? and token = ?")
                            .bind(0, email)
                            .bind(1, token)
                            .mapToBean(User.class).stream().collect(Collectors.toList())
            );
            return user.get(0) != null;
        } catch (Exception exception) {
            return false;
        }
    }

    public boolean resetPassword(String email, String newPassword, String token) {
        try {
            int rowUpdated = DbConnector.get().withHandle(h ->
                    h.createUpdate("UPDATE Account set token = ?,password = ? WHERE email = ? and token = ?")
                            .bind(0, "")
                            .bind(1, hashPassword(newPassword))
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
                    h.createUpdate("UPDATE ACCOUNT set password = ? where email = ?")
                            .bind(0, hashPassword(newPassword))
                            .bind(1, email)
                            .execute()
            );
            return rowUpdated == 1;
        } catch (Exception exception) {
            return false;
        }
    }

    public boolean updateInformation(String email, String address, String phoneNumber) {
        try {
            int rowUpdated = DbConnector.get().withHandle(h ->
                    h.createUpdate("UPDATE Account set email = ?,address = ?,phone = ? where email = ?")
                            .bind(0, email)
                            .bind(1, address)
                            .bind(2, phoneNumber)
                            .bind(3, email)
                            .execute()
            );
            return rowUpdated == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public List<User> getUsers() {
        List<User> users = DbConnector.get().withHandle(h ->
                h.createQuery("select * from account")
                        .mapToBean(User.class).stream().collect(Collectors.toList())
        );
        return users;
    }
}
