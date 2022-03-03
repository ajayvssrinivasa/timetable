<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="confile.jsp"%>

<A href="index.jsp">Home</a>  

<BR>
<%
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");
session.setAttribute( "Regnovar", "" );
if(t1!=null&&t1!=""){
rst=stmt.executeQuery("select * from studenttab where Regno= '" + t1 + "' and password='" + t2 + "'");
if (rst.next())
{out.println("Login Successful");
session.setAttribute( "Regnovar", t1 );
response.sendRedirect("staffmainpage.jsp");
}
else
{out.println("User Name or Password is not correct");
}
}
%>


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"    action="studentlogin.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/emplogin.bmp"> </td> </tr>    
<tr> <td height="60" colspan="2"> </td> </tr> 
<tr> <td height="40"> User Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
<tr> <td height="40"> Password </td> <td> <input type="password" name="text2" value=""></td> </tr>
<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Login" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>

