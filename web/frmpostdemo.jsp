<%-- 
    Document   : frmpostdemo
    Created on : Apr 3, 2014, 6:19:29 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello <%=request.getParameter("t1") %> </title>
    </head>
    <body>
        <%
            out.println("<center><h1>Welcome Mr./Ms."+request.getParameter("t1") +" </h1></center>");
        %>
    </body>
</html>