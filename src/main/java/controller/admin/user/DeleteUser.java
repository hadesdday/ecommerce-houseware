package controller.admin.user;

import properties.AssetsProperties;
import services.OrderServices;
import services.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
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
