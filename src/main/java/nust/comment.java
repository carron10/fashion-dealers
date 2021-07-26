package nust;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author Muleya
 */
@WebServlet(urlPatterns = {"/comment"})
public class comment extends HttpServlet {

    private static Connection getConnection() throws URISyntaxException, SQLException {
        String dbUrl = System.getenv("JDBC_DATABASE_URL");
        return DriverManager.getConnection(dbUrl);
    }

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
        String uname = request.getParameter("uname");
        String email = request.getParameter("email");
        String msg = request.getParameter("msg");
        String page = request.getParameter("page");
        String reply_to=request.getParameter("reply");
        // String page = request.getRequestURI();
        Connection con;
        PreparedStatement pstat;
        
        if (email == null || page == null || msg == null) {
            response.sendRedirect("index.jsp");
        } else {
            
            try {
                con = getConnection();
                pstat = con.prepareStatement("INSERT INTO  comments(email,msg,page,user_name,reply_to) values(lower(?),?,crypt(?,gen_salt('bf', 8)),?,?)");
                pstat.setString(1, email);
                pstat.setString(2, msg);
                pstat.setString(3, page);
                pstat.setString(4, uname);
                pstat.setString(5, reply_to);
                int i = pstat.executeUpdate();
                if (i != 0) {
                    out.println("Your comment have been sent!!.It will appear after a short period. Thank you");
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
            }
        }

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
