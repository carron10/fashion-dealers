/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;
import java.util.TreeMap;
import java.util.LinkedHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author Muleya
 */
@WebServlet(name = "get_product", urlPatterns = {"/get_products"})
public class get_products extends HttpServlet {

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
        String category = request.getParameter("category");
        String number = request.getParameter("number");
        /*INSERT INTO  products(category,product_name,size,years,picture,price,description) values
('kids','Jam suit','10','1-5yrs','kids/download (3).jpg','$19','null'),
('kids','Winter  Trackpants','10','1-5yrs','kids/download.jpg','$19','null'),
('kids','Boys Bottom','10','1-5yrs','kids/images (1).jpg','$19','null'),
('kids','Girl Legins','10','1-5yrs','kids/images (2).jpg','$19','null'),
('kids','Boys Grey Bottoms','10','1-5yrs','kids/images (3).jpg','$19','null'),
('kids','Boys Grey Bottoms','10','5months-1yr','kids/images (4).jpg','$19','null'),
('kids','Boys Bottoms','10','1-5yrs','kids/images (5).jpg','$19','null'),
('kids','Boys Cargo Pants','10','1-5yrs','kids/images (6).jpg','$19','null'),
('kids','Boys Shorts','10','1-5yrs','kids/images (7).jpg','$19','null'),
('kids','Girls Sweat Pants','10','1-5yrs','kids/images (8).jpg','$19','null'),
('kids','Kids Fleace Bottoms','10','1-5yrs','kids/images (9).jpg','$19','null'),
('kids','Kids Shorts','10','1-5yrs','kids/images (10).jpg','$19','null'),
('kids','Girls 3 Quarter Shorts','10','1-5yrs','kids/images (11).jpg','$19','null'),
('kids','Girls Jeans','10','1-5yrs','kids/images (12).jpg','$19','null'),
('kids','Girls Jeans','10','1-3yrs','kids/images (13).jpg','$19','null'),
('kids','Girls Trousers','10','1-5yrs','kids/images (14).jpg','$19','null'),
('kids','Orange kids Bottoms','10','1-5yrs','kids/images (15).jpg','$19','null'),
('kids','Kids khakhi Trouser','10','1-5yrs','kids/images (16).jpg','$19','null'),
('kids','','10','1-5yrs','kids/images (17).jpg','$19','null'),
('kids','Jam suit','10','1-5yrs','kids/images (18).jpg','$19','null'),
('kids','Jam suit','10','1-5yrs','kids/images (19).jpg','$19','null'),
('kids','Jam suit','10','1-5yrs','kids/images (20).jpg','$19','null'),
('kids','Jam suit','10','1-5yrs','kids/images (21).jpg','$19','null'),
('kids','Jam suit','10','1-5yrs','kids/images (22).jpg','$19','null'),
('kids','Null','10','1-5yrs','kids/images (23).jpg','$19','null'),
('kids','Null','10','1-5yrs','kids/images (24).jpg','$19','null'),('kids','Null','10','1-5yrs','kids/images (25).jpg','$19','null'),('kids','Null','10','1-5yrs','kids/images (26).jpg','$19','null'),('kids','Null','10','1-5yrs','kids/images (27).jpg','$19','null'),

;
        */
        try {
            if (category != null) {
                Map<String, String> coments = new LinkedHashMap();

                connection = getConnection();
                statement = connection.createStatement();
                String sql = "select * from products where category='" + category + "'";
                if ("null".equals(category)) {
                    sql = "select * from products;";
                }
                resultSet = statement.executeQuery(sql);
                String products = null;
                int num = 0;
                while (resultSet.next()) {
                    String time = resultSet.getString("created_on");
                    String product_name = resultSet.getString("product_name");
                    String price = resultSet.getString("price");
                    String size = resultSet.getString("size");
                    String years = resultSet.getString("years");
                    String product_id = resultSet.getString("product_id");
                    String picture = resultSet.getString("picture");
                    String cat = resultSet.getString("category");
                    String description = resultSet.getString("description");
                    product_id =DigestUtils.md5Hex(product_id);
                    if (num !=0) {
                        coments.put(product_id , ","
                                + "{\n"
                                + "   \"name\" : \"" + product_name+ "\",\n"
                                + "   \"time\" :  \"" + time + "\",\n"
                                + "   \"size\" : \"" + size + "\",\n"
                                + "   \"years\" : \"" + years + "\",\n"
                                + "\"price\" : \"" + price + "\",\n"
                                + "\"p_id\" : \"" + product_id + "\",\n"
                                + "   \"picture\" : \"" + picture + "\",\n"
                                + "   \"category\" : \"" + cat + "\",\n"
                                + "   \"description\" : \"" + description + "\"\n"
                                + "}");

                    } else {
                        coments.put(product_id,""
                                + "{\n"
                                + "   \"name\" : \"" + product_name+ "\",\n"
                                + "   \"time\" :  \"" + time + "\",\n"
                                + "   \"size\" : \"" + size + "\",\n"
                                + "   \"years\" : \"" + years + "\",\n"
                                + "\"price\" : \"" + price + "\",\n"
                                + "\"p_id\" : \"" + product_id + "\",\n"
                                + "   \"picture\" : \"" + picture + "\",\n"
                                + "   \"category\" : \"" + cat + "\",\n"
                                + "   \"description\" : \"" + description + "\"\n"
                                + "}");
                    }
                  num++;
                }
                connection.close();

                String info = "";
                if (!coments.isEmpty()) {
                    for (String key : coments.values()) {
                        info += key;
                    }
                    products = "{\"products\":"
                            + "[" + info + "]"
                            + "}";
                }
                out.println(products);

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
