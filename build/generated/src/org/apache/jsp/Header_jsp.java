package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>NiMOPS: Header</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"mystyle.css\">\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.js\"></script>\n");
      out.write("\t\n");
      out.write("\t<style>\n");
      out.write("\t    img.bg {\n");
      out.write("                    /* Set rules to fill background */\n");
      out.write("                    min-height: 100%;\n");
      out.write("                    min-width: 1024px;\n");
      out.write("\n");
      out.write("                    /* Set up proportionate scaling */\n");
      out.write("                    width: 100%;\n");
      out.write("                    height: auto;\n");
      out.write("\n");
      out.write("                    /* Set up positioning */\n");
      out.write("                    position: fixed;\n");
      out.write("                    top: 0;\n");
      out.write("                    left: 0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @media screen and (max-width: 1024px){\n");
      out.write("                    img.bg {\n");
      out.write("                            left: 50%;\n");
      out.write("                            margin-left: -512px; }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #page-wrap { position: relative; width: 400px; margin: 50px auto; padding: 20px; background: white; -moz-box-shadow: 0 0 20px black; -webkit-box-shadow: 0 0 20px black; box-shadow: 0 0 20px black; }\n");
      out.write("            p { font: 15px/2 Georgia, Serif; margin: 0 0 30px 0; text-indent: 40px; }\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <img src=\"Header.jpg\" alt=\"...\" class=\"bg\">\n");
      out.write("        \n");
      out.write("    <div id=\"page-wrap\">\n");
      out.write("        <a href=\"loginpage.jsp\">\n");
      out.write("            <font>\n");
      out.write("                Sign In\n");
      out.write("            </font>\n");
      out.write("        </a>\n");
      out.write("    </div>   \n");
      out.write("\t\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
