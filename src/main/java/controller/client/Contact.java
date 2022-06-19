package controller.client;

import beans.EmailMessage;
import org.omg.CORBA.portable.ApplicationException;
import properties.AssetsProperties;
import services.EmailServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "Contact", value = "/Contact")
public class Contact extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        String content = request.getParameter("content");

        EmailMessage emailbean = new EmailMessage();
        emailbean.setTo("devwebchichoo@gmail.com");
        emailbean.setSubject("Tin nhắn mới từ khách hàng");
        emailbean.setMessage("Một khách hàng đã gửi tin nhắn đến cửa hàng\n"
                + "Thông tin tin nhắn : \n" +
                "- Họ và Tên : " + fullname + "\n" +
                "- Số điện thoại : " + phone + "\n" +
                "- Nội dung : " + content + "\n" +
                "- Ngày giờ : " + new Date()
        );
        try {
            EmailServices.sendMail(emailbean);
        } catch (ApplicationException e) {
            e.printStackTrace();
        }
    }
}
