<%-- 
    Document   : pwdchangestep3
    Created on : Nov 3, 2014, 3:46:36 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Change</title>
    </head>
    <body>
         <%@page  import="java.sql.*" %>
         <% String pwd=request.getParameter("newpwd");
         Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/tushardb", "root", "admin");
             Statement stmt = con.createStatement(); 
            // String id=request.getParameter("rid");
             String qry="Update userinfo set Password='"+pwd+"' where UserId='"+request.getParameter("rid")+"'";
             stmt.executeUpdate(qry);  
             out.println("<h3>Password Sucessfully Changed</h3>") ;
         //out.println(qry);
         
         
         
         
         
         
         %>
        <a href = login.html> login from new Password</a> 
    </body>
</html>
