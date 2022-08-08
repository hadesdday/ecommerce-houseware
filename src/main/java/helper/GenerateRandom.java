package helper;

import java.util.Random;

public class GenerateRandom {
    public static String getString(int length) {
        String re = "";
        String alphabet = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
        for (int i = 0; i < length; i++) {
            re += alphabet.charAt(getNumberInRange(0, alphabet.length()));
        }
        return re;
    }

    public static int getNumberInRange(int min, int max) {
        Random random = new Random();
        return random.nextInt(max - min) + min;
    }
}
