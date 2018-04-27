/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Formatter;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 * Servlet for users management
 * @author Mihai Rizea
 */
public class ManageUsers extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            /* read parameters received on call */
            String ssn = request.getParameter("inputform_neweuser_SSN");
            String username = request.getParameter("inputform_neweuser_username");
            String pass = request.getParameter("inputform_neweuser_password");
            String role = request.getParameter("inputform_neweuser_role"); 
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
                //call stored procedure to insert a new person
                String DML = "INSERT INTO USERS VALUES (?, ?, ?, ?)";
                PreparedStatement pstmnt = connection.prepareStatement(DML);
                pstmnt.setString(1, ssn);
                pstmnt.setString(2, username);
                pstmnt.setString(3, pass);
                pstmnt.setString(4, role);
                pstmnt.execute();
            }
        catch (ClassNotFoundException | SQLException ex){                               
            }
            finally
            {
                if (resultSet != null)
                {
                    try
                    {
                        resultSet.close();
                    }
                    catch (Exception ex){}
                }
                if (statement != null)
                {
                    try
                    {
                        statement.close();
                    }
                    catch (Exception ex){}
                }	
                if (connection != null)
                {
                    try
                    {
                        connection.close();
                    }
                    catch (Exception ex){}
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
