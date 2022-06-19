package controller.admin.user;

import beans.Order;
import beans.User;
import com.google.gson.Gson;
import properties.AssetsProperties;
import services.OrderServices;
import services.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "EditUser", value = "/user/edit")
public class EditUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        User u = UserServices.getInstance().getUser(username);
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        if (u != null) {
            response.setContentType("application/json");
            writer.write(gson.toJson(u));
            writer.close();
            request.getRequestDispatcher("/admin/user").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            response.setContentType("application/json");
            writer.write("User không tồn tại");
            writer.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String role = request.getParameter("role");
        int active = Integer.parseInt(request.getParameter("active"));

        Pattern usernamePattern = Pattern.compile("^[a-zA-Z0-9]([._-](?![._-])|[a-zA-Z0-9]){3,18}[a-zA-Z0-9]$");
        Matcher usernameMatched = usernamePattern.matcher(username);

        Pattern emailPattern = Pattern.compile("^([_a-zA-Z0-9-]+(\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*(\\.[a-zA-Z]{1,6}))?$");
        Matcher usernameEmailMatched = emailPattern.matcher(username);
        Matcher emailMatched = emailPattern.matcher(email);

        String usernameError = "";
        String emailError = "";

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

        if (isErr) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        } else {
            User u = new User();
            u.setEmail(email);
            u.setRole(role);
            u.setActive(active);
            u.setUsername(username);

            if (UserServices.getInstance().editUser(u)) {
                response.sendRedirect(AssetsProperties.getBaseURL("admin/user"));
            } else {
                response.sendError(HttpServletResponse.SC_CONFLICT);
            }
        }
    }
}

