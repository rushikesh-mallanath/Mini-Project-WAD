<%-- 
    Document   : addsms
    Created on : 27 Jan, 2020, 9:26:37 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        body{
            height: 100%;
            background-image:url(image/sendmessage.jpg);
            background-size: cover;
            color:pink;
            font-size: 30px;
        }
     option{
      width:80%;
      padding:16px 8px;
      margin:8px 0;
      display:inline-block;
      border:1px solid #ccc;
      box-sizing:border-box;
      }
      
      div{
          width: 40%;
          border: 2px solid blue;
          background-color: lightyellow;
      }
        
    </style>
</head>
<body>
    <br><br><br>
<center>
    <div>
                <h2>-:Send SMS:-</h2>
                <table align="center" cellpadding = "10">
                <tr>
                  <td>Department Name:</td>
                  <td><select>
                        <option value="">ALL DEPARTMENT</option>
                        <option value="">Civil</option>
                        <option value="">E&tc</option>
                        <option value="">IT</option>
                      </select>
                  </td>
                </tr>
                <td>Class Name:</td>
                  <td><select>
                        <option value="">ALL CLASS</option>
                        <option value="">CO2I</option>
                        <option value="">CO3I</option>
                        <option value="">CO4I</option>
                      </select>
                  </td>
                </tr>
                <tr>
                    <td>Parent Mobile<br> Number:</td>
                  <td><select>
                        <option value="">ALL PARENT</option>
                        <option value="">Civil</option>
                        <option value="">E&tc</option>
                        <option value="">IT</option>
                      </select>
                  </td>
                </tr>
                <tr>
                  <td>Message Text:</td>
                  <td><textarea name="Address" rows="10" cols="30"></textarea></td>
                </tr>
            <tr>
                   </table>
                <br>
                <input type="submit" value="SEND MESSAGE" style="font-size: 25px" /><br><br>
    </div>
</body>
</html>