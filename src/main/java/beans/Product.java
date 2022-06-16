package beans;

import java.io.Serializable;

public class Product implements Serializable {
    private String id_sanpham;
    private String ten_sp;
    private String ma_loaisp;
    private double gia;
    private double rateDiscount;
    private String id_km;
    private String thuonghieu;
    private int soluongton;
    private String active;
    private int quantitySold;
    private String imageMain;
    private String mota;
    private String avgRating;

    public Product() {
    }

    public Product(String id_sanpham, String ten_sp, String ma_loaisp, double gia, String id_km, String thuonghieu, int soluongton, String active, String mota) {
        this.id_sanpham = id_sanpham;
        this.ten_sp = ten_sp;
        this.ma_loaisp = ma_loaisp;
        this.gia = gia;
        this.id_km = id_km;
        this.thuonghieu = thuonghieu;
        this.soluongton = soluongton;
        this.active = active;
        this.mota = mota;
    }

    public String getId_sanpham() {
        return id_sanpham;
    }

    public void setId_sanpham(String id_sanpham) {
        this.id_sanpham = id_sanpham;
    }

    public String getTen_sp() {
        return ten_sp;
    }

    public void setTen_sp(String ten_sp) {
        this.ten_sp = ten_sp;
    }

    public String getMa_loaisp() {
        return ma_loaisp;
    }

    public void setMa_loaisp(String ma_loaisp) {
        this.ma_loaisp = ma_loaisp;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public String getId_km() {
        return id_km;
    }

    public void setId_km(String id_km) {
        this.id_km = id_km;
    }

    public String getThuonghieu() {
        return thuonghieu;
    }

    public void setThuonghieu(String thuonghieu) {
        this.thuonghieu = thuonghieu;
    }

    public int getSoluongton() {
        return soluongton;
    }

    public void setSoluongton(int soluongton) {
        this.soluongton = soluongton;
    }

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }

    public int getQuantitySold() {
        return quantitySold;
    }

    public void setQuantitySold(int quantitySold) {
        if (quantitySold <= soluongton && quantitySold > 0)
            this.quantitySold = quantitySold;
    }

    public double total() {
        return quantitySold * gia;
    }

    public String getImageMain() {
        return imageMain;
    }

    public void setImageMain(String imageMain) {
        this.imageMain = imageMain;
    }

    public double getRateDiscount() {
        return rateDiscount;
    }

    public void setRateDiscount(double rateDiscount) {
        this.rateDiscount = rateDiscount;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getAvgRating() {
        return avgRating;
    }

    public void setAvgRating(String avgRating) {
        this.avgRating = avgRating;
    }
}


