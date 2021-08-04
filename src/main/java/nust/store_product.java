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
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
@WebServlet(name = "store_product", urlPatterns = {"/store_product"})
public class store_product extends HttpServlet {

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
        String years = request.getParameter("years");
        String category = request.getParameter("category");
        String name = request.getParameter("name");
        String size = request.getParameter("size");
        String picture = request.getParameter("picture");
        String price = request.getParameter("price");
         String description = request.getParameter("description");
        // String page = request.getRequestURI();
        Connection con;
        PreparedStatement pstat;
        /*INSERT INTO  products(category,product_name,size,years,picture,price,description) values('kids','Black shoe','13','1-5yrs','kids/boys-shoes/images (28).jpg','$199',' boys black shoes');*/
        
        String data="";
        if (category == null || size == null || name == null) {
            response.sendRedirect("index.jsp");
        } else {
            try {
                con = getConnection();
                pstat = con.prepareStatement("INSERT INTO  products(category,product_name,size,years,picture,price,description) values(?,?,?,?,?,?,?)");
                pstat.setString(1, category);
                pstat.setString(2, name);
                pstat.setString(3, size);
                pstat.setString(4, years);
                pstat.setString(5, picture);
                pstat.setString(6, price);
                pstat.setString(7, description);
                int i = pstat.executeUpdate();
                if (i != 0) {
                    out.println("Product added");
                } else {
                    System.out.println("Database error: " + i);
                    out.println("There is a server error happen");
                }
            } catch (SQLException ex) {
                System.err.println(ex.getMessage());
                Logger.getLogger(register_1.class.getName()).log(Level.SEVERE, null, ex);
                out.println("There is a server error happen");
            } catch (URISyntaxException ex) {
                Logger.getLogger(register_1.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                out.close();
            }
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
