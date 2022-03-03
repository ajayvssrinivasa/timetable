package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class staffdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<A href=\"adminmainpage1.jsp\"> Home </A> <BR> \n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("        function check1()\n");
      out.write("            {\n");
      out.write("            var x=document.forms[\"form1\"][\"text1\"].value;\n");
      out.write("            if (x==null || x==\"\")\n");
      out.write("            {\n");
      out.write("            alert(\"First name must be filled out\");\n");
      out.write("            return false;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("// Mobile No        \n");
      out.write("           var m1=document.forms[\"form1\"][\"text6\"].value;\n");
      out.write("           if(m1.length!=10)\n");
      out.write("           {\n");
      out.write("                    alert(\"Not a valid Mobile No\");\n");
      out.write("                    return false;\n");
      out.write("           }\n");
      out.write("           \n");
      out.write("            \n");
      out.write("            var x=document.forms[\"form1\"][\"text7\"].value;\n");
      out.write("            var atpos=x.indexOf(\"@\");\n");
      out.write("            var dotpos=x.lastIndexOf(\".\");\n");
      out.write("            if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)\n");
      out.write("            {\n");
      out.write("            alert(\"Not a valid e-mail address\");\n");
      out.write("            return false;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("    </script>\n");
      out.write("\n");

String t1=request.getParameter("text1");
String p1=request.getParameter("pass1");
String p2=request.getParameter("pass2");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");

String t6=request.getParameter("text6");
String t7=request.getParameter("text7");
String t8=request.getParameter("text8");
String t9="";

if(t1!=null&&t1!=""){
stmt.executeUpdate("insert into stafftab value('" + t1 + "','" + p1 + "','" + t2 + "','" + t3 + "','" + t6 + "','" + t7 + "','" + t8 + "','" + t9 + "')");
out.println("Record Saved Successful");
//response.sendRedirect("mainpage.jsp");
}


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<table border=\"0\"> \n");
      out.write("<tr><td height =\"100\" width=\"25%\"></td><td>\n");
      out.write("\n");
      out.write("<form method=\"POST\" name=\"form1\" onsubmit=\"return check1()\"  action=\"staffdetails.jsp\">\n");
      out.write("<table border=\"0\"> \n");
      out.write("<tr> <td height=\"20\" colspan=\"2\"> <img style=\"-webkit-user-select: none\" src=\"C:\\Users\\Jay\\Desktop\\project files\\empdetails.bmp\"> </td> </tr>    \n");
      out.write("<tr> <td height=\"60\" colspan=\"2\"> </td> </tr> \n");
      out.write("<tr> <td height=\"40\"> EmpCode </td> <td> <input type=\"text\" name=\"text1\" value=\"\"required></td> </tr>\n");
      out.write("<tr> <td height=\"40\"> Password </td> <td> <input type=\"password\" name=\"pass1\" value=\"abcd\"></td> </tr>\n");
      out.write("<tr> <td height=\"40\"> Emp Name </td> <td> <input type=\"text\" name=\"text2\" value=\"\"></td> </tr>\n");
      out.write("<tr> <td height=\"40\"> Address </td> <td> <Textarea  name=\"text3\" cols=\"20\" > </textarea></td> </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<tr> <td height=\"40\"> Mobile No </td> <td> <input type=\"text\" name=\"text6\" value=\"\"></td> </tr>\n");
      out.write("<tr> <td height=\"40\"> eMail Id </td> <td> <input type=\"text\" name=\"text7\" value=\"\"></td> </tr>\n");
      out.write("\n");
      out.write("<tr> <td height=\"40\"> Qualification Name </td> <td> \n");
      out.write("\n");
 
rst=stmt.executeQuery("select Qualification_name from QualificationTab order by Qualification_name");
out.println("<select  name=text8 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("Qualification_name")+ " </option>");
}
out.println("</select>");

      out.write("  \n");
      out.write("</td> </tr>    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<tr> <td height=\"40\">  </td> <td align=\"center\"> <input type=\"submit\" name=\"Save\" ></td> </tr>       \n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("</td><td width=\"25%\"></td></tr>\n");
      out.write("</table>\n");
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
