<%-- 
    Document   : updatepwdstep4
    Created on : Nov 4, 2014, 5:12:46 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update Password step-4</title>
    </head>
    <body>
         <%@page import = "java.sql.*" %>
          <%
        Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/tushardb", "root", "admin");
            Statement stmt = con.createStatement();
            String id=session.getAttribute("suid").toString();
             String qry="Update userinfo set Password='"+request.getParameter("newpwd")+"' where UserId='"+id+"'";
             stmt.executeUpdate(qry);  
             out.println("<h3>Password Sucessfully Changed</h3>") ;
          
            %>
    </body>
</html>
