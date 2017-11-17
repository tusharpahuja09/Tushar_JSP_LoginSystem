<%-- 
    Document   : ShowEmpData
    Created on : Oct 10, 2014, 4:32:03 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Employee Detail</title>
    </head>
    <body>
         <%@page  import="java.sql.*" %>
        <%
            Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/uvadb", "root", "admin");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from emp where empno="+request.getParameter("veno"));  
            rs.next() ;
            String eno = rs.getString("EMPNO");
	    String enm=rs.getString("ENAME");
            String ejob = rs.getString("JOB");
            String esal = rs.getString("SAL");
           
            %>
        <table>
        <form method="POST" action="EmpUpdate.jsp" >
                    <tr><td>Employee No.</td><td><%=eno%><input type="hidden" name="vempno" value="<%=eno%>" /> </td></tr>
                     <tr><td>Name Of Employee </td><td><input type="text" name="vename" value="<%=enm%>" /> </td></tr>
                     <tr><td>Employee Designation  </td><td><input type="text" name="vjob" value="<%=ejob%> "/> </td></tr>
                     <tr><td>Salary Of Employee </td><td><input type="text" name="vsal" value="<%=esal%>" /> </td></tr>
                     <tr><td></td><td><input type="submit" name="btnsubmiyt" value="UPDATE" /> <input type="reset" name="btncancle" value="Cancle" /> </td></tr>
        </form>
        </table>
                     <%
                     rs.close();
                     stmt.close();
                     
                     %>
    </body>
</html>
