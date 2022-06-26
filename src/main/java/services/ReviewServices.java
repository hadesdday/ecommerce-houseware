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

    public Review getReview(int id) {
        return ReviewDAO.getInstance().getReview(id);
    }

    public List<Review> getReviewByUsername(String username) {
        return ReviewDAO.getInstance().getReviewByUsername(username);
    }

    public boolean addReview(Review r) {
        return ReviewDAO.getInstance().addReview(r);
    }

    public boolean deleteReview(int id) {
        return ReviewDAO.getInstance().deleteReview(id);
    }

    public boolean editReview(Review r) {
        return ReviewDAO.getInstance().editReview(r);
    }

    public List<Review> getReviewByPid(String pid) {
        return ReviewDAO.getInstance().getReviewByPid(pid);
    }

    public List<Review> getReviewByPidWithLimit(String pid, int index, int amount) {
        return ReviewDAO.getInstance().getReviewByPidWithLimit(pid, index, amount);
    }
}
