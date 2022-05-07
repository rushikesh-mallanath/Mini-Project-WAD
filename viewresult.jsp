<%-- 
    Document   : viewresult
    Created on : 27 Jan, 2020, 9:37:02 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            font-size: 20px;
        }
        </style>
    </head>
    <body>
            <center>

        <div style="margin-top: 150px; border: 2px solid orange; width: 50%">
        <br>
        <table cellpadding = "10">
                <tr>
                  <td>EXAM TYPE:</td>
                  <td><select>
                        <option value="">ALL TYPE</option>
                        <option value="">CLASS</option>
                        <option value="">PRACTICE</option>
                      </select>
                  </td>
                  <td>SUBJECT:</td>
                  <td><select>
                        <option value="">ALL SUBJECT</option>
                        <option value="">JAVA</option>
                        <option value="">MAD</option>
                        <option value="">OOP</option>
                      </select>
                  </td>
                </tr>
                <tr>
<td colspan="2" align-left="20px">

</td>
</tr>
                </table>
        <input type="submit" value="View Result In Tabel"><br><br>
        </div>
    </center>
    </body>
</html>
