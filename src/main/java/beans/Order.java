package beans;

import java.io.Serializable;

public class Order implements Serializable {
    private String ID_HOADON;
    private String ID_KHACHHANG;
    private String NGAYLAPHD;
    private String ID_MAGG;
    private String MAPTTT;
    private double TRIGIA;
    private String TRANGTHAI;

    public Order() {
    }

    public Order(String ID_HOADON, String ID_KHACHHANG, String NGAYLAPHD, String ID_MAGG, String MAPTTT, double TRIGIA, String TRANGTHAI) {
        this.ID_HOADON = ID_HOADON;
        this.ID_KHACHHANG = ID_KHACHHANG;
        this.NGAYLAPHD = NGAYLAPHD;
        this.ID_MAGG = ID_MAGG;
        this.MAPTTT = MAPTTT;
        this.TRIGIA = TRIGIA;
        this.TRANGTHAI = TRANGTHAI;
    }

    public String getID_HOADON() {
        return ID_HOADON;
    }

    public void setID_HOADON(String ID_HOADON) {
        this.ID_HOADON = ID_HOADON;
    }

    public String getID_KHACHHANG() {
        return ID_KHACHHANG;
    }

    public void setID_KHACHHANG(String ID_KHACHHANG) {
        this.ID_KHACHHANG = ID_KHACHHANG;
    }

    public String getNGAYLAPHD() {
        return NGAYLAPHD;
    }

    public void setNGAYLAPHD(String NGAYLAPHD) {
        this.NGAYLAPHD = NGAYLAPHD;
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
}
