package com.example.project;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.Provider;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "Appointment",urlPatterns = "/Appointment")
public class Appointment extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Statement st = null;
        PreparedStatement ps = null;
        Connection connection = DBManager.getConnection();
        try {
            String Fname = request.getParameter("first_name");
            String Lname = request.getParameter("last_name");
            String Doctor = request.getParameter("Doctor");
            String phone = request.getParameter("Phone");
            String mesg = request.getParameter("message");
            String Date = request.getParameter("Date");
            String Service = request.getParameter("Service");
            String q = "Insert INTO  appointments(first_name,last_name,Doctor,Service,phone,message,Date) values(?,?,?,?,?,?,?)";
                st = connection.createStatement();
                ps = connection.prepareStatement(q);
                ps.setString(1, Fname);
                ps.setString(2, Lname);
                ps.setString(3, Doctor);
                ps.setString(4, Service);
                ps.setString(5, phone);
                ps.setString(6,mesg);
                ps.setString(7,Date);

                ps.execute();
                st.close();
                connection.close();
               RequestDispatcher rd = request.getRequestDispatcher("appointment.jsp");
               out.println("<h1>Form Submitted</h1> <br> <h2>Name:" + Fname + "</h2><br><h2>Last Name:" + Lname + "</h2><br>");
               rd.include(request,response);

            }
        catch (SQLException ex) {
            throw new RuntimeException(ex);

        } catch (Exception e) {
            //Handle errors for Class.forName
            e.printStackTrace();
        }
        finally {
            //finally block used to close resources
            try {
                if (st != null)
                    st.close();
            }
            catch (SQLException se2) {
                se2.printStackTrace();
            } // nothing we can do
            try {
                if (connection != null)
                    connection.close();
            } catch (SQLException se) {
                se.printStackTrace();
            } //end finally try
            //end try
            catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}