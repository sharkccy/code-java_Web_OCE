package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class check_005flogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String account1 = request.getParameter("account");  //取出表單 的帳號
            session.setAttribute("userid", account1);  //儲存使用者的帳號
        
      out.write("\n");
      out.write("        ");

            String account = request.getParameter("account");
            String passwd = request.getParameter("passwd");            
        
      out.write("\n");
      out.write("        ");
      pojo.PasswordChecker passChecker = null;
      synchronized (_jspx_page_context) {
        passChecker = (pojo.PasswordChecker) _jspx_page_context.getAttribute("passChecker", PageContext.PAGE_SCOPE);
        if (passChecker == null){
          passChecker = new pojo.PasswordChecker();
          _jspx_page_context.setAttribute("passChecker", passChecker, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("passChecker"), "account",
 account );
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.handleSetProperty(_jspx_page_context.findAttribute("passChecker"), "passwd",
 passwd );
      out.write("\n");
      out.write("        ");

            passChecker.checkPass();
        
      out.write("\n");
      out.write("        <hr/>\n");
      out.write("        帳號: ");
      out.print( account );
      out.write(" <br/>\n");
      out.write("        密碼: ");
      out.print( passwd );
      out.write(" <br/>\n");
      out.write("        登入結果: ");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((pojo.PasswordChecker)_jspx_page_context.findAttribute("passChecker")).getResult())));
      out.write(" ( 1: 成功 0: 失敗 )\n");
      out.write("        <hr/>\n");
      out.write("        <a href=\"products.jsp\">商品查詢系統</a>\n");
      out.write("        <a href=\"shopping_cart.jsp\">購物車<a/>\n");
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
