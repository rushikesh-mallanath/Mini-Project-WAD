<%-- 
    Document   : viewattendance
    Created on : 27 Jan, 2020, 9:38:32 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        body
          {
            height: 100%;
            background-image:url(image/login.jpg);
            background-size: cover;
          }
     table{
            font-family: Calibri; 
            color:blue; 
            font-size:30px; 
            font-style: normal;
            font-weight: bold;
            background-color:lightskyblue;
            border: 2px solid navy;
          }
    input[type=text],input[type=password]
         {
           width:60%;
           padding:10px 8px;
           margin:8px 0;
           display:inline-block;
           border:1px solid #ccc;
           box-sizing:border-box;
         }
         td{
             background-color:lightcyan;
            border:3px solid #ccc;
         }
          h1
         {
            margin:0;
            background-image:url(image/home1.jpg);
            text-shadow:2px 3px white;
            text-align: center;
            color:red;
            font-style: italic;
            font-size:70px;
            background-size: cover;
         }
        </style>
    </head>
    <body>
        <%
                    Connection conn=null;
                    Statement st=null;
                    ResultSet rs=null;
               try{
                   out.print(session.getAttribute("enrn"));
                    Class.forName("com.mysql.jdbc.Driver");
                    conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");
                    st=conn.createStatement();
                       String qry ="select * from attendance where enrnumber='"+session.getAttribute("enrn")+"'";
                       rs=st.executeQuery(qry);
                   while(rs.next())
                        {
             %>
      <h1>-:View Profile:-</h1>
      <table align="center" cellpadding = "10">
          <tr>
             <td>DATE</td>
             <td><%= rs.getString(4) %></td>
        </tr>
          <tr>
             <td>SUBJECT</td>
             <td><%= rs.getString(6) %></td>
        </tr>
        <tr>
             <td>TYPE</td>
             <td><%= rs.getString(7) %></td>
        </tr>
        <tr>
             <td>STATUS</td>
             <td><%= rs.getString(8) %></td>
        </tr>
        <tr>
             <td>FULL NAME:</td>
             <td><%= rs.getString(4) %></td>
        </tr>
      
     
            </table>
        </td>
     </tr>
  </table>
  
  <%
      }
                 }catch(Exception ex)
                     {
                          out.print(ex.getMessage());
                     }
             %>
    </body>
</html>
