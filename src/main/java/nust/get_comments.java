/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Muleya
 */
@WebServlet(name = "get_comments", urlPatterns = {"/get_comments"})
public class get_comments extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection connection;
        Statement statement, stat;
        ResultSet resultSet, st;
        String pag = request.getParameter("page");

        try {
            if (pag != null) {
                Map<String, String> coments = new TreeMap();
                Map<String, String> output = new TreeMap();
                connection = get_comments.getConnection();
                statement = connection.createStatement();
                String sql = "select * from comments where page=" + "crypt('" + pag + "',page)";
                resultSet = statement.executeQuery(sql);
                String comments = null;
                int num = 0;
                while (resultSet.next()) {
                    String time = resultSet.getString("posted_on");
                    String user_name = resultSet.getString("user_name");
                    String msg = resultSet.getString("msg");
                    String reply_to = resultSet.getString("reply_to");
                    String msg_id = resultSet.getString("id");
                    String r_id = reply_to;
                    if (reply_to == null || "N0".equals(reply_to)) {
                        reply_to = "N/A";
                        r_id = reply_to;
                    } else {
                        stat = connection.createStatement();
                        st = stat.executeQuery("select * from comments where id=" + reply_to);
                        while (st.next()) {
                            reply_to = st.getString("user_name");
                        }
                    }
                    if (num == 0) {
                        coments.put(msg_id + "," + r_id, ""
                                + "{\n"
                                + "   \"user\" : \"" + user_name + "\",\n"
                                + "   \"time\" :  \"" + time + "\",\n"
                                + "   \"r_to\" : \"" + reply_to + "\",\n"
                                + "\"msg\" : \"" + msg + "\",\n"
                                + "\"msg_id\" : \"" + msg_id + "\",\n"
                                + "   \"avatar\" : \"Null\"\n"
                                + "}");

                    } else {
                        coments.put(msg_id + "," + reply_to, ","
                                + "{\n"
                                + "   \"user\" : \"" + user_name + "\",\n"
                                + "   \"time\" :  \"" + time + "\",\n"
                                + "   \"r_to\" : \"" + reply_to + "\",\n"
                                + "\"msg\" : \"" + msg + "\",\n"
                                + "\"msg_id\" : \"" + msg_id + "\",\n"
                                + "   \"avatar\" : \"Null\"\n"
                                + "}");
                    }
                    num += 1;

                }
                connection.close();
                for (String key : coments.keySet()) {
                    String id[] = key.split(",");
                    if (id[1].equals("N/A")) {
                        output.put(key, coments.get(key));
                        for (String keys : coments.keySet()) {
                            String ids[] = key.split(",");
                            if (ids[1].equals(id[0])) {
                                output.put(keys, coments.get(keys));
                            }
                        }
                    }
                }
                String info = null;
                if (!output.isEmpty()) {
                    for (String key : output.values()) {
                        info += key;
                    }
                    comments = "{\"comments\":"
                            + "[" + info + "]"
                            + "}";
                }
                out.println(comments);

            } else {
                response.sendRedirect("index.jsp");
            }
        } catch (URISyntaxException ex) {
            Logger.getLogger(get_comments.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(get_comments.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
        }
    }

    private static Connection getConnection() throws URISyntaxException, SQLException {
        String dbUrl = System.getenv("JDBC_DATABASE_URL");
        return DriverManager.getConnection(dbUrl);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
