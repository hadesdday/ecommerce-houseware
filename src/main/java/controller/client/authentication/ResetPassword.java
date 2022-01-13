package controller.client.authentication;

import beans.User;
import services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "ResetPassword", value = "/resetPassword")
public class ResetPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User userAuthenticated = new User();
        if (session.getAttribute("user") != null)
            userAuthenticated = (User) session.getAttribute("user");
        String emailUserLogged = userAuthenticated.getEmail();
        String email = (String) session.getAttribute("email");
        String token = (String) session.getAttribute("token");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        Pattern passwordPattern = Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$");
        Matcher passwordMatched = passwordPattern.matcher(newPassword);

        String newPasswordError = "";
        String confirmPasswordError = "";

        boolean newPasswordErr = false;
        boolean confirmPasswordErr = false;

        if (newPassword.length() < 1 || !passwordMatched.find()) {
            newPasswordError = "Tối thiểu 8 ký tự bao gồm ít nhất một chữ in hoa , một ký tự đặc biệt và một số";
            newPasswordErr = true;
        } else {
            newPasswordErr = false;
        }

        if (confirmPassword.length() < 1 || !confirmPassword.equals(newPassword)) {
            confirmPasswordError = "Mật khẩu không khớp";
            confirmPasswordErr = true;
        } else {
            confirmPasswordErr = false;
        }

        if (newPasswordErr || confirmPasswordErr) {
            request.setAttribute("newPassErr", newPasswordError);
            request.setAttribute("confirmPassErr", confirmPasswordError);
            request.getRequestDispatcher("change-password.jsp").forward(request, response);
        } else {
            if ((int) session.getAttribute("authenticated") == 1 && emailUserLogged != null) {
                if (UserServices.getInstance().changePassword(emailUserLogged, newPassword)) {
                    request.setAttribute("changeSuccess", "Đổi mật khẩu thành công");
                    request.getRequestDispatcher("change-password.jsp").forward(request, response);
                }
            } else {
                if (UserServices.getInstance().resetPassword(email, newPassword, token)) {
                    request.setAttribute("email", email);
                    request.setAttribute("resetSuccess", "Mật khẩu đã được đặt lại thành công");
                    request.getRequestDispatcher("success.jsp").forward(request, response);
                    session.invalidate();
                }
            }
        }
    }
}
