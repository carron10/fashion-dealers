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
import java.sql.SQLException;
import java.sql.Statement;
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
@WebServlet(name = "createDb", urlPatterns = {"/createDb"})
public class createDb extends HttpServlet {

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

        try {
            /* TODO output your page here. You may use following sample code. */
            Connection con = getConnection();
            Statement statement = con.createStatement();
            String sql = "CREATE TABLE products(\n"
                    + "	product_id serial PRIMARY KEY,\n"
                    + "	category VARCHAR ( 20 ),\n"
                    + "price VARCHAR (100) NOT NULL,\n"
                    + "product_name VARCHAR (100 ) NOT NULL,\n"
                    + "size VARCHAR ( 20 ),\n"
                    + "years VARCHAR (20),\n"
                    + "picture VARCHAR (200) NOT NULL,\n"
                    + "description VARCHAR (400),\n"
                    + "	created_on TIMESTAMP default current_timestamp,\n"
                    + ");";

            statement.execute(sql);
            // statement.execute(comments);
            // statement.execute(subscribe);
        } catch (URISyntaxException ex) {
            Logger.getLogger(createDb.class.getName()).log(Level.SEVERE, null, ex);
            out.println(ex);
        } catch (SQLException ex) {
            Logger.getLogger(createDb.class.getName()).log(Level.SEVERE, null, ex);
            out.println(ex);
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
