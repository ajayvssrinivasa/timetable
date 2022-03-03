<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="confile.jsp"%>
<A href="mainpage.jsp"> Home </A> <BR>
<%
    String t1=request.getParameter("text1");
  String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");

if(t2!=null&&t2!="")
stmt.executeUpdate("insert into SubjectTab values('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "')");
//out.println("Record saved successful");
%>

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST"    action="subjectdetails.jsp">
<table border="0"> 
            <tr> <td height="40"> Course Name </td> <td>
        
                    <%
                        rst=stmt.executeQuery("select Course_name from CourseTab order by Course_name");
                        out.println("<select name=text1 size=1>");
                        while(rst.next())
                        {
                            out.println("<option>" +rst.getString("Course_name")+ "</option>");
                        }
                        out.println("</select>");
                        %>
                        
                </td></tr>
            <tr> <td height="40"> Subject Name</td> <td><input type="text" name="text2" value=""></td></tr>
            <tr> <td height="40">Semester</td>
                <td><select name="text3" size="1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                    </select>                  
        </td>
            <tr> <td height="40">Details </td> <td> <input type="text" name="text4" value=""></td></tr>
            <tr> <td height="40"> </td> <td> <input type="submit" name="Login"></td></tr>
</table>
</form>
</table>
                        