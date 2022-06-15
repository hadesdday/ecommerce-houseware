package beans;

import java.io.Serializable;

public class Sale implements Serializable {
    private String id_km;
    private double rate;
    private int active;

    public Sale() {
    }

    public Sale(String id_km, double rate, int active) {
        this.id_km = id_km;
        this.rate = rate;
        this.active = active;
    }

    public String getId_km() {
        return id_km;
    }

    public void setId_km(String id_km) {
        this.id_km = id_km;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }
}
