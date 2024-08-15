package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class privacy_002dpolicy_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            <h1 class=\"bg-dark text-white p-3\">PRIVACY POLICY</h1>\n");
      out.write("            <p>At idam.lk, we are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy outlines how we collect, use, disclose, and protect your data when you use our website and services.</p>\n");
      out.write("\n");
      out.write("            <h2>Information We Collect</h2>\n");
      out.write("            <p>We collect various types of information to provide and improve our services, including:</p>\n");
      out.write("            <ul>\n");
      out.write("                <li>Personal Information: When you register or use our services, we may collect information such as your name, email address, phone number, and postal address.</li>\n");
      out.write("                <li>Property Information: Details about the properties you list or interact with on our platform.</li>\n");
      out.write("                <li>Usage Data: Information on how you use our website, including your IP address, browser type, pages visited, and time spent on our site.</li>\n");
      out.write("                <li>Cookies and Tracking Technologies: We use cookies and similar technologies to enhance your experience, analyze site traffic, and personalize content.</li>\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <h2>How We Use Your Information</h2>\n");
      out.write("            <p>We use the information we collect for various purposes, including:</p>\n");
      out.write("            <ul>\n");
      out.write("                <li>Providing Services: To facilitate real estate transactions, manage your account, and offer customer support.</li>\n");
      out.write("                <li>Improving Our Platform: To enhance our website, develop new features, and optimize user experience.</li>\n");
      out.write("                <li>Communication: To send you updates, newsletters, marketing materials, and respond to your inquiries.</li>\n");
      out.write("                <li>Security and Compliance: To protect against fraud, enforce our terms of service, and comply with legal obligations.</li>\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <h2>Information Sharing and Disclosure</h2>\n");
      out.write("            <p>We may share your information with third parties under the following circumstances:</p>\n");
      out.write("            <ul>\n");
      out.write("                <li>Service Providers: We engage trusted third-party service providers to perform functions on our behalf, such as payment processing and data analysis.</li>\n");
      out.write("                <li>Legal Requirements: We may disclose your information if required by law or in response to legal processes, such as subpoenas or court orders.</li>\n");
      out.write("                <li>Business Transfers: In the event of a merger, acquisition, or sale of assets, your information may be transferred as part of the transaction.</li>\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("            <h2>Data Security</h2>\n");
      out.write("            <p>We implement robust security measures to protect your personal information from unauthorized access, alteration, disclosure, or destruction. However, please note that no method of transmission over the internet or electronic storage is 100% secure.</p>\n");
      out.write("\n");
      out.write("            <h2>Your Rights and Choices</h2>\n");
      out.write("            You have certain rights regarding your personal information, including:\n");
      out.write("            <ul>\n");
      out.write("                <li>Access and Update: You can access and update your personal information through your account settings.</li>\n");
      out.write("                <li>Opt-Out: You may opt out of receiving marketing communications from us by following the unsubscribe instructions in our emails.</li>\n");
      out.write("                <li>Data Deletion: You can request the deletion of your personal information, subject to legal and contractual obligations.</li>\n");
      out.write("                <li></li>\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("            <h2>Changes to This Privacy Policy</h2>\n");
      out.write("            <p>We may update this Privacy Policy from time to time to reflect changes in our practices or legal requirements. We will notify you of any significant changes by posting the new policy on our website and updating the effective date.</p>\n");
      out.write("\n");
      out.write("            <h2>Contact Us</h2>\n");
      out.write("            <p>If you have any questions or concerns about our Privacy Policy or how we handle your personal information, please contact us at:</p>\n");
      out.write("\n");
      out.write("            <p>idam.lk <br>\n");
      out.write("                Email: support@idam.lk<br>\n");
      out.write("                Phone: +94-76-150-2959<br>\n");
      out.write("                Address: UWU Passara Road, Badulla.</p>\n");
      out.write("\n");
      out.write("            <p>By using our website and services, you consent to the terms of this Privacy Policy. Thank you for trusting idam.lk with your real estate needs.</p>\n");
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
