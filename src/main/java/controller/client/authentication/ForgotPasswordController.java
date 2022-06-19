package controller.client.authentication;

import beans.EmailMessage;
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
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ForgotPasswordController", value = "/forgotPassword")
public class ForgotPasswordController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String token = request.getParameter("token");

        boolean isValidToken = UserServices.getInstance().checkToken(email, token);
        if (isValidToken) {
            HttpSession session = request.getSession();
            session.setAttribute("authenticated", 1);
            session.setAttribute("recoveryEmail", email);
            session.setAttribute("recoveryToken", token);
            request.getRequestDispatcher("change-password.jsp").forward(request, response);
        } else {
            response.sendRedirect(AssetsProperties.getBaseURL());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("username");

        String emailFromDb = UserServices.getInstance().getEmail(email);

        if (emailFromDb != null) {
            String token = GenerateToken.get(11);
            if (UserServices.getInstance().forgotPassword(emailFromDb, token)) {
                String resetUrl = AssetsProperties.getBaseURL() + "forgotPassword?email=" + emailFromDb + "&token=" + token;
                EmailMessage emailbean = new EmailMessage();
                emailbean.setTo(emailFromDb);
                emailbean.setSubject("Thiết lập lại mật khẩu đăng nhập HouseWareNLU");
                emailbean.setMessage("Chào bạn\n" + "Chúng tôi có nhận được yêu cầu thiết lập lại mật khẩu cho tài khoản của bạn."
                        + "\n" + "Nhấn đường link này[" + resetUrl + "] để thiết lập mật khẩu mới cho tài khoản của bạn.\n" +
                        "Hoặc vui lòng copy và dán đường dẫn bên dưới lên trình duyệt:[" + resetUrl + "]\n"
                        + "Nếu bạn không yêu cầu thiết lập lại mật khẩu, vui lòng liên hệ Bộ phận chăm sóc khách hàng của chúng tôi.\n" +
                        "Trân trọng,\n" + "Đội ngũ NLU"
                );
                try {
                    EmailServices.sendMail(emailbean);
                } catch (ApplicationException e) {
                    e.printStackTrace();
                }
                response.sendRedirect(AssetsProperties.getBaseURL("success?code=sent"));
            } else {
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
