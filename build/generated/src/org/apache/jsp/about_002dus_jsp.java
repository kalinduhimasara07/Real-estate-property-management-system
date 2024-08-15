package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_002dus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <!--main area--> \n");
      out.write("        <div class=\"mb-5 bg-light text-dark m-5 p-5 about-us\">\n");
      out.write("            <h1 class=\"bg-dark text-white p-3\">ABOUT US</h1>\n");
      out.write("            <p>Welcome to idam.lk, your premier destination for all your real estate needs in Sri Lanka. Founded with a passion for innovation and a commitment to excellence, idam.lk aims to revolutionize the way you buy, sell, and manage properties.</p>\n");
      out.write("\n");
      out.write("            <h2>Who We Are</h2>\n");
      out.write("            <p>At idam.lk, we are a dedicated team of real estate professionals, tech enthusiasts, and customer service experts. Our mission is to provide a seamless and efficient platform that bridges the gap between property owners, buyers, and renters. We believe in transparency, reliability, and the power of technology to transform the real estate landscape.</p>\n");
      out.write("\n");
      out.write("            <h2>What We Do</h2>\n");
      out.write("            <p >Our platform offers a comprehensive suite of tools designed to make real estate transactions easier, faster, and more secure. Whether you are looking to buy your dream home, sell a property, or find the perfect rental, idam.lk has got you covered. Our services include:</p>\n");
      out.write("\n");
      out.write("            <ul>\n");
      out.write("                <li>\n");
      out.write("                    Property Listings: Browse through an extensive database of properties across Sri Lanka, with detailed descriptions, high-quality images, and virtual tours.\n");
      out.write("                </li>\n");
      out.write("                <li >Advanced Search Filters: Find properties that meet your exact requirements with our intuitive search options.</li>\n");
      out.write("                <li>User-Friendly Interface: Navigate our platform with ease, thanks to a clean and responsive design.</li>\n");
      out.write("                <li>Secure Transactions: Benefit from our secure payment gateways and verified listings to ensure peace of mind.</li>\n");
      out.write("                <li>Expert Support: Our dedicated support team is always ready to assist you with any inquiries or issues you may encounter.</li>\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("            <h2>Our Vision</h2>\n");
      out.write("            <p>We envision a future where real estate transactions are as simple and straightforward as possible. By leveraging cutting-edge technology and maintaining a customer-centric approach, we strive to be the leading real estate management platform in Sri Lanka. Our goal is to empower our users with the tools and information they need to make informed decisions and achieve their real estate dreams.</p>\n");
      out.write("\n");
      out.write("            <h2>Why Choose Us?</h2>\n");
      out.write("            <ul>\n");
      out.write("                <li>Comprehensive Solutions: From property listings to management tools, we offer a one-stop solution for all your real estate needs.</li>\n");
      out.write("                <li>Reliable and Trustworthy: Our team is committed to providing a trustworthy platform with verified listings and secure transactions.</li>\n");
      out.write("                <li>Innovative Technology: We continuously innovate and improve our platform to offer the best user experience.</li>\n");
      out.write("                <li>Customer-Centric Approach: Your satisfaction is our priority. We listen to your feedback and work tirelessly to meet your needs.</li>\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("            <p>Join us at idam.lk and experience a new era in real estate management. Whether you are a property owner, buyer, or renter, we are here to make your real estate journey smooth and successful.</p>\n");
      out.write("        </div>\n");
      out.write("        <!--main area end-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--footer-->\n");
      out.write("        <div class=\"container-fluid bg-dark text-white py-2 mt-5 mb-0 footer\">\n");
      out.write("\n");
      out.write("            <table class=\"w-100 text-center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>  \n");
      out.write("                        <img src=\"images/nav-icon.png\" alt=\"\" style=\"height: 50px;\"><br>\n");
      out.write("                    </td>\n");
      out.write("                    <td class=\"h5\">\n");
      out.write("                        <a href=\"\" class=\" active text-warning\">CONTACT US</a> |\n");
      out.write("                        <a href=\"\" class=\" active text-warning\">ABOUT US</a> |\n");
      out.write("                        <a href=\"\" class=\" active text-warning\">PRIVACY POLICY</a>\n");
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
