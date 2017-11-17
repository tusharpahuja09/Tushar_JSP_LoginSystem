<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Change Password</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
    </head>
    <body>
         <%@page  import="java.sql.*" %>
         <%@page import = "java.lang.*" %>
   <% Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/tushardb", "root", "admin");
             Statement stmt = con.createStatement();
             
              ResultSet rs = stmt.executeQuery("select * from userinfo where UserId='"+request.getParameter("rid")+"'");
    
    String id=request.getParameter("rid");
   
    
    
    %>
    <form action="pwdchangestep3.jsp" method="POST">
   <table border="1" cellpadding="3">
        <tr><td>Enter new Password<td><input type="password" name="newpwd" value=""></td></tr>
        <input type="hidden" name="rid" value="<%=id%>" />
        <tr><td><input type="submit" name="btnsubmit" value="submit"></td></tr>
    
       
        
        </form>
         </body>
</html>
