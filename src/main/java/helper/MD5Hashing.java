package helper;

import java.math.BigInteger;
import java.security.MessageDigest;

public class MD5Hashing {
    public static String get(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("md5");
            md.update(input.getBytes());
            byte byteData[] = md.digest();
            BigInteger number = new BigInteger(1, byteData);
            return number.toString(16);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
