<%-- 
    Document   : newpwd
    Created on : Oct 30, 2014, 3:53:20 PM
    Author     : Work
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          </head>
    <body>
        <%@page import = "java.sql.*" %>
        <%@page import = "java.lang.*" %>
        <% Class.forName("com.mysql.jdbc.Driver").newInstance();
	    Connection con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/tushardb", "root", "admin");
             Statement stmt = con.createStatement(); 
              ResultSet rs = stmt.executeQuery("select * from userinfo where UserId='"+request.getParameter("rid")+"'");
    String id=request.getParameter("rid");         
String vans=request.getParameter("a");
String ans=request.getParameter("ra");

%><form action="pwdchangestep2.jsp" method="POST">
     <input type="hidden" name="rid" value="<%=id%>" />
     <input type="submit" name="btnsubmit" value="submit">
     </form>
     <%
if(vans.equals(ans))
{
    out.println("Change Password");
}
else
{
    out.println("wrong answer");
}
        
        %>    

</form>   
</body>
</html>
