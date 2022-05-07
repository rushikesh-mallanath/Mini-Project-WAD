<%-- 
    Document   : viewtimetable
    Created on : 27 Jan, 2020, 9:31:53 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

</style>
</head>
<body>
<center>
    <div>
                 <h2>-:View Timetabel:-</h2>
                 <table align="center" cellpadding = "10">
                <tr>
                  <td>Department Name:</td>
                  <td><select>
                        <option value="">Computer</option>
                        <option value="">Civil</option>
                        <option value="">E&tc</option>
                        <option value="">IT</option>
                      </select>
                  </td>
                </tr>
                <tr>
                  <td>Class Name:</td>
                   <td><select>
                        <option value="">CO6I</option>
                        <option value="">CO5I</option>
                        <option value="">CO4I</option>
                        <option value="">CO3I</option>
                      </select>
                  </td>
                </tr></div>
                 </table>
                 <button onclick="" style="font-size: 20px;">View Timetable</button><br><br>
     </div>

     </center>
</body>
</html>
