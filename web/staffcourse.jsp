<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="confile.jsp"%>
<%@ page import="java.text.*,java.util.*" %>


<A href="staffmainpage.jsp"> Staff Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>
<form method="POST"    action="staffattn2.jsp">
    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/attn1.bmp"> </td> </tr>   
   <tr> <td height="40"> Course   </td> <td> 
   
<% 
rst=stmt.executeQuery("select Course_name from CourseTab order by Course_name");
out.println("<select  name=text7 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("Course_name")+ " </option>");
}
out.println("</select>");
DateFormat fmt1 = new SimpleDateFormat("yyyy:MM:dd");
String dvar = fmt1.format(new java.util.Date());
%>  
     </td> </tr>    
     
      <tr> <td height="40"> Attendance Date   </td> <td> 
 <%=dvar%>
     </td> </tr>    
     
 <tr> <td height="40">  </td> <td align="center"> <input type="submit" value="Select" ></td> </tr>       
    </table>
        </form>

</td><td width="25%"></td></tr>
</table>
