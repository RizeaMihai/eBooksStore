/*
 Login servlet
 */
package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpSession;

/**
 * Login servlet
 * @author Mihai Rizea
 */
public class Login extends HttpServlet {

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
        //get values from username and password
        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        //realize connection with DB
        String user = "test";
        String password = "test"; //String url = "jdbc:derby://localhost:1527/seconddb;create=true";
        String url = "jdbc:derby://localhost:1527/ebooksstore;create=true";
        String driver = "org.apache.derby.jdbc.ClientDriver";
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        HttpSession session = request.getSession();
        
        try
        {
            Class driverClass = Class.forName(driver);
            connection = DriverManager.getConnection(url, user, password);
            statement = connection.createStatement();
            String query = "SELECT SSN,NAME,PASSWORD,USERS.ROLE from USERS, USER_ROLES WHERE USER_ROLES.ROLE=USERS.ROLE AND USERS.NAME='"+username+"' AND USERS.PASSWORD ='"+pass+"'";
            // SELECT SSN,NAME,PASSWORD,USERS.ROLE from USERS, USER_ROLES WHERE USER_ROLES.ROLE=USERS.ROLE AND USERS.SSN='mihai' AND USERS.PASSWORD ='rizea'
            resultSet = statement.executeQuery(query);
            //boolean resultSetHasRows = resultSet.next();
            boolean logged = false;
            
            if (resultSet.next())
            {
                session.setAttribute("username", username);
                String role = resultSet.getString("ROLE");
                session.setAttribute("role", role);
                // redirect to main page - user is authentificated
               response.sendRedirect("mainpage.jsp");
               logged = true;
               session.setAttribute("logged", logged);
            }
            else
            {
                // redirect back to index.jsp page
                session.setAttribute("logged", false);
               response.sendRedirect("index.jsp");
            }
        }
        catch (ClassNotFoundException | SQLException ex)
        {
            System.out.println(ex);
        }
        finally
        {
            if (resultSet != null)
            {
                try
                {
                    resultSet.close();
                }
                catch (Exception ex){System.out.println(ex);}
            }
            if (statement != null)
            {
                try
                {
                    statement.close();
                }
                catch (Exception ex){System.out.println(ex);}
            }	
            if (connection != null)
            {
                try
                {
                    connection.close();
                }
                catch (Exception ex){System.out.println(ex);}
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
        return "Login servlet";
    }// </editor-fold>

}
