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
        String email = request.getParameter("email");
        String role = request.getParameter("role");
        int cid = Integer.parseInt(request.getParameter("cid"));
        int active = Integer.parseInt(request.getParameter("active"));

        Pattern usernamePattern = Pattern.compile("^[a-zA-Z0-9]([._-](?![._-])|[a-zA-Z0-9]){3,18}[a-zA-Z0-9]$");
        Matcher usernameMatched = usernamePattern.matcher(username);

        Pattern passwordPattern = Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$");
        Matcher passwordMatched = passwordPattern.matcher(password);

        Pattern emailPattern = Pattern.compile("^([_a-zA-Z0-9-]+(\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*(\\.[a-zA-Z]{1,6}))?$");
        Matcher usernameEmailMatched = emailPattern.matcher(username);
        Matcher emailMatched = emailPattern.matcher(email);

        boolean isErr = false;

        if (username.length() < 1) {
            isErr = true;
        } else if (!(usernameMatched.find() || usernameEmailMatched.find())) {
            isErr = true;
        } else {
            isErr = false;
        }

        if (password.length() < 1 || !passwordMatched.find()) {
            isErr = true;
        } else {
            isErr = false;
        }

        if (email.length() < 1) {
            isErr = true;
        } else if (!emailMatched.find()) {
            isErr = true;
        } else {
            isErr = false;
        }

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            User u = new User(username, cid, email, active, role);
            u.setPassword(password);
            boolean isExistedUsername = UserServices.getInstance().isExistedUsername(username);
            boolean isExistedEmail = UserServices.getInstance().isExistedEmail(email);

            if (isExistedEmail || isExistedUsername) {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            } else {
                if (UserServices.getInstance().register(u)) {
                    response.sendRedirect(AssetsProperties.getBaseURL("admin/user"));
                } else {
                    response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
                }
            }
        }
    }
}
