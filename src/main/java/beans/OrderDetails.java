package beans;

import java.io.Serializable;

public class OrderDetails implements Serializable {
    private String id_hoadon;
    private String id_sanpham;
    private int soluong;

    public OrderDetails() {
    }

    public OrderDetails(String id_hoadon, String id_sanpham, int soluong) {
        this.id_hoadon = id_hoadon;
        this.id_sanpham = id_sanpham;
        this.soluong = soluong;
    }

    public String getId_hoadon() {
        return id_hoadon;
    }

    public void setId_hoadon(String id_hoadon) {
        this.id_hoadon = id_hoadon;
    }

    public String getId_sanpham() {
        return id_sanpham;
    }

    public void setId_sanpham(String id_sanpham) {
        this.id_sanpham = id_sanpham;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }
}
