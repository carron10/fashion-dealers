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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Muleya
 */
@WebServlet(urlPatterns = {"/signup", "/register"})
public class register_1 extends HttpServlet {

    private static Connection getConnection() throws URISyntaxException, SQLException {
        String dbUrl = System.getenv("JDBC_DATABASE_URL");
        return DriverManager.getConnection(dbUrl);
    }
    
     
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Connection con = null;
        //Statement statement;
    
            
           

        PrintWriter out = response.getWriter();

        PreparedStatement pstat;
        String email = request.getParameter("email");
        String pswd = request.getParameter("pswd");
        String username = request.getParameter("uname");
        String lastname = request.getParameter("lname");
        String firstname = request.getParameter("fname");
        String cpswd = request.getParameter("cpswd");
        String rem = request.getParameter("rem");
        
        if (email == null) {
            response.sendRedirect("register.jsp");
        } else if (!pswd.equals(cpswd)) {
            out.println("Password don't match" + pswd + " " + cpswd);
        } else {
            try {
                con = getConnection();

                pstat = con.prepareStatement("Select * from users where email=?");
                pstat.setString(1, email);
                ResultSet rs = pstat.executeQuery();
                if (rs.next()) {
                    pstat = con.prepareStatement("Select * from users where username=?");
                    pstat.setString(1, username);
                    ResultSet rc = pstat.executeQuery();
                    if (rc.next()) {
                        out.println("Username and Email already registered!");
                    } else {
                        out.println("Email already registered!");
                    }
                } else {
                    Date date = new Date();
                    //This method returns the time in millis
                    long timeMilli = date.getTime();
                    sendEmail em = new sendEmail();
                    pstat = con.prepareStatement("INSERT INTO users(email,username,last_name,first_name,password,hash_password,user_role) values(lower(?),?,?,?,crypt(?,gen_salt('bf', 8)),?,?)");
                    pstat.setString(1, email);
                    pstat.setString(2, username);
                    pstat.setString(3, lastname);
                    pstat.setString(4, firstname);
                    pstat.setString(5, pswd);
                    pstat.setString(6, em.getRandom() + timeMilli);
                     pstat.setString(7, "user");
                    int i = pstat.executeUpdate();
                    if (i != 0) {
                        out.println("Thank you for registration please check your inbox we have sent you an verification link");
                        String msg = "<h>Dear " + username + "</h><hr> <p>You are receiving this email because you have registered to our  <a href=\"https://nust-web.herokuapp.com\">website</a>. <p>\n"
                                + "        for your account to be activated it need to be verified please verify by visiting" + "< href=\"https://nust-web.herokuapp.com/account/" + em.getRandom() + "\">https://nust-web.herokuapp.com/account/" + em.getRandom() + "</a> .Please note this link will expire within 24Hours\n"
                                + "    </p></p>";
                        em.send(msg, email, "carronmuleya10@gmail.com", "Email Verification");
                    } else {
                        System.out.println("Database error: " + i);
                        out.println("There is a server error happen");
                    }
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
            throws ServletException, IOException, NullPointerException {
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
