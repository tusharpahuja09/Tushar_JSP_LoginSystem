<%-- 
    Document   : EmpView
    Created on : Apr 3, 2014, 6:22:16 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Information</title>
    </head>
    <body>
        <%@page  import="java.sql.*" %>
        <%
        try 
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/uvadb", "root", "admin");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from emp");
            out.println("<table border=1 width=75% >");
            out.println("<tr><th>Employe ID <th>Name of Employee<th>Desingnation<th>Salary</th></tr>");
            out.println("<caption><h3>List of Employee "+"</h3></caption> ");
            while (rs.next()) 
            {
            String eno = rs.getString("EMPNO");
	    String enm=rs.getString("ENAME");
            String ejob = rs.getString("JOB");
            String esal = rs.getString("SAL");
            out.println("<tr><td><a href=ShowEmpData.jsp?veno="+eno+">"+eno+"<td>"+enm+"<td>"+ejob+"<td>"+esal+"</td></tr>");
             }
            out.println("</table>");
            
        }
        catch(Exception e )
        {
            out.println("<h3>Error : "+e.getMessage()+"<h3>");
        }
            
         %>
    </body>
</html>
