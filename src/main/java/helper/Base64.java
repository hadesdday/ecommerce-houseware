package helper;

import jakarta.xml.bind.DatatypeConverter;
import services.ProductServices;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

public class Base64 {
    public static String get(String url) throws IOException {
        File f = new File(url);

        BufferedImage bImage = ImageIO.read(f);
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write(bImage, getFileExtension(f), baos);
        baos.flush();
        byte[] imageInByteArray = baos.toByteArray();
        baos.close();
        String base64 = DatatypeConverter.printBase64Binary(imageInByteArray);
        return base64;
    }

    private static String getFileExtension(File file) {
        String fileName = file.getName();
        if (fileName.lastIndexOf(".") != -1 && fileName.lastIndexOf(".") != 0)
            return fileName.substring(fileName.lastIndexOf(".") + 1);
        else return "";
    }
}
