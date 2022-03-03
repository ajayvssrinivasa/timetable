
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="confile.jsp"%>

<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 
<BR>
<%
String t1=request.getParameter("text1");
String t2=request.getParameter("text2");

//stmt.executeUpdate("insert into books_details(book_name,author) values('"+bookname+"','"+author+"')");
if(t1!=null&&t1!=""){
stmt.executeUpdate("insert into CourseTab value('" + t1 + "','" + t2 + "')");
//out.println("Record Saved Successful");}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"    action="coursedetails.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/coursedetails.bmp"> </td> </tr>    
<tr> <td height="60" colspan="2"> </td> </tr> 
<tr> <td height="40"> Course Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
<tr> <td height="40"> Details </td> <td> <input type="text" name="text2" value=""></td> </tr>
<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Login" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>

