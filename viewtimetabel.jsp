<%-- 
    Document   : viewtimetabel
    Created on : 21 Feb, 2020, 9:40:28 PM
    Author     : Pankaj
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
 <!DOCTYPE html>
    <html>
      <head>
        <style>
             body
             {
                  height: 100%;
                  background-image:url(image/login.jpg);
                  background-size: cover;
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
               Class.forName("com.mysql.jdbc.Driver");
                    conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");
                    st=conn.createStatement();
                      String qry ="select ttfile from timetabel ";
                      rs=st.executeQuery(qry);
                      
        %>
        <h1>-:View Timetabel:-</h1><br><br><br>
        
                   <%
                         rs=st.executeQuery(qry);
                         while(rs.next())
                              {
                   %>
                       <iframe src="<%= rs.getString(1)%>" frameborder=o style="width:100px;height:100px;"></iframe>
                   <%
                               }
               }catch(Exception ex)
                     {
                        out.print(ex.getMessage());
                    }
             %>
</body>
</html>