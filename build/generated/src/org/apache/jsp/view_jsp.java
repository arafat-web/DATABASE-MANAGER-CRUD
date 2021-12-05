package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.json.simple.*;
import java.sql.*;
import java.util.*;

public final class view_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 Class.forName("com.mysql.jdbc.Driver");
      out.write('\n');

//    JSONArray list = new JSONArray();
    Connection con = null;
    PreparedStatement ps;
    ResultSet resultSet;
//    JSONObject obj = new JSONObject();
    try {

        String sql = "select * from records";

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/student", "root", "");
        ps = con.prepareStatement(sql);
        resultSet = ps.executeQuery();

        if (!resultSet.next()) {
            out.print("0");
        } else {
            JSONArray array = new JSONArray();
            do {
                JSONObject obj = new JSONObject();
                obj.put("sl", resultSet.getString("SL"));
                obj.put("roll", resultSet.getString("roll"));
                obj.put("name", resultSet.getString("name"));
                obj.put("deptt", resultSet.getString("deptt"));
                obj.put("dob", resultSet.getString("dob"));
                array.add(obj.toString());
            } while (resultSet.next());
            out.print(array);
        }

//        while (resultSet.next()) {
//
//            String roll = resultSet.getString("roll");
//            String name = resultSet.getString("name");
//            String deptt = resultSet.getString("deptt");
//            String dob = resultSet.getString("dob");
//            obj.put("roll", roll);
//            obj.put("name", name);
//            obj.put("deptt", deptt);
//            obj.put("dob", dob);
//            list.add(obj);
//        }
//        out.println(list.toJSONString());
//        out.flush();
    } catch (Exception e) {
//        String errorMessage = "Exception caught : ";
//        out.println(errorMessage + e.toString());
//        return;
    } finally {
        if (con != null) {
            con.close();
        }
    }

      out.write('\n');
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
