package controller.client.authentication;

import services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ForgotPasswordController", value = "/forgotPassword")
public class ForgotPasswordController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String token = request.getParameter("token");

        if (UserServices.getInstance().checkToken(email, token)) {
            HttpSession session = request.getSession();
            session.setAttribute("email", email);
            session.setAttribute("token", token);
            session.setAttribute("authenticated", 1);
            response.sendRedirect("change-password.jsp");
        } else {
            if (UserServices.getInstance().forgotPassword(email)) {
                request.setAttribute("email", email);
                request.setAttribute("tokenSent", "Mã xác minh đã được gửi đến địa chỉ email");
                request.getRequestDispatcher("success.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Tài khoản không tồn tại");
                request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
            }
        }
    }
}
