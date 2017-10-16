package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class user1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head lang=\"zh-cn\">\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>User Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/base.css\">\n");
      out.write("        <style>\n");
      out.write("            label{\n");
      out.write("                height: 42px;\n");
      out.write("                width: 65px;\n");
      out.write("                line-height: 42px;\n");
      out.write("                font-size: 14px;\n");
      out.write("                color: #666;\n");
      out.write("                font-weight: 700;\n");
      out.write("            }\n");
      out.write("            .in{\n");
      out.write("                display: block;\n");
      out.write("                height: 2px;\n");
      out.write("                width: 240px;\n");
      out.write("                padding: 11px 10px;\n");
      out.write("                border: 2px solid #8e9eb1;\n");
      out.write("                font-size: 14px;\n");
      out.write("                color: #666;\n");
      out.write("            }\n");
      out.write("            .ra{\n");
      out.write("                margin-left: 30px;\n");
      out.write("            }\n");
      out.write("            span{\n");
      out.write("                line-height: 42px;\n");
      out.write("                font-size: 14px;\n");
      out.write("            }\n");
      out.write("            .bu1{\n");
      out.write("                margin-left: 5px;\n");
      out.write("                width: 100px;\n");
      out.write("                height: 28px;\n");
      out.write("                background-color: cadetblue;\n");
      out.write("                border: 2px;\n");
      out.write("                font-size: 16px;\n");
      out.write("            }\n");
      out.write("            .bu2{\n");
      out.write("                margin-left: 48px;\n");
      out.write("                width: 100px;\n");
      out.write("                height: 28px;\n");
      out.write("                background-color: cadetblue;\n");
      out.write("                border: 2px;\n");
      out.write("                font-size: 16px;\n");
      out.write("            }\n");
      out.write("            .lou{\n");
      out.write("                margin-top: 8px;\n");
      out.write("                float:right;\n");
      out.write("            }\n");
      out.write("            .lou:hover{\n");
      out.write("                font-size: 20px;\n");
      out.write("            }\n");
      out.write("            .laA{\n");
      out.write("                margin-left: 100px;\n");
      out.write("            }\n");
      out.write("            select.ra {\n");
      out.write("                width: 120px;\n");
      out.write("                height: 26px;\n");
      out.write("                margin-left: 53px;\n");
      out.write("                font-size: 15px;\n");
      out.write("                border: 2px solid #8e9eb1;\n");
      out.write("            }\n");
      out.write("            .idgo{\n");
      out.write("                margin-left: 12px;\n");
      out.write("                height: 2px;\n");
      out.write("                width: 120px;\n");
      out.write("                padding: 11px 10px;\n");
      out.write("                border: 2px solid #8e9eb1;\n");
      out.write("                font-size: 14px;\n");
      out.write("                color: #666;\n");
      out.write("            }\n");
      out.write("            table.imagetable {\n");
      out.write("                margin-top: 30px;\n");
      out.write("                font-family: verdana,arial,sans-serif;\n");
      out.write("                font-size:11px;\n");
      out.write("                color:#333333;\n");
      out.write("                border-width: 1px;\n");
      out.write("                border-color: #999999;\n");
      out.write("                border-collapse: collapse;\n");
      out.write("            }\n");
      out.write("            table.imagetable th {\n");
      out.write("                background:#b5cfd2 url('image/cell-blue.jpg');\n");
      out.write("                border-width: 1px;\n");
      out.write("                padding: 8px;\n");
      out.write("                border-style: solid;\n");
      out.write("                border-color: #999999;\n");
      out.write("            }\n");
      out.write("            table.imagetable td {\n");
      out.write("                background:#dcddc0 url('image/cell-grey.jpg');\n");
      out.write("                border-width: 1px;\n");
      out.write("                padding: 8px;\n");
      out.write("                border-style: solid;\n");
      out.write("                border-color: #999999;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"g-header\" style=\" background-color: #f8f5d0\">\n");
      out.write("            <div class=\"g-wrap\">\n");
      out.write("                <div class=\"header-nav\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"user.jsp\">Personal Center</a></li>\n");
      out.write("                        <li class=\"pipe\">|</li>\n");
      out.write("                        <li><a class=\"curr\" href=\"javascript:void(0);\">Borrow Book</a></li>\n");
      out.write("                        <li class=\"pipe\">|</li>\n");
      out.write("                        <li><a href=\"user2.jsp\">Return Book</a></li>\n");
      out.write("                        <li class=\"pipe\">|</li>\n");
      out.write("                        <li><a href=\"user3.jsp\">Compensation Ordinance</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <label class=\"laA\">User:</label>&nbsp;&nbsp;&nbsp;&nbsp;<span>");
      out.print(session.getAttribute("sUserID1"));
      out.write("</span>\n");
      out.write("                    <a href=\"login.jsp\" class=\"lou\">Log out</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"g-content\">\n");
      out.write("            <div class=\"g-body g-pro-body\">\n");
      out.write("                <div class=\"g-body-mod pro-advantage-mod\" style=\"background-image:url(image/body_bg.jpg) \">\n");
      out.write("                    <div class=\"g-wrap\">\n");
      out.write("                        <div class=\"g-main\" style=\"margin-left: 220px\">\n");
      out.write("                            <form action=\"searchbook.jsp\">\n");
      out.write("                                <p>\n");
      out.write("                                    <label>Enter Book Title:</label>\n");
      out.write("                                    <input type=\"text\" class=\"in\" name=\"ttitle\" required style=\"display:inline;width:180px;margin-left: 10px\">\n");
      out.write("                                    <input type=\"submit\" value=\"Search\" class=\"bu1\" style=\"margin-left:10px\">\n");
      out.write("                                </p>\n");
      out.write("                            </form>\n");
      out.write("                            <!--点击Search 反馈-->\n");
      out.write("                                ");

                                request.setCharacterEncoding("UTF-8");
                                String btitle=session.getAttribute("btitle").toString();
                                if(btitle=="null"||btitle==null)
                                    btitle="";
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
                                
      out.write("\n");
      out.write("                                \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div> \n");
      out.write("                <div class=\"g-body-mod pro-advantage-mod\">\n");
      out.write("                    <div class=\"g-wrap\">\n");
      out.write("                        <div class=\"g-main\" style=\"margin-left: 220px\">\n");
      out.write("                                \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"g-sidebar\">\n");
      out.write("                <ul class=\"lift-wrapper\">\n");
      out.write("                    <li><a href=\"javascript:void(0)\" class=\"lift-emit\" style=\"width:150px\">Borrow Process<i class=\"ico-state\"></i></a></li>\n");
      out.write("                    <li><a href=\"javascript:void(0)\" class=\"lift-emit\" style=\"width:150px\">Borrow Records<i class=\"ico-state\"></i></a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/lift.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function(){\n");
      out.write("                $(\"a\").lift({\n");
      out.write("                    floorWrap:\".lift-wrapper\",floorSelector:\".g-body-mod\"\n");
      out.write("                }),\n");
      out.write("                window.openSDK=function(){ysf.open()}\n");
      out.write("            });\n");
      out.write("        </script>\n");
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
