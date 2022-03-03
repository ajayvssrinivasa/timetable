<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="confile.jsp"%>

<A href="adminmainpage1.jsp"> Home </A> <BR> 
<script type="text/javascript">
        function check1()
            {
            var x=document.forms["form1"]["text1"].value;
            if (x==null || x=="")
            {
            alert("First name must be filled out");
            return false;
            }

// Mobile No        
           var m1=document.forms["form1"]["text6"].value;
           if(m1.length!=10)
           {
                    alert("Not a valid Mobile No");
                    return false;
           }
           
            
            var x=document.forms["form1"]["text7"].value;
            var atpos=x.indexOf("@");
            var dotpos=x.lastIndexOf(".");
            if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
            {
            alert("Not a valid e-mail address");
            return false;
            }


            }
    </script>

<%
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
stmt.executeUpdate("insert into stafftab value('" + t1 + "','" + p1 + "','" + t2 + "','" + t3 + "','" + t6 + "','" + t7 + "','" + t8 + "')");
out.println("Record Saved Successful");
//response.sendRedirect("mainpage.jsp");
}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST" name="form1" onsubmit="return check1()"  action="staffdetails.jsp">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="C:\Users\Jay\Desktop\project files\empdetails.bmp"> </td> </tr>    
<tr> <td height="60" colspan="2"> </td> </tr> 
<tr> <td height="40"> EmpCode </td> <td> <input type="text" name="text1" value=""></td> </tr>
<tr> <td height="40"> Password </td> <td> <input type="password" name="pass1" value="abcd"></td> </tr>
<tr> <td height="40"> Emp Name </td> <td> <input type="text" name="text2" value=""></td> </tr>
<tr> <td height="40"> Address </td> <td> <Textarea  name="text3" cols="20" > </textarea></td> </tr>





<tr> <td height="40"> Mobile No </td> <td> <input type="text" name="text6" value=""></td> </tr>
<tr> <td height="40"> eMail Id </td> <td> <input type="text" name="text7" value=""></td> </tr>

<tr> <td height="40"> Qualification Name </td> <td> 

<% 
rst=stmt.executeQuery("select Qualification_name from QualificationTab order by Qualification_name");
out.println("<select  name=text8 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("Qualification_name")+ " </option>");
}
out.println("</select>");
%>  
</td> </tr>    





<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>

