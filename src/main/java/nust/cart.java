/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nust;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Muleya
 */
@WebServlet(name = "cart", urlPatterns = {"/cart"})
public class cart extends HttpServlet {

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
        String n = request.getParameter("product");
        try {
            if (n != null) {
                Cookie cs[] = request.getCookies();
                boolean nn = false;
                String value = "";
                boolean avv = false;
                Cookie cookie = null, cokie2 = null;
                int total = 0;

                for (Cookie c : cs) {
                    if (c.getName().equals(n)) {
                        nn = true;
                        value = c.getValue();
                        cokie2 = c;
                    }
                    if ("total".equals(c.getName())) {
                        avv = true;
                        cookie = c;
                        total = Integer.parseInt(c.getValue());
                    }
                }
                if (nn == true) {
                    if ("true".equals(value)) {
                        cokie2.setValue("false");
                        response.addCookie(cokie2);
                        total--;
                    } else {
                        cokie2.setValue("true");
                        response.addCookie(cokie2);
                        total++;
                    }
                } else {
                    Cookie c = new Cookie(n, "true");
                    c.setMaxAge(1800);
                    response.addCookie(c);
                }
                if (avv == true) {
                    cookie.setValue(String.valueOf(total));
                    response.addCookie(cookie);
                } else {
                    Cookie c = new Cookie("total", String.valueOf(total));
                    response.addCookie(c);
                }
                response.sendRedirect("product.jsp?product=" + n);
            } else {
                response.sendRedirect("index.jsp");
            }

        } finally {
            out.close();
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
