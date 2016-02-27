package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class dropdownmenu_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<script type=\"text/javascript\" >\n");
      out.write("function tabs(selectedtab) {    \n");
      out.write("    // contents\n");
      out.write("    var s_tab_content = \"tab_content_\" + selectedtab;   \n");
      out.write("    var contents = document.getElementsByTagName(\"div\");\n");
      out.write("    for(var x=0; x<contents.length; x++) {\n");
      out.write("        name = contents[x].getAttribute(\"name\");\n");
      out.write("        if (name == 'tab_content') {\n");
      out.write("            if (contents[x].id == s_tab_content) {\n");
      out.write("            contents[x].style.display = \"block\";                        \n");
      out.write("            } else {\n");
      out.write("            contents[x].style.display = \"none\";\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    }   \n");
      out.write("    // tabs\n");
      out.write("    var s_tab = \"tab_\" + selectedtab;       \n");
      out.write("    var tabs = document.getElementsByTagName(\"a\");\n");
      out.write("    for(var x=0; x<tabs.length; x++) {\n");
      out.write("        name = tabs[x].getAttribute(\"name\");\n");
      out.write("        if (name == 'tab') {\n");
      out.write("            if (tabs[x].id == s_tab) {\n");
      out.write("            tabs[x].className = \"active\";                       \n");
      out.write("            } else {\n");
      out.write("            tabs[x].className = \"\";\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    }     \n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    //the container\n");
      out.write("*{\n");
      out.write("    -webkit-box-sizing: border-box;\n");
      out.write("    -moz-box-sizing: border-box;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("}\n");
      out.write(".tab_wrap{\n");
      out.write("    border:1px solid #999;\n");
      out.write("    max-width:300px;\n");
      out.write("    width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("//style for tabs\n");
      out.write(".tabs {\n");
      out.write("    width: 100%;\n");
      out.write("    margin: auto;\n");
      out.write("    overflow: hidden;   \n");
      out.write("    background: #F9F9F9;\n");
      out.write("}\n");
      out.write(".tabs ul {\n");
      out.write("    list-style: none;\n");
      out.write("    overflow: hidden;\n");
      out.write("    padding: 0;\n");
      out.write("    margin: 0;      \n");
      out.write("}\n");
      out.write(".tabs li a {\n");
      out.write("    width:50%;  \n");
      out.write("    color: #444444;\n");
      out.write("    display: block;\n");
      out.write("    float: left;\n");
      out.write("    font-weight:bold;   \n");
      out.write("    padding: 10px;\n");
      out.write("    text-align: center;\n");
      out.write("    text-decoration: none;\n");
      out.write("    border:none;\n");
      out.write("    border-left:1px solid #d9d9d9;\n");
      out.write("    border-bottom:1px solid #d9d9d9;    \n");
      out.write("}\n");
      out.write(".tabs li a:hover {\n");
      out.write("    color: #7d7d7d; \n");
      out.write("    background:#FFFFFF;\n");
      out.write("}\n");
      out.write(".tabs li:first-child a {\n");
      out.write("    border-left:none;\n");
      out.write("}\n");
      out.write(".tabs li a.active {\n");
      out.write("    background:#FFFFFF;\n");
      out.write("    border:none;\n");
      out.write("    border-left:1px solid #d9d9d9;\n");
      out.write("    border-bottom:1px solid #FFFFFF;    \n");
      out.write("}\n");
      out.write(".tabs li:first-child a.active {\n");
      out.write("    border:none;\n");
      out.write("    border-bottom:1px solid #FFFFFF;    \n");
      out.write("}\n");
      out.write(".tabs li:last-child a.active {\n");
      out.write("    border:none;\n");
      out.write("    border-left:1px solid #d9d9d9;  \n");
      out.write("    border-bottom:1px solid #FFFFFF;    \n");
      out.write("}\n");
      out.write("\n");
      out.write("//style the content divs\n");
      out.write(".tab_content {\n");
      out.write("    background:#FFF;\n");
      out.write("    padding:0;\n");
      out.write("    display:none;   \n");
      out.write("}\n");
      out.write(".tab_content.active{\n");
      out.write("    display:block;  \n");
      out.write("}\n");
      out.write(".tab_content ul {\n");
      out.write("    margin:0px;\n");
      out.write("    padding:0px;\n");
      out.write("    list-style:none;    \n");
      out.write("}\n");
      out.write(".tab_content li {\n");
      out.write("    display:block;\n");
      out.write("    overflow: hidden;   \n");
      out.write("    border-bottom:1px solid #d6dde0;    \n");
      out.write("}\n");
      out.write(".tab_content li:last-child {\n");
      out.write("    border-bottom:none;\n");
      out.write("}\n");
      out.write(".tab_content li a {\n");
      out.write("    display:block;\n");
      out.write("    list-style:none;\n");
      out.write("    overflow: hidden;   \n");
      out.write("    padding:10px;           \n");
      out.write("    text-decoration:none;\n");
      out.write("    color:#444444;\n");
      out.write("}\n");
      out.write(".tab_content li a:hover {\n");
      out.write("    color:#000000;\n");
      out.write("    background:#F5F5F5; \n");
      out.write("}\n");
      out.write(".tab_content li small {\n");
      out.write("    color:#AAAAAA;\n");
      out.write("    font-size:11px;\n");
      out.write("    font-style:italic;\n");
      out.write("}\n");
      out.write(".tab_content li a:hover small {\n");
      out.write("    color:#AAAAAA;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<div class=\"tab_wrap\">\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"tabs\">\n");
      out.write("    <ul>\n");
      out.write("        <li><a name=\"tab\" id=\"tab_1\" href=\"javascript:void(0)\" onClick=\"tabs(1)\" class=\"active\">Popular</a></li>\n");
      out.write("        <li><a name=\"tab\" id=\"tab_2\" href=\"javascript:void(0)\" onClick=\"tabs(2)\">Recent</a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"tab_content\">\n");
      out.write("    <div id=\"tab_content_1\">\n");
      out.write("        <div class=\"tab_content active\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"#\">HTML Techniques<br /><small>2012 10 12</small></a></li>\n");
      out.write("                <li><a href=\"#\">HTML Techniques<br /><small>2012 10 12</small></a></li>\n");
      out.write("                <li><a href=\"#\">HTML Techniques<br /><small>2012 10 12</small></a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div id=\"tab_content\">\n");
      out.write("    <div id=\"tab_content_2\">\n");
      out.write("        <div class=\"tab_content\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"#\">2HTML Techniques<br /><small>2012 10 12</small></a></li>\n");
      out.write("                <li><a href=\"#\">2HTML Techniques<br /><small>2012 10 12</small></a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
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
