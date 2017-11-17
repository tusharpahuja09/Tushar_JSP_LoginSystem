<%-- 
    Document   : EmpUpdate
    Created on : Oct 10, 2014, 4:55:16 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <%@page  import="java.sql.*" %>
          <%
              try{
              String ujob=request.getParameter("vjob");
              String usal=request.getParameter("vsal");
              String ueno=request.getParameter("vempno");
              String uenm=request.getParameter("vename");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/uvadb", "root", "admin");
            Statement stmt = con.createStatement();
            String qry ="Update emp set JOB='"+ujob+"',SAL="+usal+" where empno="+request.getParameter("vempno") ; 
            //out.println("<h3>"+qry+"</h3>");
            stmt.executeUpdate(qry);  
             out.println("<h3>One Record Sucessfully Updated</h3>") ;
              }
               catch(Exception e )
        {
            out.println("<h3>Error : "+e.getMessage()+"<h3>");
        } finally {
            out.close();
        }
           
            %>
    </body>
</html>
