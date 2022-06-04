package controller.client.authentication;

import beans.User;
import properties.AssetsProperties;
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

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Cache-Control", "private, no-store, no-cache, must-revalidate");
        response.setHeader("Pragma", "no-cache");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        String rePassword = request.getParameter("confirmPassword");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        Pattern usernamePattern = Pattern.compile("^[a-zA-Z0-9]([._-](?![._-])|[a-zA-Z0-9]){3,18}[a-zA-Z0-9]$");
        Matcher usernameMatched = usernamePattern.matcher(username);

        Pattern passwordPattern = Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$");
        Matcher passwordMatched = passwordPattern.matcher(password);

        Pattern emailPattern = Pattern.compile("^([_a-zA-Z0-9-]+(\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*(\\.[a-zA-Z]{1,6}))?$");
        Matcher usernameEmailMatched = emailPattern.matcher(username);
        Matcher emailMatched = emailPattern.matcher(email);

        Pattern phonePattern = Pattern.compile("^[0-9][0-9]{0,9}$");
        Matcher phoneMatched = phonePattern.matcher(phone);

        String usernameError = "";
        String passwordError = "";
        String rePasswordErr = "";
        String emailError = "";
        String phoneError = "";

        boolean userErr = false;
        boolean passErr = false;
        boolean rePassErr = false;
        boolean emailErr = false;
        boolean phoneErr = false;

        if (username.length() < 1) {
            usernameError = "Vui lòng nhập username";
            userErr = true;
        } else if (!(usernameMatched.find() || usernameEmailMatched.find())) {
            usernameError = "Username không hợp lệ";
            userErr = true;
        } else {
            userErr = false;
        }

        if (password.length() < 1 || !passwordMatched.find()) {
            passwordError = "Tối thiểu 8 ký tự bao gồm ít nhất một chữ in hoa , một ký tự đặc biệt và một số";
            passErr = true;
        } else {
            passErr = false;
        }

        if (rePassword.length() < 1) {
            rePasswordErr = "Vui lòng nhập lại mật khẩu";
            rePassErr = true;
        } else if (!rePassword.equals(password)) {
            rePasswordErr = "Mật khẩu không khớp";
            rePassErr = true;
        } else {
            rePasswordErr = "";
            rePassErr = false;
        }

        if (email.length() < 1) {
            emailError = "Vui lòng nhập email";
            emailErr = true;
        } else if (!emailMatched.find()) {
            emailError = "Email không đúng định dạng";
            emailErr = true;
        } else {
            emailError = "";
            emailErr = false;
        }

        if (phone.length() > 1) {
            if (!phoneMatched.find()) {
                phoneError = "Số điện thoại không hợp lệ";
                phoneErr = true;
            } else {
                phoneError = "";
                phoneErr = false;
            }
        }

        if (userErr || emailErr || phoneErr || rePassErr || passErr) {
            request.setAttribute("userError", usernameError);
            request.setAttribute("passError", passwordError);
            request.setAttribute("rePasswordErr", rePasswordErr);
            request.setAttribute("emailError", emailError);
            request.setAttribute("phoneError", phoneError);
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        } else {
            boolean isExistedUsername = UserServices.getInstance().isExistedUsername(username);
            boolean isExistedEmail = UserServices.getInstance().isExistedEmail(email);

            if (isExistedEmail || isExistedUsername) {
                request.setAttribute("existed", "Tài khoản đã tồn tại");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else {
                if (UserServices.getInstance().register(username, password, fullname, email, phone, address)) {
                    HttpSession session = request.getSession();
                    User user = new User();

                    user.setUsername(username);
                    user.setFullname(fullname);
                    user.setEmail(email);
                    user.setPhone(phone);
                    user.setAddress(address);

                    session.setAttribute("user", user);
                    response.sendRedirect(AssetsProperties.getBaseURL());
                }
            }
        }
    }
}
