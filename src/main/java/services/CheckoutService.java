package services;

import beans.Bill;
import beans.KhachHang;
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


    public Bill checkBill(int authenticated, String idkhachhang, String fullName, String email, String phoneNumber, String address, String ptThanhToan, String maGG, double triGia){
        return  CheckoutDao.getInstance().checkBill(authenticated,idkhachhang,fullName,email,phoneNumber,address,ptThanhToan,maGG,triGia);
    }

    public KhachHang signinedCustomer(String idkhachhang){
        return  CheckoutDao.getInstance().signinedCustomer(idkhachhang);
    }
}
