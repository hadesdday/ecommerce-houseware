package beans;

import java.io.Serializable;

public class Category implements Serializable {
    private String ma_loaisp;
    private String ten_loaisp;
    private String createdAt;

    public Category() {
    }

    public Category(String ma_loaisp, String ten_loaisp) {
        this.ma_loaisp = ma_loaisp;
        this.ten_loaisp = ten_loaisp;
    }

    public String getMa_loaisp() {
        return ma_loaisp;
    }

    public void setMa_loaisp(String ma_loaisp) {
        this.ma_loaisp = ma_loaisp;
    }

    public String getTen_loaisp() {
        return ten_loaisp;
    }

    public void setTen_loaisp(String ten_loaisp) {
        this.ten_loaisp = ten_loaisp;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}
