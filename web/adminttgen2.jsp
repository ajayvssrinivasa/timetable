<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="confile.jsp"%>

<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 
<BR>
<%

out.println("Successfully Generated the time table."+ "</br>");

int i=0;int j=0;int k=0;int m=0; int rand1=0;
String t1=(String)session.getAttribute( "c1var" );
String s1=(String)session.getAttribute( "s1var" );
stmt.executeUpdate("delete from TimeTableTab");
String[] stArray={"1.Mon", "2.Tue", "3.Wed", "4.Thu", "5.Fri"};
String[] subArray=new String[5];

int ch=0;

String word = "";String let1="";String staffvar="";

rst=stmt.executeQuery("select * from SubjectTab where Course_name='"+t1+"' and semester='"+s1+"' order by Subject_name");
while( rst.next())
{
subArray[i]=rst.getString("Subject_name");
i=i+1;
}



for(i=0;i<=4;i++)
{
  ch=0;
    word="";
    m=0;
    //out.println(j + "new set </br>");
    while (ch<1)
    {
    rand1= (int) (Math.random() * 5);
    let1=Integer.toString(rand1);
    //out.println(rand1);
    if(word.indexOf(let1) == -1)
    { word=word+let1;      m=m+1;  
    if(m>4) ch=101; 
    k=k+1;
    rst=stmt.executeQuery("select empcode from staffSubjectTab where Subject_name ='"+ subArray[rand1] +"'");
    if( rst.next())staffvar=rst.getString("empcode"); else staffvar="";
   //out.println("insert into TimeTableTab value(" + k + ",'" + t1 + "','" + s1 + "','"+ subArray[rand1] +"','"+ stArray[i] +"'," + j + ",'emp')");
    stmt.executeUpdate("insert into TimeTableTab value(" + k + ",'" + t1 + "','" + s1 + "','"+ subArray[rand1] +"','"+ stArray[i] +"'," + (m) + ",'"+ staffvar +"')");
    }
    //out.println(word + "</br>");
    }
    
    }
    




%>

<br><br>

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>


<table border="1" cellpadding="5" cellspacing="5"> 
<tr> <td height="20" colspan="14"> <img style="-webkit-user-select: none" src="images/tt1.bmp"> </td> </tr>   
<tr> <td> </td> <td> I Period </td> <td> II Period </td> <td> III Period </td> <td> IV Period </td>  <td> V Period </td> </tr>
<% 

rst=stmt.executeQuery("select * from TimeTableTab where ano < 26 order by aNo");
for( i=0;i<=4;i++)
{
    out.println("<tr> <td>"+stArray[i]+ "</td>");
    for( j=0;j<=4;j++)
    {   
    if( rst.next())
    {
    out.println("<td>"+rst.getString("Subject_name")+ "/" +rst.getString("empcode")+ "</td>" );
    }
    }
    out.println("</tr>");
}
%>  
</table>

</td><td width="25%"></td></tr>
</table>
