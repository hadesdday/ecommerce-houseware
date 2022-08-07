package services;

import beans.Bill;
import beans.Cart;
import beans.Customer;
import dao.CheckoutDao;

public class CheckoutService {
    private static CheckoutService instance;
    private CheckoutService(){

    }
    public static CheckoutService getInstance(){
        if(instance==null){
            instance=new CheckoutService();
        }
        return  instance;
    }


    public Bill checkBill(int authenticated, int idkhachhang, String fullName, String email, String phoneNumber, String address, String ptThanhToan, String maGG, double triGia, Cart cart){
        return  CheckoutDao.getInstance().checkBill(authenticated,idkhachhang,fullName,email,phoneNumber,address,ptThanhToan,maGG,triGia,cart);
    }
    public Customer signinedCustomer(int idkhachhang){
        return  CheckoutDao.getInstance().signinedCustomer(idkhachhang);
    }

}
