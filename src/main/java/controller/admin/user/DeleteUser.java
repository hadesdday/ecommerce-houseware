package controller.admin.user;

import properties.AssetsProperties;
import services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteUser", value = "/user/delete")
public class DeleteUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        boolean isDelete = UserServices.getInstance().deleteUser(username);
        if (isDelete) {
            response.sendRedirect(AssetsProperties.getBaseURL("admin/user"));
        } else {
            response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
        }
    }
}
