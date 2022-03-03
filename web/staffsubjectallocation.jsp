<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="confile.jsp"%>



<A href="adminmainpage1.jsp"> Home </A> <BR> 

<%

String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");


if(t2!=null&&t2!=""){
    
    
    
stmt.executeUpdate("insert into StaffSubjectTab values('" + t1 + "','" + t2 + "','" + t3 + "')");
out.println("Record Saved Successful");

}

%>




<table border="0" width="100%" > 
<tr><td height ="100" width="25%"></td><td align="center">

<form method="POST"    action="staffsubjectallocation.jsp">
<table border="0" width="60%" align="center"> 
    
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

<tr> <td height="40"> Subject Name  </td> <td> 
<% 
rst=stmt.executeQuery("select Subject_name from SubjectTab order by Subject_name");
out.println("<select  name=text2 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("Subject_name")+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>    

<tr> <td height="40"> Staff Code  </td> <td> 
<% 
rst=stmt.executeQuery("select empcode from stafftab order by empcode");
out.println("<select  name=text3 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("empcode")+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>    



<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Signup" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>

