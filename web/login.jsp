<%-- 
    Document   : Login
    Created on : Apr 9, 2014, 6:14:50 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body bgcolor="red">
        <%@page import = "java.sql.*" %>
        <%
             try 
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/tushardb", "root", "admin");
            Statement stmt = con.createStatement();
            String qry="select * from userinfo where UserId = '"+request.getParameter("txtuname")+"' And Password = '"+request.getParameter("txtpass")+"'";
            //out.println("<h2>"+qry+"</h2>");
             ResultSet rs = stmt.executeQuery(qry);
             
             
             
                 if(rs.next())
                 {
                     out.println("<h1>Welcome...</h1>") ;
                     session.setAttribute("suid", request.getParameter("txtuname"));
                     %>
                     <form action="" method="post">
                    <table border="2" >                     
                        <tr><td><a href="updatepwdstep1.jsp">update Password</a></td></tr>
                        <tr><td><a href="updatecontactnostep1.jsp">update Contact_No</a></td></tr>
                        <tr><td><a href="updatedobstep1.jsp">update DOB</a></td></tr>
                    
                    
                    </table>
                     <%
                 }
                 else
                 {
                     response.sendRedirect("login.html");
                             
                 }
             
             
        }
             catch(Exception e)
             {
                 out.println("wrong id/password");
             }
             
             finally
             {
                 out.close();
             }
             
      %>
    </body>
</html>
