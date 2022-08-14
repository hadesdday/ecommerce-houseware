package controller.client;

import beans.EmailMessage;
import helper.GenerateEmail;
import org.omg.CORBA.portable.ApplicationException;
import services.EmailServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
        String ip = request.getParameter("ip");
        String city = request.getParameter("city");

        EmailMessage emailbean = new EmailMessage();
        emailbean.setTo("devwebchichoo@gmail.com");
        emailbean.setSubject("Tin nhắn mới từ khách hàng");
        emailbean.setMessage(GenerateEmail.getContactEmail(fullname, phone, content, ip, city, new Date().toString()));
        try {
            EmailServices.sendMail(emailbean);
        } catch (ApplicationException e) {
            e.printStackTrace();
        }
    }
}
