<%-- 
    Document   : ques
    Created on : Oct 17, 2014, 4:31:41 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recovery options</title>
    </head>
    <body>
        <%@page  import="java.sql.*" %>
        <% String ques="";
        String ans="";
        String cid="";
                       
            try{
                
            Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/tushardb", "root", "admin");
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery("select * from userinfo where UserId='"+request.getParameter("id")+"'");
              rs.next() ;
               ques=rs.getString("Qus_For_Rem");
               ans=rs.getString("Ans_to_Rem");
              cid=rs.getString("UserId");
                       out.println(cid);
          
            }catch(Exception e )
        {
            out.println("<h3>Error : "+e.getMessage()+"<h3>");
        }
        %>
   <table>
       <form action="pwdchangestep1.jsp" method="POST">
           <tr><td>Question to Remember<input type="text" name="q" value="<%=ques%>" />
           <tr><td>Answer to Remember <input type="text" name="a" value="" />       
            <input type="hidden" name="ra" value="<%=ans%>" />
            <input type="hidden" name="rid" value="<%=cid%>" />
                   <input type="submit" name="btnsubmit" value="OK">
    </table>
    </body>
</html>
