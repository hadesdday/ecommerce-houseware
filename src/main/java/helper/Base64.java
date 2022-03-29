package helper;

import jakarta.xml.bind.DatatypeConverter;

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
        ImageIO.write(bImage, "png", baos);
        baos.flush();
        byte[] imageInByteArray = baos.toByteArray();
        baos.close();
        String base64 = DatatypeConverter.printBase64Binary(imageInByteArray);
        return base64;
    }
}
