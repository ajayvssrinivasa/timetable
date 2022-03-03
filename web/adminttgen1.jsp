<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="confile.jsp"%>



<A href="adminmainpage1.jsp"> Home </A> <BR> 

<%

String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
session.setAttribute( "c1var", "" );
session.setAttribute( "s1var", "" );
if(t1!=null&&t1!=""){
session.setAttribute( "c1var", t1 );
session.setAttribute( "s1var", t2 );
response.sendRedirect("adminttgen2.jsp");
}

%>




<table border="0" width="100%" > 
<tr><td height ="100" width="25%"></td><td align="center">

<form method="POST"    action="adminttgen1.jsp">
<table border="0" width="60%" align="center"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/tt1.bmp"> </td> </tr>        
<tr> <td height="40"> Course Name  </td> <td> 

<% 
rst=stmt.executeQuery("select Course_name from CourseTab order by Course_name");
out.println("<select  name=text1 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("Course_name")+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>    

<tr> <td height="40"> Semester </td> <td> 
<select  name=text2 size=1>
<option>1</option>
<option>2 </option>
<option>3 </option>
<option>4 </option>
<option>5 </option>
<option>6 </option>
</select>
</td> </tr> 



<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Submit" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>
