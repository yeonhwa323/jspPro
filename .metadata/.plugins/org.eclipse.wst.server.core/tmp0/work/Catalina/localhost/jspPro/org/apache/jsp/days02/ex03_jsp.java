/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.88
 * Generated at: 2024-04-19 02:39:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.days02;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ex03_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

  String contextPath = request.getContextPath();

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"EUC-KR\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"http://localhost/jspPro/images/SiSt.ico\">\r\n");
      out.write("<!-- <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js\"></script> -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"/jspPro/resources/cdn-main/example.css\">\r\n");
      out.write("<script src=\"/jspPro/resources/cdn-main/example.js\"></script>\r\n");
      out.write("<style>\r\n");
      out.write(" span.material-symbols-outlined{\r\n");
      out.write("    vertical-align: text-bottom;\r\n");
      out.write(" }\r\n");
      out.write("</style>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"/resources/demos/style.css\">\r\n");
      out.write("  <script src=\"https://code.jquery.com/jquery-3.6.0.js\"></script>\r\n");
      out.write("  <script src=\"https://code.jquery.com/ui/1.13.2/jquery-ui.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("  $( function() {\r\n");
      out.write("    $( \"#tabs\" ).tabs();\r\n");
      out.write("  } );\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<header>\r\n");
      out.write("  <h1 class=\"main\"><a href=\"#\" style=\"position: absolute;top:30px;\">yeon HOme</a></h1>\r\n");
      out.write("  <ul>\r\n");
      out.write("    <li><a href=\"#\">로그인</a></li>\r\n");
      out.write("    <li><a href=\"#\">회원가입</a></li>\r\n");
      out.write("  </ul>\r\n");
      out.write("</header>\r\n");
      out.write("<h3>\r\n");
      out.write("  <span class=\"material-symbols-outlined\">view_list</span> jsp days00\r\n");
      out.write("</h3>\r\n");
      out.write("<div>\r\n");
      out.write("  <xmp class=\"code\">\r\n");
      out.write("     *** 1. JSP\r\n");
      out.write("     	  get 방식 요청\r\n");
      out.write("     	  post 방식 요청  \r\n");
      out.write("     	\r\n");
      out.write("     *** 2. 서블릿\r\n");
      out.write("     	  get 방식 요청 - doGet()\r\n");
      out.write("     	  post 방식 요청 - doPost()      \r\n");
      out.write("    \r\n");
      out.write("    실습 예)\r\n");
      out.write("    	ㄴ Info.java 서블릿 클래스 선언\r\n");
      out.write("    	ㄴ /days02/info.htm  URL 매핑 	\r\n");
      out.write("     	     \r\n");
      out.write("  </xmp> \r\n");
      out.write("  \r\n");
      out.write("  <div id=\"tabs\">\r\n");
      out.write("  <ul>\r\n");
      out.write("    <li><a href=\"#tabs-1\">get 방식 요청</a></li>\r\n");
      out.write("    <li><a href=\"#tabs-2\">post 방식 요청</a></li>\r\n");
      out.write("    \r\n");
      out.write("  </ul>\r\n");
      out.write("  <div id=\"tabs-1\">\r\n");
      out.write("    <p>\r\n");
      out.write("    	1. 웹 브라우저 : 주소창 URL 입력 후 요청 <br>\r\n");
      out.write("    	2. a 링크 태그 <br>\r\n");
      out.write("    	3. location.href <br>\r\n");
      out.write("    	4. form method=\"get\" <br>\r\n");
      out.write("    	<br>    	\r\n");
      out.write("    	정수 : <input type=\"text\" id=\"n\" name=\"n\" value=\"10\"><br>\r\n");
      out.write("    	<a href=\"ex03_ok.jsp\">ex03_ok.jsp</a>\r\n");
      out.write("    </p>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div id=\"tabs-2\">\r\n");
      out.write("    <p>\r\n");
      out.write("    <!-- action=\"\" , method=\"get\" --> <!-- get방식이 기본임 -->\r\n");
      out.write("    	<form>\r\n");
      out.write("            Name : <input type=\"text\" id=\"name\" name=\"name\" value=\"홍길동\"><br>\r\n");
      out.write("            Age : <input type=\"text\" id=\"age\" name=\"age\" value=\"20\"><br>      \r\n");
      out.write("            \r\n");
      out.write("            <input type=\"radio\" name=\"method\" value=\"get\" checked=\"checked\">GET 요청\r\n");
      out.write("            <input type=\"radio\" name=\"method\" value=\"post\" >POST 요청\r\n");
      out.write("            <br> \r\n");
      out.write("            <button type=\"button\">전송(submit)</button>\r\n");
      out.write("         </form>      \r\n");
      out.write("    </p>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("	<script>\r\n");
      out.write("		$(\"#tabs-2 button\").on(\"click\", function() {\r\n");
      out.write("			let method = $(\":radio[name=method]:checked\").val(); // \"get\" or \"post\"\r\n");
      out.write("			$(this)\r\n");
      out.write("				.parent()   //<form>\r\n");
      out.write("					//.attr(\"method\", method)\r\n");
      out.write("					//.attr(\"action\", \"");
      out.print( contextPath );
      out.write("/days02/ex03_ok_02.jsp\") \r\n");
      out.write("					.attr({\r\n");
      out.write("						\"method\":method,\r\n");
      out.write("						//\"action\":\"");
      out.print( contextPath );
      out.write("/days02/ex03_ok_02.jsp\"\r\n");
      out.write("						\"action\":\"");
      out.print( contextPath );
      out.write("/days02/info.htm\"\r\n");
      out.write("					})\r\n");
      out.write("					.submit();\r\n");
      out.write("		});\r\n");
      out.write("\r\n");
      out.write("		$(\"#tabs-1 a\").on(\"click\", function() {\r\n");
      out.write("			/*  [1]\r\n");
      out.write("			let n = $(\"#n\").val();\r\n");
      out.write("			let oldHref = $(this).attr(\"href\");  // \"ex03_ok.jsp\"\r\n");
      out.write("			let newHref = `${oldHref}?n=${n}`; // \"ex03_ok.jsp?n=10\"\r\n");
      out.write("			$(this).attr(\"href\", newHref);     \r\n");
      out.write("			 */\r\n");
      out.write("\r\n");
      out.write("			// [2]\r\n");
      out.write("			$(this).attr(\"href\", function(i, oldHref) {\r\n");
      out.write("				let n = $(\"#n\").val();\r\n");
      out.write("				return oldHref + `?n=${n}`;\r\n");
      out.write("			});\r\n");
      out.write("\r\n");
      out.write("		});\r\n");
      out.write("	</script>\r\n");
      out.write("	\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
