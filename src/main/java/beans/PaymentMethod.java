package beans;

import java.io.Serializable;

public class PaymentMethod implements Serializable {
    private String mapttt;
    private String tenpttt;
    private String createdAt;

    public PaymentMethod() {
    }

    public PaymentMethod(String mapttt, String tenpttt) {
        this.mapttt = mapttt;
        this.tenpttt = tenpttt;
    }

    public String getMapttt() {
        return mapttt;
    }

    public void setMapttt(String mapttt) {
        this.mapttt = mapttt;
    }

    public String getTenpttt() {
        return tenpttt;
    }

    public void setTenpttt(String tenpttt) {
        this.tenpttt = tenpttt;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}
