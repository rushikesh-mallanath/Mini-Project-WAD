<%-- 
    Document   : addtimetabel
    Created on : 27 Jan, 2020, 9:25:40 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*" %>
 <!DOCTYPE html>
    <html>
       <head>
          <style>
              body{
                     height: 100%;
                     background-image:url(image/login.jpg);
                     background-size: cover;
                     color:white;
                  }
              div {
                     width: 40%;
                     font-family: Calibri; 
                     color:blue; 
                     font-size:30px; 
                     font-style: normal;
                     font-weight: bold;
                     background-color:lightblue;
                     border: 5px solid navy;
                  }
             select,option
                  {
                     font-size: 25px;
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
                      String qry ="select dname from department";
                     
                      rs=st.executeQuery(qry); 
         %>
  <center><br><br><br>
    <div>
        <form name="frm1" action="atdata.jsp" method="get">
            <h2>-:Add Timetabel:-</h2><hr><br>
                 <label><strong>Select Department:</strong></label>
                                 <% 
                                      rs=st.executeQuery(qry);     
                                 %>
                             <select name="att1">
                                 <%
                                      while(rs.next())
                                          {
                                            String n=rs.getString(1);
                                 %>
                                            <option> <%=n %></option>
                                 <%
                                         }
                                  %>
                             </select>
                               &nbsp;&nbsp;&nbsp;<input type="submit" value="select" formaction="selectclasst.jsp" style="font-size:15px;">
                            <br><br><label><strong>Select Class Name:</strong></label>
                                 <%
                                    String qry1 ="select cname from class where dname='"+session.getAttribute("sdname")+"'";
                                     rs=st.executeQuery(qry1);  
                                 %>
                             <select name="att2">
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
                 <input type="file" name="att3" style="font-size:20px;"><br><br>
                 <center><input type="submit" value="Add" style="align:center;font-size:25px;"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="viewtimetabel.jsp">View Timetabel</a></center><br>
           
     </div>
     </center>
         </form>
<%
        }catch(Exception ex)
         {
           out.print(ex.getMessage());
         }
     %>
</body>
</html>