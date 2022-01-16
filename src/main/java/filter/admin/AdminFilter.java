package filter.admin;

import beans.User;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AdminFilter")
public class AdminFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpSession session = ((HttpServletRequest) request).getSession();
        User sessionUser = (User) session.getAttribute("user");
        if (sessionUser == null || sessionUser.getRole() == null || !sessionUser.getRole().equals("admin")) {
            ((HttpServletResponse) response).sendRedirect("/houseware_nlu_war_exploded/index.jsp");
            return;
        }
        chain.doFilter(request, response);
    }
}
