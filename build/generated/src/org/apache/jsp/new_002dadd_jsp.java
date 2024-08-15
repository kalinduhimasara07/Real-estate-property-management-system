package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class new_002dadd_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("        ");

//            String user_name="";
//            if (session.getAttribute("user_id") != null) {
//                int user_id = (Integer) session.getAttribute("user_id");
//                user_name = (String)session.getAttribute("user_name");
//                
//            } else {
//                response.sendRedirect("login.jsp?x=1");
//            }

        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
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
      out.write("                        <li class=\"nav-item\"><button class=\"btn btn-primary\"><a href=\"../user_acc/\" style=\"color:white;\">POST YOUR AD</a></button></li>\n");
      out.write("\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link active text-warning\" aria-current=\"page\" href=\"../user/\">Login</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <form class=\"d-flex\">\n");
      out.write("                        <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("                        <button class=\"btn btn-warning\" type=\"submit\">Search</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <!--nav bar close-->\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("        <!-- main area -->\n");
      out.write("        <div class=\"container mt-4 p-3 bg-white\">\n");
      out.write("            <p style=\"font-size: 22pt;\">Welcome! ");
 // out.println(user_name); 
      out.write("</p>\n");
      out.write("            <a href=\"user-acc.jsp\" class=\"btn btn-dark\">Go Back</a>\n");
      out.write("\n");
      out.write("            <h1 class=\"mt-4\">Post New Add</h1>\n");
      out.write("            <form action=\"insert-add.jsp\" method=\"post\" >\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-4 mb-3\">\n");
      out.write("                        <label for=\"\">Add Title</label>\n");
      out.write("                        <input type=\"text\" name=\"title\"  class=\"form-control\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-4 mb-3\">\n");
      out.write("                        <label for=\"\">Add City</label>\n");
      out.write("                        <input type=\"text\" name=\"city\"  class=\"form-control\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-4 mb-3\">\n");
      out.write("                        <label for=\"\">Add Size</label>\n");
      out.write("                        <input type=\"text\" name=\"size\"  class=\"form-control\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-4 mb-3\">\n");
      out.write("                        <label for=\"\">Add No of Bedrooms</label>\n");
      out.write("                        <input type=\"text\" name=\"bed\"  class=\"form-control\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-4 mb-3\">\n");
      out.write("                        <label for=\"\">Add No of Bathrooms</label>\n");
      out.write("                        <input type=\"text\" name=\"bath\"  class=\"form-control\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-4 mb-3\">\n");
      out.write("                        <label for=\"\">Add Price</label>\n");
      out.write("                        <input type=\"text\" name=\"price\"  class=\"form-control\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-4 mb-3\">\n");
      out.write("                        <label for=\"\">Add Telephone</label>\n");
      out.write("                        <input type=\"text\" name=\"tel\"  class=\"form-control\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-12 mb-3\">\n");
      out.write("                        <label for=\"\">Add Discreption</label>\n");
      out.write("                        <textarea name=\"description\" class=\"form-control\" style=\"height:200px\"></textarea>\n");
      out.write("                    </div>\n");
      out.write("<!--                    <div class=\"col-sm-4 mb-3\">\n");
      out.write("                        <label for=\"\">Image 1</label>\n");
      out.write("                        <input type=\"file\" name=\"img1\"  class=\"form-control\" >\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-4 mb-3\">\n");
      out.write("                        <label for=\"\">Image 2</label>\n");
      out.write("                        <input type=\"file\" name=\"img2\"  class=\"form-control\" >\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-4 mb-3\">\n");
      out.write("                        <label for=\"\">Image 3</label>\n");
      out.write("                        <input type=\"file\" name=\"img3\"  class=\"form-control\" >\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-4 mb-3\">\n");
      out.write("                        <label for=\"\">Image 4</label>\n");
      out.write("                        <input type=\"file\" name=\"img4\"  class=\"form-control\" >\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-4 mb-3\">\n");
      out.write("                        <label for=\"\">Image 5</label>\n");
      out.write("                        <input type=\"file\" name=\"img5\"  class=\"form-control\" >\n");
      out.write("                    </div>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"col-sm-12 mb-3\">\n");
      out.write("                        <input type=\"submit\" class=\"btn btn-primary w-100\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- main area End-->\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("        <!--footer-->\n");
      out.write("        <div class=\"container-fluid bg-dark text-white py-2 mt-5 mb-0 footer\">\n");
      out.write("            <p class=\"text-center m-0\">© 2024. All rights reserved. Saltside Technologies</p>\n");
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
