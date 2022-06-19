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

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
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
//
//        User user = UserServices.getInstance().login(username, password);
//        if (user != null) {
//            HttpSession session = request.getSession();
//            User sessionUser = new User();
//
//            sessionUser.setUsername(user.getUsername());
//            sessionUser.setFullname(user.getFullname());
//            sessionUser.setEmail(user.getEmail());
//            sessionUser.setPhone(user.getPhone());
//            sessionUser.setRole(user.getRole());
//            sessionUser.setAddress(user.getAddress());
//
//            session.setAttribute("user", sessionUser);
//            session.setAttribute("authenticated", 1);
//            response.sendRedirect(AssetsProperties.getBaseURL());
//        } else {
//            request.setAttribute("error", "Tài khoản không tồn tại");
//            request.getRequestDispatcher("login.jsp").forward(request, response);
//        }
    }
}
