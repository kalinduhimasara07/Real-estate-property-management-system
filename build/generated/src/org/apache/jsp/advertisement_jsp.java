package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.NumberFormat;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class advertisement_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--nav bar-->\n");
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
      out.write("                        <li class=\"nav-item\"><button class=\"btn btn-primary\"><a href=\"user-acc.jsp\" style=\"color:white;\">POST YOUR AD</a></button></li>\n");
      out.write("                            ");
 if (session.getAttribute("user_id") == null) { 
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link active text-warning\" aria-current=\"page\" href=\"login.jsp\">Login</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        ");
 if (session.getAttribute("user_id") != null) { 
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link active text-warning\" aria-current=\"page\" href=\"logout.jsp\">Log Out</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                    <form class=\"d-flex\">\n");
      out.write("                        <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("                        <button class=\"btn btn-warning\" type=\"submit\">Search</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <!--nav bar close-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

            // Database connection settings
            String dbURL = "jdbc:mysql://localhost:3306/real_estate_system";
            String dbUser = "root";
            String dbPassword = "";

            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            
            int Aid = Integer.parseInt(request.getParameter("aid"));

            try {
                // Connect to the database
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                // Prepare the SQL query to retrieve all property details
                String sql = "SELECT * FROM advertisement INNER JOIN images ON advertisement.aid = images.aid WHERE advertisement.aid='"+Aid+"'  ";
                pstmt = conn.prepareStatement(sql);

                // Execute the query
                rs = pstmt.executeQuery();

                // Iterate over the result set and display property details
                while (rs.next()) {
                    String title = rs.getString("title"); // Get the property ID
                    String city = rs.getString("city");
                    String date_time = rs.getString("date_time");
                    String img1 = rs.getString("img1");
                    String img2 = rs.getString("img2");
                    String img3 = rs.getString("img3");
                    String img4 = rs.getString("img4");
                    String img5 = rs.getString("img5");
                    String description = rs.getString("description");
                    String tel = rs.getString("tel");
                    int status = rs.getInt("status");
                    int aid = rs.getInt("aid");
                    int bed = rs.getInt("bed");
                    int bath = rs.getInt("bath");
                    int size = rs.getInt("size");
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
      out.write("        <!-- main area -->\n");
      out.write("        <div class=\"container mt-4 bg-white rounded advert\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <!-- left -->\n");
      out.write("                <div class=\"col-sm-8 col-lg-9 py-3\">\n");
      out.write("                    <h1>");
out.print(title);
      out.write("</h1>\n");
      out.write("                    <p>Posted on ");
out.print(date_time);
      out.write(',');
      out.write(' ');
out.print(city);
      out.write(", Sri Lanka</p>\n");
      out.write("\n");
      out.write("                    <!-- image carousel -->\n");
      out.write("                    <div>\n");
      out.write("                        <div id=\"carouselExampleControls\" class=\"carousel slide\" data-bs-ride=\"carousel\">\n");
      out.write("                            <div class=\"carousel-inner\">\n");
      out.write("                                <div class=\"carousel-item active\">\n");
      out.write("                                    <img src=\"images/upload/");
out.print(img1);
      out.write("\" class=\"d-block w-100 img1\" alt=\"...\"/>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img src=\"images/upload/");
out.print(img2);
      out.write("\" class=\"d-block w-100 img1\" alt=\"...\"/>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img src=\"images/upload/");
out.print(img3);
      out.write("\" class=\"d-block w-100 img1\" alt=\"...\"/>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img src=\"images/upload/");
out.print(img4);
      out.write("\" class=\"d-block w-100 img1\" alt=\"...\"/>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"carousel-item\">\n");
      out.write("                                    <img src=\"images/upload/");
out.print(img5);
      out.write("\" class=\"d-block w-100 img1\" alt=\"...\"/>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <button class=\"carousel-control-prev\" type=\"button\" data-bs-target=\"#carouselExampleControls\" data-bs-slide=\"prev\">\n");
      out.write("                                <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                                <span class=\"visually-hidden\">Previous</span>\n");
      out.write("                            </button>\n");
      out.write("                            <button class=\"carousel-control-next\" type=\"button\" data-bs-target=\"#carouselExampleControls\" data-bs-slide=\"next\">\n");
      out.write("                                <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                                <span class=\"visually-hidden\">Next</span>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>  <!-- image carousel end -->\n");
      out.write("\n");
      out.write("                    <p class=\"price f-cl1\">Rs ");
out.print(formattedPrice);
      out.write("/-</p>\n");
      out.write("                    <p>\n");
      out.write("                        Area : <b>");
out.print(city);
      out.write(", Sri Lanka</b><br>\n");
      out.write("                        Bedroom : ");
out.print(bed);
      out.write(" | Bathroom ");
out.print(bath);
      out.write(" <br>\n");
      out.write("                        Land size : ");
out.print(size);
      out.write(" perches <br>\n");
      out.write("                    </p>\n");
      out.write("                    <p>\n");
      out.write("                        <b>Description</b><br>\n");
      out.write("                        <span class=\"desc\">\n");
      out.write("                            ");
out.print(description);
      out.write("\n");
      out.write("                        </span>\n");
      out.write("                    </p>\n");
      out.write("                    <!-- left End-->    \n");
      out.write("                </div>\n");
      out.write("                <!-- Right -->\n");
      out.write("                <div class=\"col-sm-4 col-lg-3 py-3 pt-5 \">\n");
      out.write("                    <div class=\"sticky-top\"> <!-- stable for contact and alart division -->\n");
      out.write("                        <div class=\"border p-3 text-center \" >\n");
      out.write("                            <h2>Contact Customer</h2>\n");
      out.write("                            <p class=\"tel\"><i class=\"fa fa-phone\"></i>");
out.print(tel);
      out.write("</p>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\" p-3 text-center rounded m-4 mt-5 alart\" >\n");
      out.write("                            <h3>Stay Alert: Avoid Online Scams</h3>\n");
      out.write("                            <p class=\"alart-p\">Never share card details or OTPs, and always verify items in person before payment. ikman does not offer a delivery service. Stay vigilant!</p>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- Right End-->    \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- main area End-->\n");
      out.write("\n");
      out.write("        ");

                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--footer-->\n");
      out.write("        <div class=\"container-fluid bg-dark text-white py-2 mt-5 mb-0 footer\">\n");
      out.write("            <p class=\"text-center m-0\">© 2024. All rights reserved. Saltside Technologies</p>\n");
      out.write("        </div>\n");
      out.write("        <!--footer close-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
