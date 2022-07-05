<%-- 
    Document   : ReplaceAttr
    Created on : 2019/2/24, 上午 10:37:43
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>替換 key1</h1>
        <%
            application.setAttribute("key1", "new value");
        %>
    </body>
</html>
