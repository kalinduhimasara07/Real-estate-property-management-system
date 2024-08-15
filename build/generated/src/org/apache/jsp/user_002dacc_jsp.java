package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.text.NumberFormat;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class user_002dacc_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Idam.lk</title>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js\" integrity=\"sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js\" integrity=\"sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");

            String user_name = "";
            if (session.getAttribute("user_id") != null) {
                int user_id = (Integer) session.getAttribute("user_id");
                user_name = (String) session.getAttribute("user_name");

            } else {
                response.sendRedirect("login.jsp?x=1");
            }

        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--nav bar updated-->\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark bg-cl1\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.jsp\"><img src=\"images/nav-icon.png\" height=\"50px\" alt=\"nav-icon\"/>\n");
      out.write("                </a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                    <ul class=\"navbar-nav me-auto mb-2 mb-lg-0 mx-4\">\n");
      out.write("\n");
      out.write("                        <li class=\"nav-item mx-2\"><button class=\"btn btn-primary\"><a href=\"user-acc.jsp\" style=\"color:white;\">POST YOUR AD</a></button></li>\n");
      out.write("                            ");
 if (session.getAttribute("user_id") == null) { 
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                        <li class=\"nav-item\"><button class=\"btn btn-outline-warning\"><a href=\"login.jsp\" style=\"color:white;\">LOGIN</a></button></li>\n");
      out.write("                        </li>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        ");
 if (session.getAttribute("user_id") != null) { 
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                        <li class=\"nav-item\"><button class=\"btn btn-outline-warning\"><a href=\"logout.jsp\" style=\"color:white;\">LOG OUT</a></button></li>\n");
      out.write("                        </li>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"navbar-nav me-5\">\n");
      out.write("                        <div class=\"d-flex\">\n");
      out.write("                            <li class=\"nav-item me-2\">\n");
      out.write("                                <a class=\"nav-link active text-warning\" aria-current=\"page\" href=\"about-us.jsp\">ABOUT </a>\n");
      out.write("                            </li>\n");
      out.write("\n");
      out.write("                            <li class=\"nav-item me-2\">\n");
      out.write("                                <a class=\"nav-link active text-warning\" aria-current=\"page\" href=\"contact-us.jsp\">CONTACT </a>\n");
      out.write("                            </li>\n");
      out.write("                        </div>\n");
      out.write("                    </ul>\n");
      out.write("                    <form class=\"d-flex\">\n");
      out.write("                        <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\" disabled=\"disabled\">\n");
      out.write("                        <button class=\"btn btn-warning\" type=\"submit\" style=\" pointer-events: none; cursor: default; \">Search</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <!--nav bar close-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- main area -->\n");
      out.write("        <div class=\"container mt-4 p-3 bg-white\">\n");
      out.write("            <p style=\"font-size: 22pt;\">Welcome! ");
 out.println(user_name); 
      out.write("</p>\n");
      out.write("            <a href=\"new-add.jsp\" class=\"btn btn-dark\">Post New Add</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            ");

                if (request.getParameterMap().containsKey("s")) {


            
      out.write("\n");
      out.write("            <div class=\"container mt-4 p-3 bg-white\">\n");
      out.write("                <p style=\"font-size: 22pt;\" class=\"text-success text-center fw-bold\">\"Your advertisement has been successfully placed.\"</p>\n");
      out.write("                <p style=\"font-size: 22pt;\" class=\"text-danger text-center fw-bold\"> Please wait a moment for admin approval.</p>\n");
      out.write("                <center><a href=\"index.jsp\" class=\"btn btn-success\">Go to Home Page</a></center>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            ");
            }     
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            ");

                if (request.getParameterMap().containsKey("x")) {


            
      out.write("\n");
      out.write("            <div class=\"container mt-4 p-3 bg-white\">\n");
      out.write("                <p style=\"font-size: 22pt;\" class=\"text-success text-center fw-bold\">\"Your advertisement has been successfully Changed.\"</p>\n");
      out.write("                <p style=\"font-size: 22pt;\" class=\"text-danger text-center fw-bold\"> Please wait a moment for admin approval.</p>\n");
      out.write("                <center><a href=\"index.jsp\" class=\"btn btn-success\">Go to Home Page</a></center>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            ");
            }     
      out.write("\n");
      out.write("            \n");
      out.write("\n");
      out.write("\n");
      out.write("            ");

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
                    String sql = "SELECT * FROM advertisement INNER JOIN images ON advertisement.aid = images.aid WHERE uid='43' ";
                    pstmt = conn.prepareStatement(sql);

                    // Execute the query
                    rs = pstmt.executeQuery();

                    // Iterate over the result set and display property details
                    while (rs.next()) {
                        String title = rs.getString("title"); // Get the property ID
                        String city = rs.getString("city");
                        String date_time = rs.getString("date_time");
                        String img1 = rs.getString("img1");
                        int status = rs.getInt("status");
                        int aid = rs.getInt("aid");
                        int bed = rs.getInt("bed");
                        int bath = rs.getInt("bath");
                        int price = rs.getInt("price");
                        // Get the number instance for the default locale
                        NumberFormat numberFormatter = NumberFormat.getNumberInstance();

                        // Format the price
                        String formattedPrice = numberFormatter.format(price);

                        // Add other relevant fields as needed
            
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- advertisement -->\n");
      out.write("            <div class=\"mb-4 p-3 mt-4 add-div\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                    <div class=\"col-sm-4\">\n");
      out.write("                        <!-- image -->\n");
      out.write("                        <a href=\"advertisement.jsp\"><img src=\"images/upload/");
out.print(img1);
      out.write("\"  alt=\"pic\" class=\"img-fluid add-img\"/>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- details -->\n");
      out.write("                    <div class=\"col-sm-8\">\n");
      out.write("                        <a href=\"advertisement.jsp\"><h1 class=\"add-text-1\">");
out.print(title);
      out.write("</h1></a>\n");
      out.write("                        <p class=\"add-text-5\">Posted on ");
out.print(date_time);
      out.write("</p>\n");
      out.write("                        <p class=\"add-text-2\">Bedrooms: ");
out.print(bed);
      out.write(" | Bathroom: ");
out.print(bath);
      out.write("</p>\n");
      out.write("                        <p class=\"add-text-3\">");
out.print(city);
      out.write(", Sri Lanka</p>\n");
      out.write("                        <p class=\"add-text-4 f-cl1\">Rs ");
out.print(formattedPrice);
      out.write("/-</p>\n");
      out.write("                        <div class=\"\">\n");
      out.write("                            <a href=\"advertisement.jsp?aid=");
out.print(aid);
      out.write("\" class=\"btn btn-sm btn-warning text-white \">View more</a>\n");
      out.write("                            <a href=\"edit-add.jsp?aid=");
out.print(aid);
      out.write("\" class=\"btn btn-sm btn-warning text-white \">Edit</a>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 if(status==1){ 
      out.write("\n");
      out.write("                        <div class=\"text-end\">\n");
      out.write("                            <button class=\"btn btn-sm btn-success text-white\" style=\" pointer-events: none; cursor: default;\">ADMIN Approved</button>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        ");
 if(status==0){ 
      out.write("\n");
      out.write("                        <div class=\"text-end\">\n");
      out.write("                            <button class=\"btn btn-sm btn-danger text-white\" style=\" pointer-events: none; cursor: default;\">ADMIN Not Approved</button>\n");
      out.write("                        </div>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div><!-- advertisement End-->\n");
      out.write("\n");
      out.write("\n");
      out.write("            ");

                }//end while loop


            
      out.write("  \n");
      out.write("\n");
      out.write("            ");
                        } //end try 
                catch (Exception e) {
                    e.printStackTrace();
                }
            
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- main area End-->\n");
      out.write("\n");
      out.write("        <!--footer updated-->\n");
      out.write("        <div class=\"container-fluid bg-dark text-white py-2 mt-5 mb-0 footer\">\n");
      out.write("\n");
      out.write("            <table class=\"w-100 text-center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>  \n");
      out.write("                        <img src=\"images/nav-icon.png\" alt=\"\" style=\"height: 50px;\"><br>\n");
      out.write("                    </td>\n");
      out.write("                    <td class=\"h5\">\n");
      out.write("                        <a href=\"contact-us.jsp\" class=\" active text-warning\">CONTACT US</a> |\n");
      out.write("                        <a href=\"about-us.jsp\" class=\" active text-warning\">ABOUT US</a> |\n");
      out.write("                        <a href=\"privacy-policy.jsp\" class=\" active text-warning\">PRIVACY POLICY</a>\n");
      out.write("                    </td>\n");
      out.write("                    <td class=\"fafaicon\">\n");
      out.write("                        FOLLOW US <br>\n");
      out.write("                        <a href=\"#\" class=\"fa fa-facebook\"></a>\n");
      out.write("                        <a href=\"#\" class=\"fa fa-twitter\"></a>\n");
      out.write("                        <a href=\"#\" class=\"fa fa-instagram\"></a>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <hr>\n");
      out.write("\n");
      out.write("            <p class=\"text-center m-3\">© 2024. All rights reserved. KH Saltside Technologies</p>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!--footer close-->\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
