package controller.admin.file;

import com.google.gson.Gson;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import properties.AssetsProperties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

@WebServlet(name = "UploadFile", value = "/UploadFile")
public class UploadFile extends HttpServlet {

    private ServletFileUpload uploader = null;
    private String productPath = "/product";

    @Override
    public void init() {
        DiskFileItemFactory fileFactory = new DiskFileItemFactory();
        File fileDir = (File) getServletContext().getAttribute("FILES_DIR_FILE");
        fileFactory.setRepository(fileDir);
        this.uploader = new ServletFileUpload(fileFactory);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (!ServletFileUpload.isMultipartContent(request)) {
            throw new ServletException("Content type is not multipart/form-data");
        }
        try {
            List<FileItem> fileItemList = uploader.parseRequest(request);
            for (FileItem fileItem : fileItemList) {
                File productDir = new File(request.getServletContext().getAttribute("FILES_DIR") + File.separator + productPath);
                if (!productDir.exists()) productDir.mkdirs();

                File file = new File(productDir.getAbsolutePath() + File.separator + fileItem.getName());
                if (file.exists()) {
                    Random rand = new Random();
                    int random = rand.nextInt(1000);
                    random = (random * 2) % 100;
                    file = new File(productDir.getAbsolutePath() + File.separator + random + "-" + fileItem.getName());
                }
                fileItem.write(file);

                PrintWriter pw = response.getWriter();
                Gson gson = new Gson();

                response.setContentType("application/json");
                String pathToFile = file.getAbsolutePath();
                pw.write(gson.toJson(pathToFile));
                pw.close();
                request.getRequestDispatcher("/admin/image").forward(request, response);
//                response.sendRedirect(AssetsProperties.getBaseURL("admin/image"));
            }
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }
}
