package controller.client.authentication;

import beans.Customer;
import beans.EmailMessage;
import beans.User;
import helper.GenerateEmail;
import helper.GenerateToken;
import org.omg.CORBA.portable.ApplicationException;
import properties.AssetsProperties;
import services.EmailServices;
import services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        String rePassword = request.getParameter("confirmPassword");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        boolean isExistedUsername = UserServices.getInstance().isExistedUsername(username);
        boolean isExistedEmail = UserServices.getInstance().isExistedEmail(email);

        Customer c = new Customer(fullname, address, phone, email);

        if (!password.equals(rePassword)) {
            response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
        }

        if (username.isEmpty() ||
                password.isEmpty() ||
                fullname.isEmpty() ||
                rePassword.isEmpty() ||
                email.isEmpty() ||
                phone.isEmpty() ||
                address.isEmpty()) {
            response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
        } else {
            if (isExistedEmail || isExistedUsername) {
                response.sendError(HttpServletResponse.SC_CONFLICT);
            } else {
                int newCustomerId = UserServices.getInstance().addCustomer(c);

                if (newCustomerId == -1) {
                    response.sendError(HttpServletResponse.SC_NOT_FOUND);
                }

                User user = new User(username, newCustomerId, email, 1, "user");
                user.setPassword(password);

                if (UserServices.getInstance().register(user)) {
                    String token = GenerateToken.get(11);
                    UserServices.getInstance().setToken(email, token);
                    String url = AssetsProperties.getBaseURL() + "activeAccount?email=" + email + "&token=" + token;
                    EmailMessage emailbean = new EmailMessage();
                    emailbean.setTo(email);
                    emailbean.setSubject("Kích hoạt tài khoản HouseWareNLU");
                    emailbean.setMessage(GenerateEmail.getActiveEmail(url));
                    try {
                        EmailServices.sendMail(emailbean);
                    } catch (ApplicationException e) {
                        e.printStackTrace();
                    }
                    request.setAttribute("registerSuccess", true);
                    request.getRequestDispatcher("success.jsp").forward(request, response);
                }
            }
        }
    }
}
