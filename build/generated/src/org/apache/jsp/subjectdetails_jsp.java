package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class subjectdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/confile.jsp");
  }

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

      out.write('\n');
      out.write('\n');
      out.write(' ');

    String driver="com.mysql.jdbc.Driver";
    Class.forName(driver).newInstance();
    Connection con=null;
    ResultSet rst=null;
    Statement stmt=null;
    
try {
    String url="jdbc:mysql://localhost/timetable?user=root&password=root";
    con=DriverManager.getConnection(url);
    stmt=con.createStatement();
    }
catch(Exception e){
    System.out.println(e.getMessage());
}

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("<A href=\"mainpage.jsp\"> Home </A> <BR>\n");

    String t1=request.getParameter("text1");
  String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");

if(t2!=null&&t2!="")
stmt.executeUpdate("insert into SubjectTab values('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "')");
out.println("Record saved successful");

      out.write("\n");
      out.write("\n");
      out.write("<table border=\"0\"> \n");
      out.write("<tr><td height =\"100\" width=\"25%\"></td><td>\n");
      out.write("\n");
      out.write("<form method=\"POST\"    action=\"admincoursedetails.jsp\">\n");
      out.write("<table border=\"0\"> \n");
      out.write("            <tr> <td height=\"40\"> Course Name </td> <td>\n");
      out.write("        \n");
      out.write("                    ");
      out.write("\n");
      out.write("                        \n");
      out.write("                </td></tr>\n");
      out.write("            <tr> <td height=\"40\"> Subject Name</td> <td><input type=\"text\" name=\"text2\" value=\"\"></td></tr>\n");
      out.write("            <tr> <td height=\"40\">Semester</td>\n");
      out.write("                <td><select name=\"text3\" size=\"1\">\n");
      out.write("                        <option>1</option>\n");
      out.write("                        <option>2</option>\n");
      out.write("                        <option>3</option>\n");
      out.write("                        <option>4</option>\n");
      out.write("                        <option>5</option>\n");
      out.write("                        <option>6</option>\n");
      out.write("                    </select>                  \n");
      out.write("        </td>\n");
      out.write("            <tr> <td height=\"40\"> Details</td> <td> <input type=\"text\" name=\"text4\" value=\"\"></td></tr>\n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("</table>");
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
