<%-- 
    Document   : markresult
    Created on : 27 Jan, 2020, 9:34:08 PM
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
        body{
            height: 100%;
            background-image:url(image/sendmessage.jpg);
            background-size: cover;
            color:hotpink;
        }
        </style>
    </head>
    <body>
           <% 
               Connection conn=null;
               Statement st=null;
               ResultSet rs=null;
               Class.forName("com.mysql.jdbc.Driver");
                    conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");
                    st=conn.createStatement();
                     
         %>
       <center>
 <form name="frm1" action="markattdata.jsp" method="get">
           <div style="margin-top: 100px; border: 2px solid orange; width: 70%; background-color: lightslategray; font:20px;"><br><br>
            Endroolment number:<input type="text" name="mat1" maxlength="30"/>   &nbsp;&nbsp;&nbsp;<input type="submit" value="select" formaction="selectenr.jsp" style="font-size:15px; width:5%;">Student Name:   
            <%
                                    String qry ="select fullname from student where enrnumber='"+session.getAttribute("enr")+"'";
                                     rs=st.executeQuery(qry); 
 while(rs.next())
                        {
                                 %>
          <input type="text" name="mat2" value="<%= rs.getString(1) %>">
            <%
                 session.removeAttribute("enr");
                }
%>
            
            <br><br><br>
        <table cellpadding = "10">
            <tr><td>
                    <input type="text" name="mat3" pattern="[0-9]{2}/[0-9]{2}/[0-9]{4}" title="Enter Date In DD/MM/YYYY Format" placeholder="enter today date" value="" ></td></tr>
                <tr>
                    <td>CLASS:</td>
                  <td><%
                      String qry1 ="select class from subject where steacher='"+session.getAttribute("tname")+"'";;
                                     rs=st.executeQuery(qry1); 
                                 %>
                          <select name="mat4">
                                 <%
                                   while(rs.next())
                                        {
                                          String n=rs.getString(1);
                                 %>
                               <option style="font-size:20PX;"> <%=n %></option>
                                 <%
                                         }
                                 %>
                            </select><br><br>                  </td>
                  <td>Subject:</td>
                  <td><%
                      String qry2 ="select subject from subject where steacher='"+session.getAttribute("tname")+"'";;
                                     rs=st.executeQuery(qry2); 
                                 %>
                          <select name="mat5">
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
                  </td>
                  <td>TYPE:</td>
                  <td><select name="mat6">
                        <option>theory</option>
                        <option>Practicle</option>
                      </select>
                  </td>
                </tr>
               <tr>
<td>Status:</td>
<td>
Present: <input type="radio" name="mat7" value="present" />
Absent: <input type="radio" name="mat7" value="absent" />
</td>
</tr>
                <tr>
<td colspan="2" align-left="20px">

</td>
</tr>
                </table>
        <input type="submit" value="ADD RESULT"><br><br>
        </div>
    </center>
    
</form>
    </body>
</html>