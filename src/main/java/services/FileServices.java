package services;

import beans.Image;
import dao.FileDAO;

import java.util.List;

public class FileServices {
    private static FileServices instance;

    public static FileServices getInstance() {
        if (instance == null) {
            instance = new FileServices();
        }
        return instance;
    }

    public List<Image> getImages() {
        return FileDAO.getInstance().getImages();
    }

    public boolean addImage(Image i) {
        return FileDAO.getInstance().addImage(i);
    }

    public boolean deleteImage(String id) {
        return FileDAO.getInstance().deleteImage(id);
    }

    public Image getImage(String id) {
        return FileDAO.getInstance().getImage(id);
    }

    public boolean updateInfor(Image i) {
        return FileDAO.getInstance().updateInfor(i);
    }
}
