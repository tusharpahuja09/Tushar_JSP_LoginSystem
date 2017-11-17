<%-- 
    Document   : index
    Created on : Oct 7, 2014, 4:35:47 PM
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
        <h1 align="center">Welcome to This Session ... !!!</h1> <hr/>
        <%!int ctr=0;%>
    <center> <table border="1" width="30%">
            <tr><td><h3 align="center">You Are Visitor No. <%out.println(++ctr); %></h3></td><tr>
        </table></center><hr/>
        Current Date and Time:<%=new java.util.Date() %>;<br/>
        <%
            for(int i=0;i<7;i++)
                out.println("<br/><font face=arial size="+i+" color=red>Welcome...!!!</font>");
        %>
        
    </body>
</html>
