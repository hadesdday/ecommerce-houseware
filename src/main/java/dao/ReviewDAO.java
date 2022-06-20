package dao;

import beans.Review;
import beans.Sale;
import db.DbConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ReviewDAO {
    private static ReviewDAO instance;

    private ReviewDAO() {
    }

    public static ReviewDAO getInstance() {
        if (instance == null) {
            instance = new ReviewDAO();
        }
        return instance;
    }

    public List<Review> getReview() {
        try {
            List<Review> list = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from review").mapToBean(Review.class).stream().collect(Collectors.toList())
            );
            return list;
        } catch (Exception e) {
            return null;
        }
    }

    public List<Review> getReviewByPid(String pid) {
        try {
            List<Review> list = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from review where id_sanpham = ?")
                            .bind(0, pid)
                            .mapToBean(Review.class).stream().collect(Collectors.toList())
            );
            return list;
        } catch (Exception e) {
            return null;
        }
    }

    public List<Review> getReviewByPidWithLimit(String pid, int index, int amount) {
        try {
            List<Review> list = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from review where id_sanpham = ? limit ?,?")
                            .bind(0, pid)
                            .bind(1, index)
                            .bind(2, amount)
                            .mapToBean(Review.class).stream().collect(Collectors.toList())
            );
            return list;
        } catch (Exception e) {
            return null;
        }
    }

    public Review getReview(String pid, int rating, String username) {
        try {
            List<Review> list = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from review where id_sanpham = ? and rating = ? and username = ?")
                            .bind(0, pid)
                            .bind(1, rating)
                            .bind(2, username)
                            .mapToBean(Review.class).stream().collect(Collectors.toList())
            );
            return list.get(0);
        } catch (Exception e) {
            return null;
        }
    }

    public List<Review> getReviewByUsername(String username) {
        try {
            List<Review> list = DbConnector.get().withHandle(h ->
                    h.createQuery("select * from review where username = ?")
                            .bind(0, username)
                            .mapToBean(Review.class).stream().collect(Collectors.toList())
            );
            return list;
        } catch (Exception e) {
            return null;
        }
    }

    public boolean addReview(Review r) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("insert into review(id_sanpham, username, rating, content) values(?,?,?,?)")
                            .bind(0, r.getId_sanpham())
                            .bind(1, r.getUsername())
                            .bind(2, r.getRating())
                            .bind(3, r.getContent())
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean deleteReview(String pid, int rating, String username) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("delete from review where id_sanpham = ? and rating = ? and username = ?")
                            .bind(0, pid)
                            .bind(1, rating)
                            .bind(2, username)
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean editReview(Review r) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("update review set content = ?,rating = ? where id_sanpham = ? and rating = ? and username = ?")
                            .bind(0, r.getContent())
                            .bind(1, r.getRating())
                            .bind(2, r.getId_sanpham())
                            .bind(3, r.getRating())
                            .bind(4, r.getUsername())
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }
}
