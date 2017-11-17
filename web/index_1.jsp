<%-- 
    Document   : index
    Created on : Apr 2, 2014, 6:11:43 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My First JSP Page</title>
    </head>
    <body>
    <center><h1>Welcome to This Session ....!!!</h1></center></hr>
    <%! int ctr=1; %>
    <% 
      out.println("<h3>Today is "+ new java.util.Date()+"</h3><br/>");
      for(int i=1;i<8;i++)
          out.println("<br/><font face=arial color= red size="+i+"> Welcome ...!!!</font>");
    out.println("<hr/><center><h2>You Are Visitor No. : "+(ctr++)+"</h2></center>");
    %>
    
    </body>
</html>
