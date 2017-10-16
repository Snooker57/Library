package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\"> \n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\t<title>Login Page</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("\t<script src=\"js/jquery.min.js\"></script>\n");
      out.write("\t<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            .d1{\n");
      out.write("                background: url(image/bg.jpg);\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                width: 100%;\n");
      out.write("                height: 100%;\n");
      out.write("                background-position: center;\n");
      out.write("                background-size: cover;\n");
      out.write("                position: absolute;\n");
      out.write("            }\n");
      out.write("            .d2{\n");
      out.write("                margin:200px 450px;\n");
      out.write("                position:absolute;\n");
      out.write("            }\n");
      out.write("            .content_box {\n");
      out.write("                height: auto;\n");
      out.write("                padding: 40px 0px 25px 40px;\n");
      out.write("                margin-top: 40px;\n");
      out.write("                border-radius: 3px;\n");
      out.write("                position: absolute;\n");
      out.write("                left: 0;\n");
      out.write("                _padding-left: 0;\n");
      out.write("                _margin-left: -73px;\n");
      out.write("                background: url(image/bg01.png);\n");
      out.write("            }\n");
      out.write("            .content_left {\n");
      out.write("                float: left;\n");
      out.write("                width: 395px;\n");
      out.write("                padding-right: 30px;\n");
      out.write("                text-align: left;\n");
      out.write("            }\n");
      out.write("            .content_left p {\n");
      out.write("                line-height: 22px;\n");
      out.write("                font-size: 14px;\n");
      out.write("                color: #ffffff;\n");
      out.write("                background-color: #8c7277;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("                text-align: left;\n");
      out.write("                padding: 10px 0;\n");
      out.write("            }\n");
      out.write("            .content_left p input {\n");
      out.write("                height: 22px;\n");
      out.write("                vertical-align: top;\n");
      out.write("                color: #ffffff;\n");
      out.write("                width: 200px;\n");
      out.write("                background-color: #8c7277;\n");
      out.write("                border: none;\n");
      out.write("                font-size: 16px;\n");
      out.write("                padding-left: 5px;\n");
      out.write("                outline: none;\n");
      out.write("            }\n");
      out.write("            .content_left p span {\n");
      out.write("                width: 78px;\n");
      out.write("                display: inline-block;\n");
      out.write("                padding-left: 10px;\n");
      out.write("                border-right: 1px solid #a69290;\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("            .login {\n");
      out.write("                width:367px;\n");
      out.write("                color: #ffffff;\n");
      out.write("                font-size: 18px;\n");
      out.write("                background: #514862;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 10px 0;\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("            .d3{\n");
      out.write("                float:right;\n");
      out.write("                margin-right: 20px;\n");
      out.write("            }\n");
      out.write("            .d3 a{\n");
      out.write("                font-size: 30px;\n");
      out.write("                color:#ccffff;\n");
      out.write("                font-family: -webkit-pictograph;\n");
      out.write("            }\n");
      out.write("            .d3 a:hover{\n");
      out.write("                color: #5f536d;\n");
      out.write("                text-decoration:none;\n");
      out.write("            }\n");
      out.write("            .forget:hover{\n");
      out.write("                text-decoration:none;\n");
      out.write("                font-size: 15px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head\n");
      out.write("    <body>\n");
      out.write("        <div class=\"d1\"> \n");
      out.write("            <div class=\"d3\">\n");
      out.write("                <a href=\"home.html\">Home</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"d2\">\n");
      out.write("                    <ul id=\"myTab\" class=\"nav nav-tabs\">\n");
      out.write("                        <li class=\"active\"><a href=\"#admin\" data-toggle=\"tab\">Admin</a></li>\n");
      out.write("                        <li><a href=\"#user\" data-toggle=\"tab\">User</a></li>\n");
      out.write("                        <li><a href=\"#clerk\" data-toggle=\"tab\">Clerk</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <div id=\"myTabContent\" class=\"tab-content\">\n");
      out.write("                        <div class=\"tab-pane fade in active\" id=\"admin\">\n");
      out.write("                            <div class=\"content_box\">\n");
      out.write("                                <div class=\"content_left\">\n");
      out.write("                                    <form action='loginC1.jsp'>\n");
      out.write("                                        <p>\n");
      out.write("                                            <span>ID</span><input name=\"txtOperid\" tabindex=\"1\" id=\"txtOperid\" type=\"text\" value=\"");
      out.print(request.getParameter("wuid"));
      out.write("\" required  oninvalid=\"setCustomValidity('Please fill in it')\" oninput=\"setCustomValidity('')\">\n");
      out.write("                                        </p>\n");
      out.write("                                        <p> \n");
      out.write("                                            <span>Password</span><input name=\"txtPwd\" tabindex=\"2\" id=\"txtPwd\" type=\"password\" required oninvalid=\"setCustomValidity('Please fill in it')\" oninput=\"setCustomValidity('')\">\n");
      out.write("                                        </p>\n");
      out.write("                                        <input type=\"submit\" value=\"Login\" class=\"login\"> \n");
      out.write("                                        <!--<a class=\"login\" id=\"btnLogin\" href=\"admin.html\">Login</a>-->\n");
      out.write("                                        <a class=\"forget\" href=\"fpassword.jsp?pass=+\"name>Forget？</a>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"tab-pane fade\" id=\"user\">\n");
      out.write("                            <div class=\"content_box\">\n");
      out.write("                                <div class=\"content_left\">\n");
      out.write("                                    <form action='loginC2.jsp'>\n");
      out.write("                                        <p>\n");
      out.write("                                            <span>ID</span><input name=\"txtOperid\" tabindex=\"1\" id=\"txtOperid\" type=\"text\">\n");
      out.write("                                        </p>\n");
      out.write("                                        <p> \n");
      out.write("                                            <span>Password</span><input name=\"txtPwd\" tabindex=\"2\" id=\"txtPwd\" type=\"password\">\n");
      out.write("                                        </p>\n");
      out.write("                                        <input type=\"submit\" value=\"Login\" class=\"login\"> \n");
      out.write("                                        <!--<a class=\"login\" id=\"btnLogin\" href=\"admin.html\">Login</a>-->\n");
      out.write("                                        <a class=\"forget\" href=\"fpassword.jsp\">Forget？</a>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"tab-pane fade\" id=\"clerk\">\n");
      out.write("                            <div class=\"content_box\">\n");
      out.write("                                <div class=\"content_left\">\n");
      out.write("                                    <form action='loginC3.jsp'>\n");
      out.write("                                        <p>\n");
      out.write("                                            <span>ID</span><input name=\"txtOperid\" tabindex=\"1\" id=\"txtOperid\" type=\"text\" value=\"\">\n");
      out.write("                                        </p>\n");
      out.write("                                        <p> \n");
      out.write("                                            <span>Password</span><input name=\"txtPwd\" tabindex=\"2\" id=\"txtPwd\" type=\"password\">\n");
      out.write("                                        </p>\n");
      out.write("                                        <input type=\"submit\" value=\"Login\" class=\"login\"> \n");
      out.write("<!--                                        <a class=\"login\" id=\"btnLogin\" href=\"admin.html\">Login</a>-->\n");
      out.write("                                        <a class=\"forget\" href=\"fpassword.jsp\">Forget？</a>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    <script>\n");
      out.write("        var error1=\"");
      out.print(request.getParameter("error"));
      out.write("\";\n");
      out.write("        if(error1==\"yes\")\n");
      out.write("        {\n");
      out.write("            alert(\"Login failed. Please login again...\");\n");
      out.write("        }\n");
      out.write("        var name = document.getElementById(\"txtOperid\").value;\n");
      out.write("        if(name==\"null\")\n");
      out.write("            document.getElementById(\"txtOperid\").value=\"\";\n");
      out.write("    </script>\n");
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
