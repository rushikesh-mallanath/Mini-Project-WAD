<%-- 
    Document   : selectenr
    Created on : 25 Feb, 2020, 11:43:07 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
                    session.setAttribute("enr",request.getParameter("mat1"));
                     response.sendRedirect("markattendance.jsp");
          %>
    </body>
</html>
