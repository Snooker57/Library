package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("</style>\n");
      out.write("    <script type=\"text/javascript\" src=\"js/pagination.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        //全局变量\n");
      out.write("        var numCount;       //数据总数量\n");
      out.write("        var columnsCounts;  //数据列数量\n");
      out.write("        var pageCount;      //每页显示的数量\n");
      out.write("        var pageNum;        //总页数\n");
      out.write("        var currPageNum ;   //当前页数\n");
      out.write("\n");
      out.write("        //页面标签变量\n");
      out.write("        var blockTable;\n");
      out.write("        var preSpan;\n");
      out.write("        var firstSpan;\n");
      out.write("        var nextSpan;\n");
      out.write("        var lastSpan;\n");
      out.write("        var pageNumSpan;\n");
      out.write("        var currPageSpan;\n");
      out.write("        window.onload=function(){\n");
      out.write("            //页面标签变量\n");
      out.write("            blockTable = document.getElementById(\"blocks\");\n");
      out.write("            preSpan = document.getElementById(\"spanPre\");\n");
      out.write("            firstSpan = document.getElementById(\"spanFirst\");\n");
      out.write("            nextSpan = document.getElementById(\"spanNext\");\n");
      out.write("            lastSpan = document.getElementById(\"spanLast\");\n");
      out.write("            pageNumSpan = document.getElementById(\"spanTotalPage\");\n");
      out.write("            currPageSpan = document.getElementById(\"spanPageNum\");\n");
      out.write("\n");
      out.write("            numCount = document.getElementById(\"blocks\").rows.length - 1;       //取table的行数作为数据总数量（减去标题行1）\n");
      out.write("            alert(numCount)\n");
      out.write("            columnsCounts = blockTable.rows[0].cells.length;\n");
      out.write("            pageCount = 5;\n");
      out.write("            pageNum = parseInt(numCount/pageCount);\n");
      out.write("            if(0 != numCount%pageCount){\n");
      out.write("                pageNum += 1;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            firstPage();\n");
      out.write("        };\n");
      out.write("    </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div >\n");
      out.write("    <table id=\"blocks\" class=\"table table-striped\" style=\"margin-top:25px\">\n");
      out.write("        <tr>\n");
      out.write("            <th>Height</th>\n");
      out.write("            <th>Time</th>\n");
      out.write("            <th >Hash</th>\n");
      out.write("            <th >Size (kB)</th>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"/block-height/424785\">424785</a> <font color=\"green\">(Main Chain)</font></td>\n");
      out.write("            <td>2016-08-12 02:05:22</td>\n");
      out.write("\n");
      out.write("            <td ><a href=\"/block-index/1134734/000000000000000002b480be703da2ad59a55c53052aecf8b6f6f35e640cc60d\">000000000000000002b480be703da2ad59a55c53052aecf8b6f6f35e640cc60d</a></td>\n");
      out.write("            <td>637.52</td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"/block-height/424784\">424784</a> <font color=\"green\">(Main Chain)</font></td>\n");
      out.write("            <td>2016-08-12 01:59:57</td>\n");
      out.write("\n");
      out.write("            <td><a href=\"/block-index/1134733/000000000000000002fb51f28a8747636cc7cc2e01a589eb18a13f9a201962e0\">000000000000000002fb51f28a8747636cc7cc2e01a589eb18a13f9a201962e0</a></td>\n");
      out.write("            <td>275.59</td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"/block-height/424782\">424782</a> <font color=\"green\">(Main Chain)</font></td>\n");
      out.write("            <td>2016-08-12 01:39:55</td>\n");
      out.write("\n");
      out.write("            <td><a href=\"/block-index/1134731/0000000000000000056ead77c44639db8a1db3841092c84415e133a28d2d1826\">0000000000000000056ead77c44639db8a1db3841092c84415e133a28d2d1826</a></td>\n");
      out.write("            <td>998.19</td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"/block-height/424781\">424781</a> <font color=\"green\">(Main Chain)</font></td>\n");
      out.write("            <td>2016-08-12 01:38:01</td>\n");
      out.write("\n");
      out.write("            <td><a href=\"/block-index/1134730/0000000000000000042dd6ff6e1517d41476edb85214de2ac38c490cfc28d748\">0000000000000000042dd6ff6e1517d41476edb85214de2ac38c490cfc28d748</a></td>\n");
      out.write("            <td>270.23</td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"/block-height/424778\">424778</a> <font color=\"green\">(Main Chain)</font></td>\n");
      out.write("            <td>2016-08-12 01:31:07</td>\n");
      out.write("\n");
      out.write("            <td><a href=\"/block-index/1134727/00000000000000000383b1b0eda2a2f13b38f762aeecd482af2ca3c82c27792e\">00000000000000000383b1b0eda2a2f13b38f762aeecd482af2ca3c82c27792e</a></td>\n");
      out.write("            <td>997.83</td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"/block-height/424760\">424760</a> <font color=\"green\">(Main Chain)</font></td>\n");
      out.write("            <td>2016-08-11 22:52:52</td>\n");
      out.write("\n");
      out.write("            <td><a href=\"/block-index/1134709/00000000000000000077be0493ffedc93a439bb30f553a287a39bdd71b3c21e5\">00000000000000000077be0493ffedc93a439bb30f553a287a39bdd71b3c21e5</a></td>\n");
      out.write("            <td>638.13</td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"/block-height/424754\">424754</a> <font color=\"green\">(Main Chain)</font></td>\n");
      out.write("            <td>2016-08-11 22:23:47</td>\n");
      out.write("\n");
      out.write("            <td><a href=\"/block-index/1134703/000000000000000003e1b4d2f2ef07469f9b1bc741c21acae7c811eef9ad9555\">000000000000000003e1b4d2f2ef07469f9b1bc741c21acae7c811eef9ad9555</a></td>\n");
      out.write("            <td>998.05</td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"/block-height/424749\">424749</a> <font color=\"green\">(Main Chain)</font></td>\n");
      out.write("            <td>2016-08-11 21:12:14</td>\n");
      out.write("\n");
      out.write("            <td><a href=\"/block-index/1134698/000000000000000000810a12db329d6c60b6d67e7c4a1b2d65212f8f567d7318\">000000000000000000810a12db329d6c60b6d67e7c4a1b2d65212f8f567d7318</a></td>\n");
      out.write("            <td>994.33</td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"/block-height/424732\">424732</a> <font color=\"green\">(Main Chain)</font></td>\n");
      out.write("            <td>2016-08-11 18:46:18</td>\n");
      out.write("\n");
      out.write("            <td><a href=\"/block-index/1134681/0000000000000000005359eef3594cc9f92da3ac9cf49d27986457788924d634\">0000000000000000005359eef3594cc9f92da3ac9cf49d27986457788924d634</a></td>\n");
      out.write("            <td>998.16</td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"/block-height/424730\">424730</a> <font color=\"green\">(Main Chain)</font></td>\n");
      out.write("            <td>2016-08-11 18:36:30</td>\n");
      out.write("\n");
      out.write("            <td><a href=\"/block-index/1134679/0000000000000000002e5bacfa2162eab79108c5c8f0c23e344c7b7b7d38b788\">0000000000000000002e5bacfa2162eab79108c5c8f0c23e344c7b7b7d38b788</a></td>\n");
      out.write("            <td>998.16</td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"/block-height/424716\">424716</a> <font color=\"green\">(Main Chain)</font></td>\n");
      out.write("            <td>2016-08-11 16:21:42</td>\n");
      out.write("\n");
      out.write("            <td><a href=\"/block-index/1134665/000000000000000004508a2286a0f78b6801b56062d852ea7b17e11b052ef161\">000000000000000004508a2286a0f78b6801b56062d852ea7b17e11b052ef161</a></td>\n");
      out.write("            <td>998.03</td>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td><a href=\"/block-height/424710\">424710</a> <font color=\"green\">(Main Chain)</font></td>\n");
      out.write("            <td>2016-08-11 15:10:04</td>\n");
      out.write("\n");
      out.write("            <td><a href=\"/block-index/1134659/000000000000000004670d4aa86aeed176cd28cccb3ff1f2dd42a97067d3e24e\">000000000000000004670d4aa86aeed176cd28cccb3ff1f2dd42a97067d3e24e</a></td>\n");
      out.write("            <td>0.21</td>\n");
      out.write("        </tr>\n");
      out.write("        \n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("    <div id=\"pagiDiv\" align=\"right\" style=\"width:1200px\">\n");
      out.write("        <span id=\"spanFirst\">First</span>&nbsp;&nbsp;\n");
      out.write("        <span id=\"spanPre\">Pre</span>&nbsp;&nbsp;\n");
      out.write("        <span id=\"spanNext\">Next</span>&nbsp;&nbsp;\n");
      out.write("        <span id=\"spanLast\">Last</span>&nbsp;&nbsp;\n");
      out.write("        The&nbsp;<span id=\"spanPageNum\"></span>&nbsp;Page/Total&nbsp;<span id=\"spanTotalPage\"></span>&nbsp;Page\n");
      out.write("    </div>\n");
      out.write("</div>\n");
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
