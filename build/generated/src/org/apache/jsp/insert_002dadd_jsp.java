package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import classes.DbConnector;
import java.sql.*;

public final class insert_002dadd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

//    int uid = (Integer) session.getAttribute("user_id");
    int uid = 120;
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

//Get Aid
    try {
        String query = "SELECT * FROM advertisement WHERE uid=? AND title=? ";
        pstmt = con.prepareStatement(query);
        pstmt.setInt(1, uid);
        pstmt.setString(2, title);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            int aid = rs.getInt("aid");
            out.println(aid);
            response.sendRedirect("add-image.jsp");
        } else {
            
        }
    } catch (Exception e) {
        out.println(e);
    }
    



      out.write('\n');
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
