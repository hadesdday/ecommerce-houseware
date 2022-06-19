package controller.client.authentication;

import properties.AssetsProperties;
import services.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ActiveAccount", value = "/activeAccount")
public class ActiveAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String token = request.getParameter("token");

        boolean valid = UserServices.getInstance().checkToken(email, token);

        if (valid) {
            boolean activated = UserServices.getInstance().active(email, token);
            if (activated) {
                response.sendRedirect(AssetsProperties.getBaseURL("success?activeSuccess=activated"));
            }
        } else {
            response.sendRedirect(AssetsProperties.getBaseURL());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
