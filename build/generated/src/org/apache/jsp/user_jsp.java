package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class user_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("            function go()\n");
      out.write("            {\n");
      out.write("              document.getElementById('divGo').style.display='block'; \n");
      out.write("            }\n");
      out.write("            function detail()\n");
      out.write("            {\n");
      out.write("              document.getElementById('divDe').style.display='block'; \n");
      out.write("            }\n");
      out.write("            function view()\n");
      out.write("            {\n");
      out.write("              document.getElementById('divView').style.display='block'; \n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"g-header\" style=\" background-color: #f8f5d0\">\n");
      out.write("            <div class=\"g-wrap\">\n");
      out.write("                <div class=\"header-nav\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a class=\"curr\" href=\"javascript:void(0);\">Personal Center</a></li>\n");
      out.write("                        <li class=\"pipe\">|</li>\n");
      out.write("                        <li><a href=\"user1.jsp\">Borrow Book</a></li>\n");
      out.write("                        <li class=\"pipe\">|</li>\n");
      out.write("                        <li><a href=\"user2.jsp\">Return Book</a></li>\n");
      out.write("                        <li class=\"pipe\">|</li>\n");
      out.write("                        <li><a href=\"user3.jsp\">Compensation Ordinance</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <label class=\"laA\">User:</label>&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                    <a href=\"login.jsp\" class=\"lou\">Log out</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"g-content\">\n");
      out.write("            <div class=\"g-body g-pro-body\">\n");
      out.write("                <div class=\"g-body-mod pro-advantage-mod\" style=\"background-image:url(image/body_bg.jpg) \">\n");
      out.write("                    <div class=\"g-wrap\">\n");
      out.write("                        <div class=\"g-main\" style=\"margin-left: 220px\">\n");
      out.write("                            <form>\n");
      out.write("                                <p>\n");
      out.write("                                    <label>ID</label>\n");
      out.write("                                    <input type=\"text\" class=\"in\">\n");
      out.write("                                </p>\n");
      out.write("                                <p>\n");
      out.write("                                    <label>Password</label>\n");
      out.write("                                    <input type=\"password\" class=\"in\">\n");
      out.write("                                </p>\n");
      out.write("                                <p>\n");
      out.write("                                    <label>Name</label>\n");
      out.write("                                    <input type=\"text\" class=\"in\">\n");
      out.write("                                </p>\n");
      out.write("                                <p>\n");
      out.write("                                    <label>Phone</label>\n");
      out.write("                                    <input type=\"text\" class=\"in\">\n");
      out.write("                                </p>\n");
      out.write("                                <p>\n");
      out.write("                                    <label>Gender</label>\n");
      out.write("                                    <input type=\"radio\" name=\"r1\" class=\"ra\"><span>Male</span>\n");
      out.write("                                    <input type=\"radio\" name=\"r1\" class=\"ra\"><span>FeMale</span>\n");
      out.write("                                </p>\n");
      out.write("                                <p>\n");
      out.write("                                    <label>Address</label>\n");
      out.write("                                    <input type=\"text\" class=\"in\">\n");
      out.write("                                </p>\n");
      out.write("                                <br>\n");
      out.write("                                <p>\n");
      out.write("                                    <input type=\"button\" value=\"Add\" class=\"bu1\">\n");
      out.write("                                    <input type=\"button\" value=\"Reset\" class=\"bu2\">\n");
      out.write("                                </p>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div> \n");
      out.write("                <div class=\"g-body-mod pro-advantage-mod\">\n");
      out.write("                    <div class=\"g-wrap\">\n");
      out.write("                        <div class=\"g-main\" style=\"margin-left: 220px\">\n");
      out.write("                            <form>\n");
      out.write("                                <p>\n");
      out.write("                                    <label>Please select the ID:</label>\n");
      out.write("                                    <select name=CDs onchange=\"change(this);\" class=\"ra\" style=\" margin-left:20px;\"> \n");
      out.write("                                            <option selected=\"selected\">001\n");
      out.write("                                            <option value=\"CD\" >002 \n");
      out.write("                                            <option value=\"Singer\" >003 \n");
      out.write("                                    </select> \n");
      out.write("                                    <input type=\"button\" value=\"Go\" class=\"bu1\" onclick=\"go()\">\n");
      out.write("                                </p>\n");
      out.write("                                <div style=\" display: none\" id=\"divGo\">\n");
      out.write("                                    <p>\n");
      out.write("                                    <label>Password</label>\n");
      out.write("                                    <input type=\"password\" class=\"in\">\n");
      out.write("                                    </p>\n");
      out.write("                                    <p>\n");
      out.write("                                        <label>Name</label>\n");
      out.write("                                        <input type=\"text\" class=\"in\">\n");
      out.write("                                    </p>\n");
      out.write("                                    <p>\n");
      out.write("                                        <label>Phone</label>\n");
      out.write("                                        <input type=\"text\" class=\"in\">\n");
      out.write("                                    </p>\n");
      out.write("                                    <p>\n");
      out.write("                                        <label>Gender</label><label></label>\n");
      out.write("                                    </p>\n");
      out.write("                                     <p>\n");
      out.write("                                        <label>Address</label>\n");
      out.write("                                        <input type=\"text\" class=\"in\">\n");
      out.write("                                    </p>\n");
      out.write("                                    <br>\n");
      out.write("                                    <p>\n");
      out.write("                                        <input type=\"button\" value=\"Update\" class=\"bu1\">\n");
      out.write("                                        <input type=\"button\" value=\"Reset\" class=\"bu2\">\n");
      out.write("                                    </p>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"g-body-mod pro-advantage-mod\" style=\"background-image:url(image/body_bg.jpg) \">\n");
      out.write("                    <div class=\"g-wrap\">\n");
      out.write("                        <div class=\"g-main\">\n");
      out.write("                             <form>\n");
      out.write("                                <p>\n");
      out.write("                                    <label>Please select the ID:</label>\n");
      out.write("                                    <select name=CDs onchange=\"change(this);\" class=\"ra\" style=\" margin-left:20px;\"> \n");
      out.write("                                            <option selected=\"selected\">001\n");
      out.write("                                            <option value=\"CD\" >002 \n");
      out.write("                                            <option value=\"Singer\" >003 \n");
      out.write("                                    </select> \n");
      out.write("                                    <input type=\"button\" value=\"Details\" class=\"bu1\" onclick=\"detail()\">\n");
      out.write("                                </p>\n");
      out.write("                                <div style=\" display: none;margin-left: 30px;\" id=\"divDe\">\n");
      out.write("                                    <p>\n");
      out.write("                                        <label>Name:</label>\n");
      out.write("                                    </p>\n");
      out.write("                                    <p>\n");
      out.write("                                        <label>Phone:</label>\n");
      out.write("                                    </p>\n");
      out.write("                                    <p>\n");
      out.write("                                        <label>Gender:</label>\n");
      out.write("                                    </p>\n");
      out.write("                                    <p>\n");
      out.write("                                        <label>Address:</label>\n");
      out.write("                                    </p>\n");
      out.write("                                    <p>\n");
      out.write("                                        <input type=\"button\" value=\"Delete\" class=\"bu1\" style=\"margin-left: unset\">\n");
      out.write("                                    </p>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"g-body-mod pro-advantage-mod\">\n");
      out.write("                    <div class=\"g-wrap\">\n");
      out.write("                        <div class=\"g-main\">\n");
      out.write("                            <form>\n");
      out.write("                                <p>\n");
      out.write("                                    <label>Please select the ID:</label>\n");
      out.write("                                    <select name=CDs onchange=\"change(this);\" class=\"ra\" style=\" margin-left:20px;\"> \n");
      out.write("                                            <option selected=\"selected\">001\n");
      out.write("                                            <option value=\"CD\" >002 \n");
      out.write("                                            <option value=\"Singer\" >003 \n");
      out.write("                                    </select> \n");
      out.write("                                    <input type=\"button\" value=\"View\" class=\"bu1\" onclick=\"view()\">\n");
      out.write("                                </p>\n");
      out.write("                                <div style=\" display: none;margin-left: 30px;\" id=\"divView\">\n");
      out.write("                                    <p>\n");
      out.write("                                        <label>Name:</label>\n");
      out.write("                                    </p>\n");
      out.write("                                    <p>\n");
      out.write("                                        <label>Phone:</label>\n");
      out.write("                                    </p>\n");
      out.write("                                    <p>\n");
      out.write("                                        <label>Gender:</label>\n");
      out.write("                                    </p>\n");
      out.write("                                    <p>\n");
      out.write("                                        <label>Address:</label>\n");
      out.write("                                    </p>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"g-sidebar\">\n");
      out.write("                <ul class=\"lift-wrapper\">\n");
      out.write("                    <li><a href=\"javascript:void(0)\" class=\"lift-emit\" style=\"width:150px\">Add Clerk<i class=\"ico-state\"></i></a></li>\n");
      out.write("                    <li><a href=\"javascript:void(0)\" class=\"lift-emit\" style=\"width:150px\">Update Clerk<i class=\"ico-state\"></i></a></li>\n");
      out.write("                    <li><a href=\"javascript:void(0)\" class=\"lift-emit\" style=\"width:150px\">Delete Clerk<i class=\"ico-state\"></i></a></li>\n");
      out.write("                    <li><a href=\"javascript:void(0)\" class=\"lift-emit on\" style=\"width:150px\">View Clerk<i class=\"ico-state\"></i></a></li>\n");
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
