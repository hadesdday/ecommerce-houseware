package controller.admin.user;

import beans.User;
import properties.AssetsProperties;
import services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "AddUser", value = "/user/add")
public class AddUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String role = request.getParameter("role");

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
        String emailError = "";
        String phoneError = "";

        boolean isErr = false;

        if (username.length() < 1) {
            usernameError = "Vui lòng nhập username";
            isErr = true;
        } else if (!(usernameMatched.find() || usernameEmailMatched.find())) {
            usernameError = "Username không hợp lệ";
            isErr = true;
        } else {
            isErr = false;
        }

        if (password.length() < 1 || !passwordMatched.find()) {
            passwordError = "Mật khẩu tối thiểu phải có 8 ký tự bao gồm ít nhất một chữ in hoa , một ký tự đặc biệt và một số";
            isErr = true;
        } else {
            isErr = false;
        }

        if (email.length() < 1) {
            emailError = "Vui lòng nhập email";
            isErr = true;
        } else if (!emailMatched.find()) {
            emailError = "Email không đúng định dạng";
            isErr = true;
        } else {
            emailError = "";
            isErr = false;
        }

        if (phone.length() > 1) {
            if (!phoneMatched.find()) {
                phoneError = "Số điện thoại không hợp lệ";
                isErr = true;
            } else {
                phoneError = "";
                isErr = false;
            }
        }

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            User u = new User(username, password, fullname, email, phone, address, "", role);
            boolean isExistedUsername = UserServices.getInstance().isExistedUsername(username);
            boolean isExistedEmail = UserServices.getInstance().isExistedEmail(email);

            if (isExistedEmail || isExistedUsername) {
                response.sendError(HttpServletResponse.SC_CONFLICT);
            } else {
                if (UserServices.getInstance().add(u)) {
                    response.sendRedirect(AssetsProperties.getBaseURL("admin/user"));
                } else {
                    response.sendError(HttpServletResponse.SC_CONFLICT);
                }
            }
        }
    }
}
