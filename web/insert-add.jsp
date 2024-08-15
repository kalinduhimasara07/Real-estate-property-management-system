<%-- 
    Document   : insert-add
    Created on : Jul 26, 2024, 11:09:20 AM
    Author     : kalin
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="classes.DbConnector"%>
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

    out.println(uid);
    out.println(title);
    out.println(city);
    out.println(size);
    out.println(bed);
    out.println(description);
    out.println(price);
    out.println(tel);

    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    LocalDateTime now = LocalDateTime.now();

    PreparedStatement pstmt = null;

    // Database connection settings
//    String dbURL = "jdbc:mysql://localhost:3306/real_estate_system";
//    String dbUser = "root";
//    String dbPassword = "";
//
//    Connection conn = null;
//    PreparedStatement pstmt = null;
//    ResultSet rs = null;
//
//    try {
//        // Connect to the database
//        Class.forName("com.mysql.jdbc.Driver");
//        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
//
//        // Prepare the SQL query to retrieve all property details
//        String sql = "INSERT INTO advertisement(uid,title,city,size,bed,bath,description,price,tel,date_time) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
//        pstmt = conn.prepareStatement(sql);
//
//        pstmt.setInt(1, uid);
//        pstmt.setString(2, title);
//        pstmt.setString(3, city);
//        pstmt.setDouble(4, size);
//        pstmt.setInt(5, bed);
//        pstmt.setInt(6, bath);
//        pstmt.setString(7, description);
//        pstmt.setInt(8, price);
//        pstmt.setString(9, tel);
//        pstmt.setString(10, dtf.format(now));
//
//        int a = pstmt.executeUpdate();
//        if (a > 0) {
//
//        } else {
//
//        }
//
//    } catch (Exception e) {
//        out.println(e);
//    }
    Connection con = DbConnector.getConnection();
    String sql = "INSERT INTO advertisement(uid,title,city,size,bed,bath,description,price,tel,date_time) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    pstmt = con.prepareStatement(sql);

    pstmt.setInt(1, uid);
    pstmt.setString(2, title);
    pstmt.setString(3, city);
    pstmt.setDouble(4, size);
    pstmt.setInt(5, bed);
    pstmt.setInt(6, bath);
    pstmt.setString(7, description);
    pstmt.setInt(8, price);
    pstmt.setString(9, tel);
    pstmt.setString(10, dtf.format(now));

    int a = pstmt.executeUpdate();
    if (a > 0) {

    } else {

    }
    
    int aid = 0;

//Get Aid
    try {
        String query = "SELECT * FROM advertisement WHERE uid=? AND title=? ";
        pstmt = con.prepareStatement(query);
        pstmt.setInt(1, uid);
        pstmt.setString(2, title);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            aid = rs.getInt("aid");
            out.println(aid);
            
        } else {

        }
    } catch (Exception e) {
        out.println(e);
    }
//Insert aid

    String sql2 = "INSERT INTO images(aid) VALUES(?)";
    pstmt = con.prepareStatement(sql2);

    pstmt.setInt(1, aid);

    int b = pstmt.executeUpdate();
    if (b > 0) {
        response.sendRedirect("add-image.jsp?aid=" + aid);
    } else {

    }


%>

