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
        try {
            if (category != null) {
                Map<String, String> coments = new TreeMap();

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
                                + "   \"name\" : \"" + product_name + "\",\n"
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
