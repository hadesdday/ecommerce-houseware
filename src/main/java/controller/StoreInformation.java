package controller;

import beans.StoreInformationBean;
import com.google.gson.Gson;
import db.DbConnector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(name = "StoreInformation", value = "/StoreInformation")
public class StoreInformation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<StoreInformationBean> list = DbConnector.get().withHandle(h ->
                h.createQuery("select * from thongtincuahang").mapToBean(StoreInformationBean.class).stream().collect(Collectors.toList())
        );
        PrintWriter writer = response.getWriter();
        Gson gson = new Gson();

        if (list.get(0) != null) {
            response.setContentType("application/json");
            writer.write(gson.toJson(list.get(0)));
            writer.close();
            request.getRequestDispatcher("client-footer.jsp").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            response.setContentType("application/json");
            writer.write("Not found");
            writer.close();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
