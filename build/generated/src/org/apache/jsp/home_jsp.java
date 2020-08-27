package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
 Class.forName("com.mysql.jdbc.Driver");
PrintWriter outt = response.getWriter();

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <!-- Theme Made By www.w3schools.com - No Copyright -->\n");
      out.write("  <title>MandalaBus Home Page</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("  <style>\n");
      out.write("     \n");
      out.write("  .jumbotron {\n");
      out.write("    background-color: #f4511e;\n");
      out.write("    color: #fff;\n");
      out.write("    padding: 100px 25px;\n");
      out.write("  }\n");
      out.write("  .container-fluid {\n");
      out.write("      \n");
      out.write("    padding: 60px 50px;\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  .logo {\n");
      out.write("    font-size: 180px;\n");
      out.write("  }\n");
      out.write("  @media screen and (max-width: 768px) {\n");
      out.write("    .col-sm-4 {\n");
      out.write("      text-align: center;\n");
      out.write("      margin: 25px 0;\n");
      out.write("    }\n");
      out.write("  }\n");
      out.write(" \n");
      out.write(" \n");
      out.write("  </style>\n");
      out.write("   ");

   DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
   LocalDateTime now = LocalDateTime.now();   

      
      out.write("\n");
      out.write("</head>\n");
      out.write("<body style=\"background-color:#f4511e;\">\n");
      out.write("\n");
      out.write(" \n");
      out.write(" \n");
      out.write("\n");
      out.write("<div class=\"jumbotron text-center\" style=\"background-image: url(https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80); background-size: 100%;\">\n");
      out.write("    \n");
      out.write("    <img  src=\"images/MandalaBusIcon.png\" class=\"img-thumbnail\" style=\"width:20%;height:20%\"> <h1>MandalaBus</h1> \n");
      out.write("    \n");
      out.write("  <p>Your Journey is our Destination.</p> \n");
      out.write("  \n");
      out.write("  <form name=\"homeform\" class=\"form-inline\" action=\"/MandalaBus/nobuses.jsp\" method=\"post\">\n");
      out.write("      <div class=\"input-group\"><table>\n");
      out.write("              <tr><td><input type=\"text\" class=\"form-control\" size=\"50\" name=\"from\" placeholder=\"from city\" required/></td>\n");
      out.write("              <td><input type=\"text\" class=\"form-control\" size=\"50\" name=\"to\" placeholder=\"to city\" required/></td>\n");
      out.write("              <td><input type=\"date\" class=\"form-control\" name=\"jdate\" min= ");
      out.print(dtf.format(now));
      out.write(" value=\"\" required/> </td></tr></table>\n");
      out.write("       <div class=\"input-group-btn\">\n");
      out.write("          <input type=\"submit\" class=\"btn btn-danger\" value=\"search\">\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("<div class=\"text-right\" style=\"padding-right: 20px;\">\n");
      out.write("    <button type=\"button\" class=\"btn btn-warning\" onclick=\"newLocation()\">Cancel Tickets</button>\n");
      out.write(" <script>\n");
      out.write("    function newLocation() {\n");
      out.write("        window.location=\"http://localhost:8084/MandalaBus/CancelPage.jsp\";\n");
      out.write("    }\n");
      out.write("  </script>\n");
      out.write("</div>\n");
      out.write("<!-- Container (About Section) -->\n");
      out.write("<div class=\"container-fluid\" style=\"background-color:#f4511e;\">\n");
      out.write("  <div class=\"row\">\n");
      out.write("    <div class=\"col-sm-8\">\n");
      out.write("      <h4>Developers Of this Website</h4>\n");
      out.write("      <p>Khwaja Bilkhis (17311A0592)</p>   \n");
      out.write("      <p>Supraja Miryala(17311A0587)</p>  \n");
      out.write("      <p>Aishwarya Basani(17311A05B1)</p>   \n");
      out.write("      <p>Srivarsha Gobburi(17311A0561)</p>     \n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("     <div class=\"col-sm-4\">\n");
      out.write("      <span class=\"glyphicon glyphicon-globe logo\"></span>\n");
      out.write("    </div>\n");
      out.write("   \n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("       \n");
      out.write("</body>\n");
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
