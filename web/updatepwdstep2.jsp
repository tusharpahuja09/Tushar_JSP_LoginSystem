<%-- 
    Document   : updatepwdstep2
    Created on : Nov 4, 2014, 4:33:35 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Password Step-2</title>
    </head>
    <body>
         <%@page import = "java.sql.*" %>
         <%
        Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/tushardb", "root", "admin");
            Statement stmt = con.createStatement();
            String id=session.getAttribute("suid").toString();
             ResultSet rs = stmt.executeQuery("select Password from userinfo where UserId='"+id+"'");
        rs.next();
        String oldpwd=request.getParameter("oldpwd");
        String pwd=rs.getString("Password");
        if(pwd.equals(oldpwd))
        {
           response.sendRedirect("updatepwdstep3.jsp");
        }
        else
        {
            out.println("wrong password");
        }
        
        
        %>
        
    </body>
        </html>
