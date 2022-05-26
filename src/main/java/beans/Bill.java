package beans;

import java.io.Serializable;

public class Bill implements Serializable {
    private String id_hoadon;
    private String id_khachHang;
    private String ngaylaphd;
    private String id_magg;
    private String mapttt;
    private double trigia;
    private String trangthai;

    public Bill(String id_khachHang, String ngaylaphd, String id_magg, String mapttt, double trigia) {

        this.id_khachHang = id_khachHang;
        this.ngaylaphd = ngaylaphd;
        this.id_magg = id_magg;
        this.mapttt = mapttt;
        this.trigia = trigia;

    }


    public String getNgaylaphd() {
        return ngaylaphd;
    }

    public void setNgaylaphd(String ngaylaphd) {
        this.ngaylaphd = ngaylaphd;
    }

    public String getId_magg() {
        return id_magg;
    }

    public void setId_magg(String id_magg) {
        this.id_magg = id_magg;
    }

    public String getMapttt() {
        return mapttt;
    }

    public void setMapttt(String mapttt) {
        this.mapttt = mapttt;
    }

    public double getTrigia() {
        return trigia;
    }

    public void setTrigia(double trigia) {
        this.trigia = trigia;
    }

    public String getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(String trangthai) {
        this.trangthai = trangthai;
    }

    public String getId_hoadon() {
        return id_hoadon;
    }

    public void setId_hoadon(String id_hoadon) {
        this.id_hoadon = id_hoadon;
    }

    public String getId_khachHang() {
        return id_khachHang;
    }

    public void setId_khachHang(String id_khachHang) {
        this.id_khachHang = id_khachHang;
    }
}
