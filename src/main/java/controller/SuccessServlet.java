package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SuccessServlet", value = "/success")
public class SuccessServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String registeredSuccess = request.getParameter("registeredSuccess");
        String activeSuccess = request.getParameter("activeSuccess");
        String sentCode = request.getParameter("code");
        String resetSuccess = request.getParameter("reset");

        if (registeredSuccess != null && registeredSuccess.equals("registered")) {
            request.setAttribute("registerSuccess", true);
            request.getRequestDispatcher("success.jsp").forward(request, response);
        }
        if (activeSuccess != null && activeSuccess.equals("activated")) {
            request.setAttribute("activeSuccess", true);
            request.getRequestDispatcher("success.jsp").forward(request, response);
        }
        if (sentCode != null && sentCode.equals("sent")) {
            request.setAttribute("sentRecoveryCode", true);
            request.getRequestDispatcher("success.jsp").forward(request, response);
        }
        if (resetSuccess != null && resetSuccess.equals("resetSuccess")) {
            request.setAttribute("resetSuccess", true);
            request.getRequestDispatcher("success.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
