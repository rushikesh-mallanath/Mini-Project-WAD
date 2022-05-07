<%-- 
    Document   : rschool
    Created on : 26 Jan, 2020, 9:33:23 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
         body
         {
            height: 100%;
            background-image:url(image/home1.jpg);
            background-size: cover;
        }
table{
  font-family: Calibri; 
  color:blue; 
  font-size:30px; 
  font-style: normal;
  font-weight: bold;
  background-color:lightpink;
  border: 2px solid navy
}
   input[type=text],input[type=password]{
      width:80%;
      padding:10px 8px;
      margin:8px 0;
      display:inline-block;
      border:1px solid #ccc;
      box-sizing:border-box;
      }
     
 h1{
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
    <body>
    <center>
        String name=request.getParameter("t1");
       String email=request.getParameter("t2"); 
       String name=request.getParameter("t3");
       String email=request.getParameter("t4");
       String name=request.getParameter("t5");
       String email=request.getParameter("t6"); 
       String name=request.getParameter("t7");
       String email=request.getParameter("t8");
       String name=request.getParameter("t9");
       String email=request.getParameter("t10"); 
       <form name="frm" action="rschooldata.jsp" method="get">
             <h1>Online Attendance And Performance Alert System</h1>
             <h2 style=" border:5px solid #f1f1f1; width: 20%"><img src="image/school.png" alt="Girl in a jacket" style="width:200px;height:150px;"><br>School Registration</h2>   </center>  
        <table align="center" cellpadding = "10">
                <tr>
                <td>Admin Username:</td>
                <td><input type="text" name="uname" maxlength="40" value=""/></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="text" name="pwd" maxlength="30" value=""/></td>
            </tr>
            <tr>
                <td>Collage name:</td>
                <td><input type="text" name="clgname" maxlength="30" value=""/></td>
            </tr>
            <tr>
                <td>Collage Code:</td>
                <td><input type="text" name="clgcode" maxlength="30" value=""/></td>
            </tr>
            <tr>
                <td>ADDRESS:<br /><br /></td>
                <td><textarea name="address" rows="4" cols="30" value=""></textarea></td>
            </tr>
            <tr>
                <td>EMAIL ID:</td>
                <td><input type="text" name="emailid" maxlength="100" value=""/></td>
            </tr>
            <tr>
                <td>MOBILE NUMBER:</td>
                <td><input type="text" name="mobile" maxlength="10" value=""/></td>
            </tr>
            <tr>
                <td>PIN CODE:</td>
                <td><input type="text" name="pin" maxlength="6" value=""/></td>
            </tr>
            <tr>
                <td>STATE:</td>
                <td><input type="text" name="state" maxlength="30" value=""/></td>
            </tr>
            <tr>
                <td>COUNTRY:</td>
                <td><input type="text" name="country" value=""/></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Submit" style="font-size:30px;"></td>
            </tr>
        </table>
    </form> 
</body>
</html>
