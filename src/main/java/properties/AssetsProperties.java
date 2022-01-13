package properties;

import java.io.IOException;
import java.util.Properties;

public class AssetsProperties {
    private static Properties prop = new Properties();

    static {
        try {
            prop.load(AssetsProperties.class.getClassLoader().getResourceAsStream("assets.properties"));
        } catch (IOException ioException) {
            ioException.printStackTrace();
        }
    }

    public static String getBaseURL() {
        return prop.get("BASE_URL").toString();
    }

    public static String getBaseURL(String name) {
        return prop.get("BASE_URL").toString() + name;
    }

}
