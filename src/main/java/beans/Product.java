package beans;

import java.io.Serializable;
import java.util.Date;

public class Product implements Serializable {
    private String maSP;
    private String tenSP;
    private String maLoaiSP;
    private double gia;
    private String maKM;
    private String thuongHieu;
    private int soLuongTon;
    private String active;

    public Product() {
    }

    public Product(String maSP, String tenSP, String maLoaiSP, double gia, String maKM, String thuongHieu, int soLuongTon, String active) {
        this.maSP = maSP;
        this.tenSP = tenSP;
        this.maLoaiSP = maLoaiSP;
        this.gia = gia;
        this.maKM = maKM;
        this.thuongHieu = thuongHieu;
        this.soLuongTon = soLuongTon;
        this.active = active;
    }

    public String getMaSP() {
        return maSP;
    }

    public void setMaSP(String maSP) {
        this.maSP = maSP;
    }

    public String getTenSP() {
        return tenSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public String getMaLoaiSP() {
        return maLoaiSP;
    }

    public void setMaLoaiSP(String maLoaiSP) {
        this.maLoaiSP = maLoaiSP;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public String getMaKM() {
        return maKM;
    }

    public void setMaKM(String maKM) {
        this.maKM = maKM;
    }

    public String getThuongHieu() {
        return thuongHieu;
    }

    public void setThuongHieu(String thuongHieu) {
        this.thuongHieu = thuongHieu;
    }

    public int getSoLuongTon() {
        return soLuongTon;
    }

    public void setSoLuongTon(int soLuongTon) {
        this.soLuongTon = soLuongTon;
    }

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }
}
