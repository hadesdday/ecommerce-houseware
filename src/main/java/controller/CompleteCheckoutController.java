package controller;

import beans.Cart;
import beans.User;
import services.CheckoutService;

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
        System.out.println("cart:"+cart.getProducts().size());
//            request.setAttribute("fullnameErrorMsg", fullnameErrorMsg);
//            request.setAttribute("addressErrorMsg", addressErrorMsg);
//            request.setAttribute("emailErrorMsg", addressErrorMsg);
//            request.setAttribute("phoneErrorMsg", phoneErrorMsg);
        if(cart==null||cart.getProducts().size()<1){
            response.sendError(HttpServletResponse.SC_CONFLICT);
        }
        else if (fullnameError || addressError || addressError || phoneError||ptttError) {
            System.out.println("errorrrrrrr!!!!!!!");
            response.sendError(HttpServletResponse.SC_NOT_ACCEPTABLE);
//                response.sendRedirect("Checkout");
//                request.getRequestDispatcher("Checkout.jsp").forward(request,response);
        } else {

//                session.setAttribute("authenticated", 0);
            int authenticated = session.getAttribute("authenticated") == null ? 0 : (int) session.getAttribute("authenticated");

            if (authenticated == 1) {
                User user = (User) session.getAttribute("user");
                CheckoutService.getInstance().checkBill(1, user.getId_khachhang(), fullname, email, phone, address, pttt, "", Double.parseDouble(trigia), cart);
            } else {
                CheckoutService.getInstance().checkBill(0, 0, fullname, email, phone, address, pttt, "", Double.parseDouble(trigia), cart);
            }
            System.out.println("not errorrrrrrr!!!!!!!");
            response.sendRedirect("success-checkout.jsp");
            cart = null;
            session.setAttribute("cart", cart);
        }
//        }
    }
}
