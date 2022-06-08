package beans;

import java.io.Serializable;

public class Review implements Serializable {

    private String id_sanpham;
    private String username;
    private int rating;
    private String content;

    public Review() {
    }

    public Review(String id_sanpham, String username, int rating, String content) {
        this.id_sanpham = id_sanpham;
        this.username = username;
        this.rating = rating;
        this.content = content;
    }

    public String getId_sanpham() {
        return id_sanpham;
    }

    public void setId_sanpham(String id_sanpham) {
        this.id_sanpham = id_sanpham;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
