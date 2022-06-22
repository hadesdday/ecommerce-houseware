package controller.client.authentication;

import beans.Customer;
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
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = UserServices.getInstance().checkUser(username, password);
        if (user != null) {
            if (user.getActive() == 2) {
                Customer c = UserServices.getInstance().getCustomer(String.valueOf(user.getId_khachhang()));
                HttpSession session = request.getSession();
                User sessionUser = new User();

                sessionUser.setUsername(user.getUsername());
                sessionUser.setEmail(user.getEmail());
                sessionUser.setRole(user.getRole());

                session.setAttribute("customer", c);
                session.setAttribute("user", sessionUser);
                session.setAttribute("authenticated", 1);
                response.sendRedirect(AssetsProperties.getBaseURL());
            } else if (user.getActive() == 1) {
                request.setAttribute("inactive", true);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else if (user.getActive() == 0) {
                request.setAttribute("banned", true);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("error", "Username hoặc mật khẩu đã nhập sai");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
