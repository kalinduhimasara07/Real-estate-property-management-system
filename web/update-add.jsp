<%-- 
    Document   : update-add
    Created on : Aug 7, 2024, 11:44:19 AM
    Author     : kalin
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int uid = (Integer) session.getAttribute("user_id");
//    int uid = 120;
    String title = request.getParameter("title");
    String city = request.getParameter("city");

    double size = Double.parseDouble(request.getParameter("size"));

    int bed = Integer.parseInt(request.getParameter("bed"));

    int bath = Integer.parseInt(request.getParameter("bath"));

    String description = request.getParameter("description");

    int price = Integer.parseInt(request.getParameter("price"));

    String tel = request.getParameter("tel");

    String aid = request.getParameter("aid");

    out.println(uid);
    out.println(title);
    out.println(city);
    out.println(size);
    out.println(bed);
    out.println(description);
    out.println(price);
    out.println(tel);

    try {
        // Database connection settings
        String dbURL = "jdbc:mysql://localhost:3306/real_estate_system";
        String dbUser = "root";
        String dbPassword = "";

        Connection conn = null;
        PreparedStatement pstmt = null;

        // Connect to the database
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

        // Prepare the SQL query to update property details
        String sql = "UPDATE advertisement SET title=?, city=?, size=?, bed=?, bath=?, description=?, price=?, tel=? WHERE aid=?";
        pstmt = conn.prepareStatement(sql);

        // Set the parameters for the prepared statement
        pstmt.setString(1, title);
        pstmt.setString(2, city);
        pstmt.setDouble(3, size);
        pstmt.setInt(4, bed);
        pstmt.setInt(5, bath);
        pstmt.setString(6, description);
        pstmt.setInt(7, price);
        pstmt.setString(8, tel);
        pstmt.setString(9, aid);

        int a = pstmt.executeUpdate();
        if (a > 0) {
            response.sendRedirect("user-acc.jsp?x=12");
        } else {
            out.print("Error");
        }

    } catch (Exception e) {
        e.printStackTrace();
    }


%>
