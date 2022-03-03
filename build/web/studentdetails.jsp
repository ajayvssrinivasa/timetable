<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="confile.jsp"%>

<script language="javascript">
function Validate()
{
var x= document.form1.text1.value;
if (x.length<=0)
{
alert("Please enter the RegNo");
return false;
}




y = document.form1.text5.value;
if(isNaN(y)||y.indexOf(" ")!=-1)
{
alert("Enter numeric value")
return false; 
}
if (y.length!=10)
{
alert("enter 10 characters");
return false;
}


var emailID = document.form1.text6.value;
atpos = emailID.indexOf("@");
dotpos = emailID.lastIndexOf(".");
if (atpos < 1 || ( dotpos - atpos < 2 )) 
{
alert("Please enter correct email ID")
return false;
}

}
</script>


<A href="adminmainpage1.jsp"> Home </A> <BR> 

<%
    String t1=request.getParameter("text1");
//String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");
String t5=request.getParameter("text5");
String t6=request.getParameter("text6");
String t7=request.getParameter("text7");



if(t1!=null&&t1!=""){
stmt.executeUpdate("insert into StudentTab values('" + t1 + "','abcd','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "','" + t7 + "')");
out.println("Record Saved Successful");
response.sendRedirect("studentdetails.jsp");
}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"  name="form1"  action="studentdetails.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="C:\Users\Jay\Desktop\project files\studentdetails.bmp"> </td> </tr>    
<tr> <td height="60" colspan="2"> </td> </tr> 
<tr> <td height="40"> RegNo </td> <td> <input type="text" name="text1" value=""></td> </tr>

<tr> <td height="40"> Student Name </td> <td> <input type="text" name="text3" value=""></td> </tr>
<tr> <td height="40"> Address </td> <td> <textarea  name="text4" rows="5" cols="20"></textarea></td> </tr>
<tr> <td height="40"> Mobile No </td> <td> <input type="text" name="text5" value=""></td> </tr>
<tr> <td height="40"> eMail Id </td> <td> <input type="text" name="text6" value=""></td> </tr>
<tr> <td height="40"> Course Doing  </td> <td> 

<% 
rst=stmt.executeQuery("select Course_name from CourseTab order by Course_name");
out.println("<select  name=text7 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("Course_name")+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>    





<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" value="Save" onclick="return Validate()"></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>
