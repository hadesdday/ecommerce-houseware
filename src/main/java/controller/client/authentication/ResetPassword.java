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

@WebServlet(name = "ResetPassword", value = "/resetPassword")
public class ResetPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User userAuthenticated = new User();
        if (session.getAttribute("user") != null)
            userAuthenticated = (User) session.getAttribute("user");
        String emailUserLogged = userAuthenticated.getEmail();
        String email = (String) session.getAttribute("recoveryEmail");
        String token = (String) session.getAttribute("recoveryToken");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!newPassword.equals(confirmPassword)) {
            response.sendError(HttpServletResponse.SC_CONFLICT);
        } else {
            if ((int) session.getAttribute("authenticated") == 1 && emailUserLogged != null) {
                if (UserServices.getInstance().changePassword(emailUserLogged, newPassword)) {
                    response.sendRedirect(AssetsProperties.getBaseURL());
                }
            } else {
                boolean resetSuccess = UserServices.getInstance().resetPassword(email, newPassword, token);
                if (resetSuccess) {
                    response.sendRedirect(AssetsProperties.getBaseURL("success?reset=resetSuccess"));
                    session.invalidate();
                }
            }
        }
    }
}
