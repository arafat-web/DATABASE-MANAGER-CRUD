package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>JSP AJAX CRUD System</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"resorces/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"resorces/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"resorces/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"resorces/popper.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"\">\n");
      out.write("            <header class=\"bg-primary\">\n");
      out.write("                <h1 class=\"text-white text-center p-4\">\n");
      out.write("                    Student Record System\n");
      out.write("                </h1>\n");
      out.write("            </header>\n");
      out.write("\n");
      out.write("            <article class=\"border border-light container-fluid\">\n");
      out.write("\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-xl-4 col-md-4 col-sm-12 \">\n");
      out.write("\n");
      out.write("                        <form method=\"post\" action=\"\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"roll\">Roll:</label>\n");
      out.write("                                <input type=\"number\" class=\"form-control\" placeholder=\"Enter Roll\" id=\"roll\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"name\">Full Name:</label>\n");
      out.write("                                <input type=\"text\" class=\"form-control\" placeholder=\"Enter Full Name\" id=\"name\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"deptt\">Department:</label>\n");
      out.write("                                <select class=\"form-control\" id=\"deptt\">\n");
      out.write("                                    <option selected=\"true\" disabled=\"true\">Select</option>\n");
      out.write("                                    <option>CSE</option>\n");
      out.write("                                    <option>EEE</option>\n");
      out.write("                                    <option>FDT</option>\n");
      out.write("                                    <option>AIDT</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"date\">Date of Birth:</label>\n");
      out.write("                                <input type=\"date\" class=\"form-control\" id=\"date\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"form-group\" align=\"right\">\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-info\" id=\"add\">Submit</button>\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-warning\" id=\"reset\">Reset</button>\n");
      out.write("                            </div>\n");
      out.write("                    </div>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                    <div class=\"col-xl-8 col-md-8 col-sm-12\">\n");
      out.write("                        <h2>Data Table</h2> \n");
      out.write("                        <input class=\"form-control\" id=\"myInput\" type=\"text\" placeholder=\"Search..\">\n");
      out.write("                        <br>\n");
      out.write("                        <table class=\"table table-bordered\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>Roll</th>\n");
      out.write("                                    <th>Full Name</th>\n");
      out.write("                                    <th>Dept</th>\n");
      out.write("                                    <th>Birthday</th>\n");
      out.write("                                    <th class=\"text-center\" colspan=\"2\">Action</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody id=\"myTable\">\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>John</td>\n");
      out.write("                                    <td>Doe</td>\n");
      out.write("                                    <td>john@example.com</td>\n");
      out.write("                                    <td>30-11-2021</td>\n");
      out.write("                                    <td><button type=\"button\" class=\"btn btn-success\">Edit</button></td>\n");
      out.write("                                    <td><button type=\"button\" class=\"btn btn-danger\">Del</button></td>\n");
      out.write("                                </tr>\n");
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </article>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("\n");
      out.write("                $(\"#add\").click(function () {\n");
      out.write("                    var isNew = true;\n");
      out.write("                    if ($(\"#form\").valid()) {\n");
      out.write("                        var url = \"\";\n");
      out.write("                        var data = \"\";\n");
      out.write("                        var method;\n");
      out.write("\n");
      out.write("                        if (isNew === true) {\n");
      out.write("                            url = \"add.jsp\";\n");
      out.write("                            data = $(\"#form\").serialize();\n");
      out.write("                            method = \"POST\";\n");
      out.write("                        }\n");
      out.write("                        $.ajax({\n");
      out.write("                            type: method,\n");
      out.write("                            url: url,\n");
      out.write("                            dataType: 'JSON',\n");
      out.write("                            data: data,\n");
      out.write("                            success: function (data) {\n");
      out.write("                                if (isNew === true) {\n");
      out.write("                                    alert(\"success\");\n");
      out.write("                                }\n");
      out.write("                            }\n");
      out.write("                        });\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
