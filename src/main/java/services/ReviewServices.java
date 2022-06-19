package services;

import beans.Review;
import dao.ReviewDAO;

import java.util.List;

public class ReviewServices {
    private static ReviewServices instance;

    public static ReviewServices getInstance() {
        if (instance == null) {
            instance = new ReviewServices();
        }
        return instance;
    }

    public List<Review> getReview() {
        return ReviewDAO.getInstance().getReview();
    }

    public Review getReview(String pid, int rating, String username) {
        return ReviewDAO.getInstance().getReview(pid, rating, username);
    }

    public List<Review> getReviewByUsername(String username) {
        return ReviewDAO.getInstance().getReviewByUsername(username);
    }

    public boolean addReview(Review r) {
        return ReviewDAO.getInstance().addReview(r);
    }

    public boolean deleteReview(String pid, int rating, String username) {
        return ReviewDAO.getInstance().deleteReview(pid, rating, username);
    }

    public boolean editReview(Review r) {
        return ReviewDAO.getInstance().editReview(r);
    }

    public List<Review> getReviewByPid(String pid) {
        return ReviewDAO.getInstance().getReviewByPid(pid);
    }
}
