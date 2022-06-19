package beans;

import java.io.Serializable;

public class Image implements Serializable {
    private String ID_ANH;
    private String LINK_ANH;
    private String ID_SANPHAM;

    public Image() {
    }

    public Image(String ID_ANH, String LINK_ANH, String ID_SANPHAM) {
        this.ID_ANH = ID_ANH;
        this.LINK_ANH = LINK_ANH;
        this.ID_SANPHAM = ID_SANPHAM;
    }

    public String getID_ANH() {
        return ID_ANH;
    }

    public void setID_ANH(String ID_ANH) {
        this.ID_ANH = ID_ANH;
    }

    public String getLINK_ANH() {
        return LINK_ANH;
    }

    public void setLINK_ANH(String LINK_ANH) {
        this.LINK_ANH = LINK_ANH;
    }

    public String getID_SANPHAM() {
        return ID_SANPHAM;
    }

    public void setID_SANPHAM(String ID_SANPHAM) {
        this.ID_SANPHAM = ID_SANPHAM;
    }
}
