package controller.admin.user;

import beans.User;
import com.google.gson.Gson;
import services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ShowUser", value = "/admin/user")
public class ShowUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users = UserServices.getInstance().getUsers();
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();
        response.setContentType("application/json");
        writer.write(gson.toJson(users));
        writer.close();
        request.getRequestDispatcher("user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
