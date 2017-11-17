<%-- 
    Document   : updatecontactnostep2
    Created on : Nov 5, 2014, 4:17:26 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update contact number step-2</title>
    </head>
    <body>
        <%@page import = "java.sql.*" %>
        <% Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/tushardb", "root", "admin");
            Statement stmt = con.createStatement();
            String id=session.getAttribute("suid").toString();
            String qry="Update userinfo set Contact_No='"+request.getParameter("newcontact")+"' where UserId='"+id+"'";
            stmt.executeUpdate(qry);
            out.println("<h3>Contact Number Sucessfully Changed</h3>") ;
        %>
    </body>
</html>
