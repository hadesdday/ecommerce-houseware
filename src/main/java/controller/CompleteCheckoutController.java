package controller;

import beans.Cart;
import beans.EmailMessage;
import beans.Product;
import beans.User;
import org.omg.CORBA.portable.ApplicationException;
import properties.AssetsProperties;
import services.CheckoutService;
import services.EmailServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.regex.Pattern;

@WebServlet(name = "CompleteCheckoutController", value = "/CompleteCheckout")
public class CompleteCheckoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String error1 = (String) request.getAttribute("fullnameErrorMsg");
        String error2 = (String) request.getAttribute("addressErrorMsg");
        String error3 = (String) request.getAttribute("emailErrorMsg");
        String error4 = (String) request.getAttribute("phoneErrorMsg");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String form = request.getParameter("fieldHidden");

//        if (form.equals("formOne")) {
        //process create logic for form 1
        HttpSession session = request.getSession();
        String fullname = request.getParameter("fullname");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String trigia = request.getParameter("price");
        String pttt = request.getParameter("payment");
//            String maGG = request.getParameter("maGG");

        System.out.println("pttt:" + pttt);
        Boolean fullnameError = false;
        Boolean addressError = false;
        Boolean emailError = false;
        Boolean phoneError = false;
        Boolean ptttError = false;
        String fullnameErrorMsg = "";
        String addressErrorMsg = "";
        String emailErrorMsg = "";
        String phoneErrorMsg = "";
        if (fullname.length() < 1) {
            fullnameError = true;
//                fullnameErrorMsg = "vui lòng nhập họ và tên";
        }

        if (address.length() < 1) {
            addressError = true;
//                addressErrorMsg = "vui lòng nhập địa chỉ nhà";
        }
        String emailPattern = "^[a-zA-Z][\\w-]+@([\\w]+\\.[\\w]+|[\\w]+\\.[\\w]{2,}\\.[\\w]{2,})$";
        if (email.length() < 1 || !Pattern.matches(emailPattern, email)) {
            emailError = true;
//                emailErrorMsg = "vui lòng nhập đúng cú pháp email";
        }
        String phonePattern = "^(0?)(3[2-9]|5[6|8|9]|7[0|6-9]|8[0-6|8|9]|9[0-4|6-9])[0-9]{7}$";
        if (phone.length() < 1 || !Pattern.matches(phonePattern, phone)) {
            phoneError = true;
//                phoneErrorMsg = "vui lòng nhập đúng số điện thoại";
        }
        if (pttt == null) {
            ptttError = true;
        }
        Cart cart = (Cart) session.getAttribute("cart");
        System.out.println("cart:" + cart.getProducts().size());
//            request.setAttribute("fullnameErrorMsg", fullnameErrorMsg);
//            request.setAttribute("addressErrorMsg", addressErrorMsg);
//            request.setAttribute("emailErrorMsg", addressErrorMsg);
//            request.setAttribute("phoneErrorMsg", phoneErrorMsg);
        if (cart == null || cart.getProducts().size() < 1) {
            response.sendError(HttpServletResponse.SC_CONFLICT);
        } else if (fullnameError || addressError || addressError || phoneError || ptttError) {
            System.out.println("errorrrrrrr!!!!!!!");
            response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
//                response.sendRedirect("Checkout");
//                request.getRequestDispatcher("Checkout.jsp").forward(request,response);
        } else {
//                session.setAttribute("authenticated", 0);
            int authenticated = session.getAttribute("authenticated") == null ? 0 : (int) session.getAttribute("authenticated");

            if (authenticated == 1) {
                User user = (User) session.getAttribute("user");
                CheckoutService.getInstance().checkBill(1, user.getId_khachhang(), fullname, email, phone, address, pttt, session.getAttribute("discountCode") == null ? "" : (String) session.getAttribute("discountCode"), Double.parseDouble(trigia), cart);
            } else {
                CheckoutService.getInstance().checkBill(0, 0, fullname, email, phone, address, pttt, session.getAttribute("discountCode") == null ? "" : (String) session.getAttribute("discountCode"), Double.parseDouble(trigia), cart);
            }
            System.out.println("not errorrrrrrr!!!!!!!");


            session.setAttribute("cart", cart);
            EmailMessage emailbean = new EmailMessage();
            emailbean.setTo(email);
            emailbean.setSubject("Hóa đơn HouseWareNLU");
            emailbean.setMessage("Chào bạn vừa thanh toán thành công hóa đơn tại HouseWareNLU. \n" + billCode(fullname, email, phone, address, cart, pttt)

            );
            try {
                EmailServices.sendMail(emailbean);
            } catch (ApplicationException e) {
                e.printStackTrace();
            }
            response.sendRedirect("success-checkout.jsp");
            cart = null;
            session.setAttribute("discountCode", null);
        }
//        }
    }

    public String billCode(String name, String email, String phone, String address, Cart cart, String payment) {
        String s = "<div class=\"invoice-box\"><table><tr class=\"top\"><td colspan=\"1\"><table><tr><td class=\"title\"><img src=\"./images/logo.png\" alt=\"Company logo\" style=\"width: 100%; max-width: 300px\" /></td></tr></table></td></tr><tr class=\"information\">" +
                "<td colspan=\"1\"><table><tr>" + name + "<br />" + email + "<br />" + phone + "<br/>" + address + "</tr></table></td></tr><tr class=\"heading\"><td>Payment Method</td></tr><tr class=\"details\"><td>" + payment + "</td></tr><tr class=\"heading\"><td>Item</td><td>Price</td></tr>";
        for (Product p : cart.getProducts()) {
            s += "<tr class=\"item\"><td>" + p.getTen_sp() + "</td><td>" + p.total() + "VND</td></tr>";
        }
        s += "<tr class=\"total\"><td></td><td>Total: " + cart.total() + "VND</td></tr></table></div>";
        return s;
    }
}
