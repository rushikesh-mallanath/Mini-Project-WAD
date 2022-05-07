<%-- 
    Document   : viewevent
    Created on : 27 Jan, 2020, 9:32:26 PM
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
          #myDIV 
            {
                 border: 2px solid orange;
                 margin-top: 100px;
                 height: 610px;
                 width:60%;
                 overflow: auto;
                 font-size:25PX;
                 text-align: center;
            }
           #content
            {
                 height: 800px;
                 width: 2000px;
            }
           tr,th,td
            {
              background-color:slategrey;
            }
      </style>
    </head>
    <body>
     <center>
         <h1>-:View Event:-</h1><br><br><br>
                   <% 
                        Connection conn=null;
                        Statement st=null;
                        ResultSet rs=null;
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");
                        st=conn.createStatement();
                        String qry ="select * from event where dname='"+session.getAttribute("dname")+"'";
                        rs=st.executeQuery(qry);
                    %>
        <div id="myDIV">
             <div id="content">
                 <table style="padding: 25px;">
                     <tr>
                          <th><b>DATE</b></th>
                          <th><b>TIME</b></th>
                          <th><b>EVENT INFORMATION</b></th>
                             
                     </tr>
                     <tr>
                           <%
                                rs=st.executeQuery(qry);
                              while(rs.next())
                                {
                           %>
                             <tr>
                                    <td><%=rs.getString(4)%></td>
                                     <td><%=rs.getString(5)%></td>
                                     <td><%=rs.getString(6)%></td>
                             </tr>
                          <%
                                }
                         %>
                     </tr>
               </table>
             </div>
        </div>
    </center>
                   <%
                       }catch(Exception ex)
                         {
                            out.print(ex.getMessage());
                        }
             %>
</body>
</html>