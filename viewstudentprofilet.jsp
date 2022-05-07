<%-- 
    Document   : viewstudentprofilet
    Created on : 23 Feb, 2020, 11:37:09 AM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
     <head>
        <style>
                    body
            {
            height: 100%;
            background-image:url(image/login.jpg);
            background-size: cover;
            color: white;
            font: 20px;  
            }
            #myDIV
            {
                border:2px solid blue;
              height:650px;
              width: 100%;
              overflow:auto;
            }
          #content
            {
              height: 8000px;
              width: 2000px;
            }
            select,option{
              
               font-size: 25px;
           }
            th{
               background-color:rgb(255, 208, 0);
               font-size:27px;
               border:2px solid blue;
           }
           td{
               text-align:center;
               font-size: 20px;
               border: 2px solid blueviolet;
               background-color: rgb(250, 221, 95);
           }
           table{
               float: left;
               border:2px solid brown;
           }
           th{
               font-size:27px;
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
                      String qry ="select class from subject where steacher='"+session.getAttribute("tname")+"'";;
                          rs=st.executeQuery(qry); 
                     
         %>
        <center>
            <form name="frm1" action="vsptdata.jsp" method="get">
                  <h2>-:View Student User:-</h2><hr>
                            <br><br><br><label><strong>Select Class Name:</strong></label>
                                 <%
                                     rs=st.executeQuery(qry); 
                                 %>
                             <select name="cst2" id="mySelect">
                                 <%
                                   while(rs.next())
                                        {
                                          String n=rs.getString(1);
                                 %>
                               <option style="font-size:20PX;"> <%=n %></option>
                                 <%
                                         }
                                 %>
                            </select><br><br>
                            <center><input type="submit" value="Add" style="align:center;font-size:25px;"/><br><br>
            </form>
                            <div id="myDIV">
                <div id="content">
                    <table style="align-content: right;"> 
                         <tr>
                            <th><b>Student name</b></th>
                            <th><b>Photo</b></th>  
                            <th><b>Username</b></th>
                             <th><b>password</b></th>
                            <th><b>Email ID</b></th>
                            <th><b>DOB</b></th>  
                            <th><b>Mobile</b></th>
                            <th><b>Parent Mobile</b></th>
                            <th><b>Address</b></th> 
                            <th><b>Opertion</b></th>
                            <th><b></b></th>
                         </tr>
                                <%
                                    
                                     String qry1="select * from student where cname='"+session.getAttribute("scs")+"'";;
                                     rs=st.executeQuery(qry1); 
                                     rs=st.executeQuery(qry1);
                              
                                        while(rs.next())
                                         {
                                  %>
                                  <tr>
                                   <td><%=rs.getString(3) %></td>
                                   <td><img src="<%=rs.getString(24) %>" alt="Student" style="width:100px;height:100px;"></td>
                                   <td><%=rs.getString(2) %></td>
                                   <td><%=rs.getString(3) %></td>
                                   <td><%=rs.getString(6) %></td>
                                   <td><%=rs.getString(5) %></td>
                                   <td><%=rs.getString(7) %></td>
                                   <td><%=rs.getString(8) %></td>
                                    <td><%=rs.getString(10) %></td>
                                    <td><img src="image/update.jpg" alt="Student" style="width:80px;height:80px;"></td>
                                    <td><img src="image/delete.jpg" alt="Student" style="width:80px;height:80px;"></td>
                                    
                                  </tr>
                                 
                                   <%
                                          }
                                    %>
                            </table>
                    </div>
                </div>
                           
                             <%
        }catch(Exception ex)
         {
           out.print(ex.getMessage());
         }
     %>
    </body>
</html>
