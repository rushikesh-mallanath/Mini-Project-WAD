<%-- 
    Document   : rschooldata
    Created on : 14 Feb, 2020, 4:13:57 PM
    Author     : Pankaj
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           
       String uname=request.getParameter("t1");
       String pwd=request.getParameter("t2");
       String clgname=request.getParameter("t3");
       String clgcode=request.getParameter("t4");
       String address=request.getParameter("t5");
       String emailid=request.getParameter("t6");
       String mobile=request.getParameter("t7");
       String pin=request.getParameter("t8");
       String state=request.getParameter("t9");
       String contry=request.getParameter("t10");
       
       Connection conn=null;
       Statement st=null;
       
       try{
       Class.forName("com.mysql.jdbc.Driver");
       conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/demo1","root","root");
       st=conn.createStatement();
       String qry ="INSERT INTO `user` (`name`,`email`) VALUES ('"+name+"', '"+email+"');";
       
       st.executeUpdate(qry);
       
       out.print("data is succefull insert");
       }catch(Exception ex)
       {
           out.print(ex.getMessage());
       }
       
               %>
    </body>
</html>