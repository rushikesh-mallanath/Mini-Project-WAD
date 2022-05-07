<%-- 
    Document   : demo
    Created on : 17 Feb, 2020, 9:46:22 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*" %>
 <!DOCTYPE html>
   <html>
      <body>
          <p>Click the button to create a Date field.</p>

<button onclick="myFunction()">Try it</button>

<p><strong>Note:</strong> input elements with type="date" do not show as any date field/calendar in IE 11 and earlier versions.</p>

         <%  
           Connection conn=null;
           Statement st=null;
           ResultSet rs=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","root");
            st=conn.createStatement();
           String qry ="select dname from 0508department";
           rs=st.executeQuery(qry);
                             %>
                                <select name="act1">
                             <%
                                 while(rs.next())
                                    {
                                        String n=rs.getString(1);
                             %>
                                        <option value="d1"> <%=n %></option>
                            <%
                                    }
                                 String tname2=session.getAttribute("dname")+"class";
                                 String qry2 ="select cname from "+tname2+"";
                                 rs=st.executeQuery(qry2);  
                                      
                     
                             %>
                                    <select name="csc1" id="demo">
                                        <%
                                 while(rs.next())
                                    {
                                        String n=rs.getString(1);
                             %>
                                        <option> <%=n %></option><%
                                    }
                             %>
                                     </select>
                <%
                                
                              }catch(Exception ex)
         {
           out.print(ex.getMessage());
         }
           %>
	
<script>
function myFunction() {
  document.getElementById("demo").innerHTML = "Hello World!";
}
</script>

</body>
</html>
