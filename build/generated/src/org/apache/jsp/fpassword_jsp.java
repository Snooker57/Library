package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class fpassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Forget Password Page</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/jquery.idcode.css\" />\n");
      out.write("\t<script src=\"js/jquery.min.js\"></script>\n");
      out.write("\t<script src=\"js/jquery.idcode.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            .d1{\n");
      out.write("                background: url(image/body_bg.jpg);\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                width: 100%;\n");
      out.write("                height: 100%;\n");
      out.write("                background-position: center;\n");
      out.write("                background-size: cover;\n");
      out.write("                position: absolute;\n");
      out.write("            }\n");
      out.write("            .d2{\n");
      out.write("                width: 800px;\n");
      out.write("                height: 400px;\n");
      out.write("                margin: 100px 280px;\n");
      out.write("                border: 1px #c3c4d0 solid;\n");
      out.write("                background: #fff;\n");
      out.write("                border-top: 2px #fa7d3c solid;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                font: 12px/1.3 'Arial','Microsoft YaHei';\n");
      out.write("                position: absolute;\n");
      out.write("            }\n");
      out.write("            .i_top {\n");
      out.write("                padding: 10px 0;\n");
      out.write("            }\n");
      out.write("            .i_top .title {\n");
      out.write("                font-size: 25px;\n");
      out.write("                text-align: center;\n");
      out.write("                display: block;\n");
      out.write("                font-weight: 500; \n");
      out.write("            }\n");
      out.write("            .i_mod {\n");
      out.write("                padding: 30px 0 100px;\n");
      out.write("                border-top: 1px #f2f2f5 solid;\n");
      out.write("                background: #fafafa;\n");
      out.write("                border-radius: 0 0 4px 4px;\n");
      out.write("                height: 160px;\n");
      out.write("            }\n");
      out.write("            .i_mod .tit{\n");
      out.write("                display: inline-block;\n");
      out.write("                width: 314px;\n");
      out.write("                margin-right: 3px;\n");
      out.write("                text-align: right;\n");
      out.write("                font-size: 18px;\n");
      out.write("                color: chocolate;\n");
      out.write("                font-family: Times New Roman;\n");
      out.write("            }\n");
      out.write("            .i_mod input{\n");
      out.write("                height: 23px;\n");
      out.write("                height: 23px\\9;\n");
      out.write("                line-height: 33px;\n");
      out.write("                line-height: 36px\\9;\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("                padding-left: 3px;\n");
      out.write("                color: #8F809F;\n");
      out.write("                margin-left: 20px;\n");
      out.write("            }\n");
      out.write("            input[type=\"submit\"]{\n");
      out.write("                background-color: #e69052;\n");
      out.write("                width:250px;\n");
      out.write("                height: 35px;\n");
      out.write("            }\n");
      out.write("            .i_mod .tit1{\n");
      out.write("                margin-right: 263px;\n");
      out.write("            }\n");
      out.write("            .i_mod .tit2{\n");
      out.write("                display: inline-block;\n");
      out.write("                width: 314px;\n");
      out.write("                text-align: right;\n");
      out.write("                font-size: 18px;\n");
      out.write("                color: chocolate;\n");
      out.write("                font-family: Times New Roman;\n");
      out.write("            }\n");
      out.write("            .d3{\n");
      out.write("                float: right;\n");
      out.write("                margin-right: 20px;\n");
      out.write("            }\n");
      out.write("            .d3 a{\n");
      out.write("                font-size: 30px;\n");
      out.write("                color:#7c7c87;\n");
      out.write("                font-family: -webkit-pictograph;\n");
      out.write("                text-decoration:none;\n");
      out.write("            }\n");
      out.write("            .d3 a:hover{\n");
      out.write("                color:  #e69052;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"d1\">\n");
      out.write("            <div class=\"d3\">\n");
      out.write("                <a href=\"login.jsp\">Back</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"d2\">\n");
      out.write("                <div class=\"i_top\">\n");
      out.write("                    <h3 class=\"title\">Reset Password</h3>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"i_mod\">\n");
      out.write("                    <form action=\"fpasswC.jsp\" name=\"form1\" onsubmit=\"return mycheck()\">\n");
      out.write("                        <p>\n");
      out.write("                            <span class=\"tit\">ID</span><input type=\"text\" name=\"tuid\" id=\"ttuid\" placeholder=\"Please enter valid ID\" value=\"");
      out.print(request.getParameter("pass"));
      out.write("\">\n");
      out.write("                        </p>\n");
      out.write("                        <p> \n");
      out.write("                            <span class=\"tit\">New Password</span><input name=\"npass\"  type=\"password\" id=\"p1\">\n");
      out.write("                        </p>\n");
      out.write("                        <p> \n");
      out.write("                            <span class=\"tit\">Confirm Password</span><input name=\"cpass\" id=\"p2\"  type=\"password\" onchange=\"check()\"><span id=\"tishi\"></span>\n");
      out.write("                        </p>\n");
      out.write("                         <p> \n");
      out.write("                            <span class=\"tit2\">Verification Code</span>\n");
      out.write("                            <input type=\"text\" id=\"Txtidcode\"/>\n");
      out.write("                            <span id=\"idcode\"></span>\n");
      out.write("                        </p>\n");
      out.write("                        <br>\n");
      out.write("                        <p>\n");
      out.write("                            <span class=\"tit1\"></span>\n");
      out.write("                            <input type=\"submit\" value=\"Submit\" id=\"btns\">\n");
      out.write("<!--                            <button type=\"button\" id=\"btns\" >Submit</button>-->\n");
      out.write("                        </p>\n");
      out.write("                    </form>\n");
      out.write("<!--                    <script>\n");
      out.write("                       \n");
      out.write("                    </script>-->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    <script>\n");
      out.write("        $.idcode.setCode();\n");
      out.write("        var name = document.getElementById(\"ttuid\").value;\n");
      out.write("        if(name==\"null\"||name==null)\n");
      out.write("            document.getElementById(\"ttuid\").value=\"\";\n");
      out.write("        function check() \n");
      out.write("        {\n");
      out.write("            var p1 = document.getElementById(\"p1\").value;\n");
      out.write("            var p2 = document.getElementById(\"p2\").value;\n");
      out.write("            if(p1 == p2) \n");
      out.write("            {\n");
      out.write("                document.getElementById(\"tishi\").innerHTML=\"\";\n");
      out.write("                document.getElementById(\"btns\").disabled = false;\n");
      out.write("            }\n");
      out.write("            else \n");
      out.write("            {\n");
      out.write("                document.getElementById(\"tishi\").innerHTML=\"<font color='red'>Error!Please enter again!</font>\";\n");
      out.write("                document.getElementById(\"btns\").disabled = true;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        function mycheck()\n");
      out.write("        {\n");
      out.write("          for(var i=0;i<document.form1.elements.length-1;i++)\n");
      out.write("          {\n");
      out.write("            if(document.form1.elements[i].value==\"\")\n");
      out.write("            {\n");
      out.write("                alert(\"Please fill in all the content...\");\n");
      out.write("                document.form1.elements[i].focus();\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else{\n");
      out.write("                var IsBy = $.idcode.validateCode();\n");
      out.write("                if(IsBy==false){\n");
      out.write("                    alert(\"Please enter a valid Verification Code...\");\n");
      out.write("                    document.getElementById(\"Txtidcode\").value=\"\";\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                else\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("          }\n");
      out.write("          return true;\n");
      out.write("        }\n");
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
