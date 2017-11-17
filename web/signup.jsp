<%-- 
    Document   : accountregistration
    Created on : Oct 14, 2014, 4:20:34 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome to our Website</title>
       <h1>Welcome to our Site</h1>
    </head>
    <body>
        <%@page  import="java.sql.*" %>
        
        <%try {
             String id=request.getParameter("UserId");
           String pwd=request.getParameter("Password");
           String name=request.getParameter("UserName");
           String ques=request.getParameter("Qus_For_Rem");
           String ans=request.getParameter("Ans_to_Rem");
           String dt=request.getParameter("DOB");
           String pno=request.getParameter("Contact_No");
           String gen=request.getParameter("Gender");
            Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/tushardb", "root", "admin");
            String qry="insert into userinfo values ('"+id+"','"+pwd +"','"+name+"','"+ques +"','"+
                    ans+"','"+dt+"','"+pno+"','"+gen+"')";
          // out.println("<h3>"+qry+"</h3>");
            Statement stmt = con.createStatement();
          
           stmt.executeUpdate(qry);
          out.println("<h3>One Record Sucessfully Inserted...</h3>") ;
        }
        catch(Exception e )
        {
            out.println("<h3>Error : "+e.getMessage()+"<h3>");
        } 
           %> 
        </body>
</html>
