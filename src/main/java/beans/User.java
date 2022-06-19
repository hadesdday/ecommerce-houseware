package beans;

import java.io.Serializable;

public class User implements Serializable {
    private String username;
    private int id_khachhang;
    private String email;
    private int active;
    private String role;
    private String password;
    private String token;

    public User() {
    }

    public User(String username, int id_khachhang, String email, int active, String role) {
        this.username = username;
        this.email = email;
        this.role = role;
        this.active = active;
        this.id_khachhang = id_khachhang;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getId_khachhang() {
        return id_khachhang;
    }

    public void setId_khachhang(int id_khachhang) {
        this.id_khachhang = id_khachhang;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", id_khachhang=" + id_khachhang +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", token='" + token + '\'' +
                ", role='" + role + '\'' +
                ", active=" + active +
                '}';
    }
}
