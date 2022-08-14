package beans;

import java.io.Serializable;

public class StoreInformationBean implements Serializable {
    private String diachi;
    private String sdt;
    private String email;

    public StoreInformationBean() {
    }

    public StoreInformationBean(String diachi, String sdt, String email) {
        this.diachi = diachi;
        this.sdt = sdt;
        this.email = email;
    }

    public String setDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
