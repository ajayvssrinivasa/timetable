package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class studentdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<script language=\"javascript\">\n");
      out.write("function Validate()\n");
      out.write("{\n");
      out.write("var x= document.form1.text2.value;\n");
      out.write("if (x.length<=0)\n");
      out.write("{\n");
      out.write("alert(\"Please enter the RegNo\");\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("y = document.form1.text5.value;\n");
      out.write("if(isNaN(y)||y.indexOf(\" \")!=-1)\n");
      out.write("{\n");
      out.write("alert(\"Enter numeric value\")\n");
      out.write("return false; \n");
      out.write("}\n");
      out.write("if (y.length!=10)\n");
      out.write("{\n");
      out.write("alert(\"enter 10 characters\");\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("var emailID = document.form1.text6.value;\n");
      out.write("atpos = emailID.indexOf(\"@\");\n");
      out.write("dotpos = emailID.lastIndexOf(\".\");\n");
      out.write("if (atpos < 1 || ( dotpos - atpos < 2 )) \n");
      out.write("{\n");
      out.write("alert(\"Please enter correct email ID\")\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<A href=\"adminmainpage1.jsp\"> Home </A> <BR> \n");
      out.write("\n");

String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");
String t5=request.getParameter("text5");
String t6=request.getParameter("text6");
String t7=request.getParameter("text7");



if(t2!=null&&t2!=""){
stmt.executeUpdate("insert into StudentTab values('" + t2 + "','abcd','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "','" + t7 + "')");
out.println("Record Saved Successful");
response.sendRedirect("adminstudentdetails.jsp");
}


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<table border=\"0\"> \n");
      out.write("<tr><td height =\"100\" width=\"25%\"></td><td>\n");
      out.write("\n");
      out.write("<form method=\"POST\"  name=\"form1\"  action=\"adminstudentdetails.jsp\">\n");
      out.write("<table border=\"0\"> \n");
      out.write("<tr> <td height=\"20\" colspan=\"2\"> <img style=\"-webkit-user-select: none\" src=\"images/studentdetails.bmp\"> </td> </tr>    \n");
      out.write("<tr> <td height=\"60\" colspan=\"2\"> </td> </tr> \n");
      out.write("<tr> <td height=\"40\"> RegNo </td> <td> <input type=\"text\" name=\"text2\" value=\"\"></td> </tr>\n");
      out.write("<tr> <td height=\"40\"> Student Name </td> <td> <input type=\"text\" name=\"text3\" value=\"\"></td> </tr>\n");
      out.write("<tr> <td height=\"40\"> Address </td> <td> <textarea  name=\"text4\" rows=\"5\" cols=\"20\"></textarea></td> </tr>\n");
      out.write("<tr> <td height=\"40\"> Mobile No </td> <td> <input type=\"text\" name=\"text5\" value=\"\"></td> </tr>\n");
      out.write("<tr> <td height=\"40\"> eMail Id </td> <td> <input type=\"text\" name=\"text6\" value=\"\"></td> </tr>\n");
      out.write("<tr> <td height=\"40\"> Course Doing  </td> <td> \n");
      out.write("\n");
 
rst=stmt.executeQuery("select Course_name from CourseTab order by Course_name");
out.println("<select  name=text7 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("Course_name")+ " </option>");
}
out.println("</select>");

      out.write("  \n");
      out.write("</td> </tr>    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<tr> <td height=\"40\">  </td> <td align=\"center\"> <input type=\"submit\" name=\"Save\" value=\"Save\" onclick=\"return Validate()\"></td> </tr>       \n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("</td><td width=\"25%\"></td></tr>\n");
      out.write("</table>\n");
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
