package filter.account;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "UpdateInformationFilter",urlPatterns = "/updateInformation")
public class UpdateInformationFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpSession session = ((HttpServletRequest) request).getSession();
        if ((session.getAttribute("authenticated") == null) || ((int) session.getAttribute("authenticated") != 1)) {
            ((HttpServletResponse) response).sendRedirect("login.jsp");
            return;
        }
        chain.doFilter(request, response);
    }
}
