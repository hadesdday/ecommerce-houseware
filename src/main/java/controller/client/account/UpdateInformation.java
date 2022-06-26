package controller.client.account;

import beans.Customer;
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

@WebServlet(name = "UpdateInformation", value = "/updateInformation")
public class UpdateInformation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String phone = request.getParameter("phoneNumber");
        String fullname = request.getParameter("fullName");
        String address = request.getParameter("address");

        Pattern emailPattern = Pattern.compile("^([_a-zA-Z0-9-]+(\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*(\\.[a-zA-Z]{1,6}))?$");
        Matcher emailMatched = emailPattern.matcher(email);

        Pattern phonePattern = Pattern.compile("(84|0[3|5|7|8|9])+([0-9]{8})\\b");
        Matcher phoneMatched = phonePattern.matcher(phone);

        String emailError = "";
        String phoneError = "";
        boolean emailErr = false;
        boolean phoneErr = false;

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

        if (phone.length() > 0) {
            if (!phoneMatched.find()) {
                phoneError = "Số điện thoại không hợp lệ";
                phoneErr = true;
            } else {
                phoneError = "";
                phoneErr = false;
            }
        }

        if (emailErr || phoneErr) {
            request.setAttribute("emailErr", emailError);
            request.setAttribute("phoneErr", phoneError);
            request.getRequestDispatcher("my-account.jsp").forward(request, response);
            response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
        } else {
            Customer c = new Customer(fullname, address, phone, email);
            boolean updated = UserServices.getInstance().updateInformation(c);
            if (updated) {
                HttpSession session = request.getSession();
                session.setAttribute("customer", c);
                request.setAttribute("updateInforSuccess", "Cập nhật thành công");
                request.getRequestDispatcher("my-account.jsp").forward(request, response);
            } else {
                request.setAttribute("updateInforErr", "Cập nhật thất bại");
                request.getRequestDispatcher("my-account.jsp").forward(request, response);
                response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
            }
        }
    }
}
