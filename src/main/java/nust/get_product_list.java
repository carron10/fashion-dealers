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
import java.util.LinkedHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Muleya
 */
@WebServlet(name = "get_product_list", urlPatterns = {"/get_product_list"})
public class get_product_list extends HttpServlet {

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

        String ids = request.getParameter("ids");
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
            String idss[] = ids.split(",");
            Map<String, String> coments = new LinkedHashMap();

            for (int j = 0; j < idss.length; j++) {
                int i = Integer.parseInt(idss[j]);
                getProduct p = new getProduct(i);
                if (j != 0) {
                    coments.put(p.product_id, ","
                            + "{\n"
                            + "   \"name\" : \"" + p.product_name + "\",\n"
                            + "   \"time\" :  \"" + p.time + "\",\n"
                            + "   \"size\" : \"" + p.size + "\",\n"
                            + "   \"years\" : \"" + p.years + "\",\n"
                            + "\"price\" : \"" + p.price + "\",\n"
                            + "\"p_id\" : \"" + p.product_id + "\",\n"
                            + "   \"picture\" : \"" + p.picture + "\",\n"
                            + "   \"category\" : \"" + p.cat + "\",\n"
                            + "   \"description\" : \"" + p.description + "\"\n"
                            + "}");

                } else {
                    coments.put(p.product_id, ""
                            + "{\n"
                            + "   \"name\" : \"" + p.product_name + "\",\n"
                            + "   \"time\" :  \"" + p.time + "\",\n"
                            + "   \"size\" : \"" + p.size + "\",\n"
                            + "   \"years\" : \"" + p.years + "\",\n"
                            + "\"price\" : \"" + p.price + "\",\n"
                            + "\"p_id\" : \"" + p.product_id + "\",\n"
                            + "   \"picture\" : \"" + p.picture + "\",\n"
                            + "   \"category\" : \"" + p.cat + "\",\n"
                            + "   \"description\" : \"" + p.description + "\"\n"
                            + "}");
                }
                String info = "", products = null;
                if (!coments.isEmpty()) {
                    for (String key : coments.values()) {
                        info += key;
                    }
                    products = "{\"products\":"
                            + "[" + info + "]"
                            + "}";
                }
                out.println(products);

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

    class getProduct {

        String time, product_name, price, size, years, product_id, picture, cat, description;

        public getProduct(int id) throws SQLException, URISyntaxException {
            Connection connection;
            Statement statement = null;
            ResultSet resultSet;
            connection = getConnection();
            statement = connection.createStatement();
            String sql = "select * from products where  product_id='" + id + "'";
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                time = resultSet.getString("created_on");
                product_name = resultSet.getString("product_name");
                price = resultSet.getString("price");
                size = resultSet.getString("size");
                years = resultSet.getString("years");
                product_id = resultSet.getString("product_id");
                picture = resultSet.getString("picture");
                cat = resultSet.getString("category");
                description = resultSet.getString("description");
            }
            connection.close();
        }
    }
}
