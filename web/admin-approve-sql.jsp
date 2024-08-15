<%-- 
    Document   : admin-approve-sql
    Created on : Jul 27, 2024, 12:04:04 PM
    Author     : kalin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    int aid = Integer.parseInt(request.getParameter("aid"));
    int status = Integer.parseInt(request.getParameter("status"));

// Database connection settings
    String dbURL = "jdbc:mysql://localhost:3306/real_estate_system";
    String dbUser = "root";
    String dbPassword = "";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Connect to the database
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

        // Prepare the SQL query to retrieve all property details
        String sql = "UPDATE advertisement SET status='" + status + "' WHERE aid=? ";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, aid);

        int a = pstmt.executeUpdate();
        if (a > 0) {
            out.println("sucessfull database update");
            response.sendRedirect("admin-approve.jsp?k=123");
        } else {
            out.println("unsucessfull database update");
        }

    } catch (Exception e) {
        e.printStackTrace();
    }


%>
