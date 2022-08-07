package dao;

import beans.Image;
import db.DbConnector;

import java.util.List;
import java.util.stream.Collectors;

public class FileDAO {
    private static FileDAO instance;

    private FileDAO() {
    }

    public static FileDAO getInstance() {
        if (instance == null) {
            instance = new FileDAO();
        }
        return instance;
    }

    public List<Image> getImages() {
        List<Image> re = DbConnector.get().withHandle(h ->
                h.createQuery("SELECT * FROM hinhanh")
                        .mapToBean(Image.class).stream().collect(Collectors.toList())
        );
        return re;
    }

    public boolean addImage(Image i) {
        try {
            int rowInserted = DbConnector.get().withHandle(h ->
                    h.createUpdate("INSERT INTO hinhanh(ID_ANH,LINK_ANH,ID_SANPHAM) VALUES(?,?,?)")
                            .bind(0, i.getID_ANH())
                            .bind(1, i.getLINK_ANH())
                            .bind(2, i.getID_SANPHAM())
                            .execute()
            );
            return rowInserted == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public boolean deleteImage(String id) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("DELETE FROM hinhanh where ID_ANH = ?")
                            .bind(0, id)
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }

    public Image getImage(String id) {
        try {
            List<Image> re = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM hinhanh where ID_ANH = ?")
                            .bind(0, id)
                            .mapToBean(Image.class).stream().collect(Collectors.toList())
            );
            return re.get(0);
        } catch (Exception e) {
            return null;
        }
    }

    public List<Image> getImagesByPid(String pid) {
        try {
            List<Image> re = DbConnector.get().withHandle(h ->
                    h.createQuery("SELECT * FROM hinhanh where id_sanpham = ?")
                            .bind(0, pid)
                            .mapToBean(Image.class).stream().collect(Collectors.toList())
            );
            return re;
        } catch (Exception e) {
            return null;
        }
    }

    public boolean updateInfor(Image i) {
        try {
            int rowAffected = DbConnector.get().withHandle(h ->
                    h.createUpdate("UPDATE hinhanh SET ID_SANPHAM = ?,link_anh = ? WHERE ID_ANH = ?")
                            .bind(0, i.getID_SANPHAM())
                            .bind(1, i.getLINK_ANH())
                            .bind(2, i.getID_ANH())
                            .execute()
            );
            return rowAffected == 1;
        } catch (Exception e) {
            return false;
        }
    }
}

