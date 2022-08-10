package beans;

import java.io.Serializable;

public class Order implements Serializable {
    private int ID_HOADON;
    private String ID_KHACHHANG;
    private String ID_MAGG;
    private String MAPTTT;
    private double TRIGIA;
    private String TRANGTHAI;
    private String createdAt;

    public Order() {
    }

    public Order(String ID_KHACHHANG, String ID_MAGG, String MAPTTT, double TRIGIA, String TRANGTHAI) {
        this.ID_KHACHHANG = ID_KHACHHANG;
        this.ID_MAGG = ID_MAGG;
        this.MAPTTT = MAPTTT;
        this.TRIGIA = TRIGIA;
        this.TRANGTHAI = TRANGTHAI;
    }

    public Order(int ID_HOADON, String ID_KHACHHANG, String ID_MAGG, String MAPTTT, double TRIGIA, String TRANGTHAI, String createdAt) {
        this.ID_HOADON = ID_HOADON;
        this.ID_KHACHHANG = ID_KHACHHANG;
        this.ID_MAGG = ID_MAGG;
        this.MAPTTT = MAPTTT;
        this.TRIGIA = TRIGIA;
        this.TRANGTHAI = TRANGTHAI;
        this.createdAt = createdAt;
    }

    public int getID_HOADON() {
        return ID_HOADON;
    }

    public void setID_HOADON(int ID_HOADON) {
        this.ID_HOADON = ID_HOADON;
    }

    public String getID_KHACHHANG() {
        return ID_KHACHHANG;
    }

    public void setID_KHACHHANG(String ID_KHACHHANG) {
        this.ID_KHACHHANG = ID_KHACHHANG;
    }

    public String getID_MAGG() {
        return ID_MAGG;
    }

    public void setID_MAGG(String ID_MAGG) {
        this.ID_MAGG = ID_MAGG;
    }

    public String getMAPTTT() {
        return MAPTTT;
    }

    public void setMAPTTT(String MAPTTT) {
        this.MAPTTT = MAPTTT;
    }

    public double getTRIGIA() {
        return TRIGIA;
    }

    public void setTRIGIA(double TRIGIA) {
        this.TRIGIA = TRIGIA;
    }

    public String getTRANGTHAI() {
        return TRANGTHAI;
    }

    public void setTRANGTHAI(String TRANGTHAI) {
        this.TRANGTHAI = TRANGTHAI;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    @Override
    public String toString() {
        return "Order{" +
                "ID_HOADON=" + ID_HOADON +
                ", ID_KHACHHANG='" + ID_KHACHHANG + '\'' +
                ", ID_MAGG='" + ID_MAGG + '\'' +
                ", MAPTTT='" + MAPTTT + '\'' +
                ", TRIGIA=" + TRIGIA +
                ", TRANGTHAI='" + TRANGTHAI + '\'' +
                ", createdAt='" + createdAt + '\'' +
                '}';
    }
}
