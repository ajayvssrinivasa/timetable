<%@ include file="confile.jsp"%>
<% 
    String t1=request.getParameter("text1");
    String t2=request.getParameter("text2");
    rst=stmt.executeQuery("select * from Adminlogin where uName='" + t1 + "' and pWord='" + t2 + "'");
    
            if(rst.next())
            {
                out.println("Login Successfull");
                response.sendRedirect("mainpage.html");
            }
            else
            {
                out.println("User name and password is not correct");
               
            }
            
%>