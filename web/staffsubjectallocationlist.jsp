<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="confile.jsp"%>
<A href="mainpage.jsp"> Admin Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="C:\Users\Jay\Desktop\project files\staffsubject.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from StaffSubjectTab order by Course_name");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("Course_name")+ " </td> <td> " +rst.getString("Subject_name")+ "</td><td> " +rst.getString("empcode")+"</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>
