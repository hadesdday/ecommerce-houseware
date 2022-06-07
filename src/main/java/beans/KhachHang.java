package beans;

import java.io.Serializable;

public class KhachHang implements Serializable {
    private int id_khachhang;
    private String ten_kh;
    private String diachi;
    private String sodt;
    private String email;

    public KhachHang() {
    }

    public KhachHang(String ten_kh, String diachi, String sodt, String email) {
        this.ten_kh = ten_kh;
        this.diachi = diachi;
        this.sodt = sodt;
        this.email = email;
    }


    public String getTen_kh() {
        return ten_kh;
    }

    public void setTen_kh(String ten_kh) {
        this.ten_kh = ten_kh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getSodt() {
        return sodt;
    }

    public void setSodt(String sodt) {
        this.sodt = sodt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getId_khachhang() {
        return id_khachhang;
    }

    public void setId_khachhang(int id_khachhang) {
        this.id_khachhang = id_khachhang;
    }
}
