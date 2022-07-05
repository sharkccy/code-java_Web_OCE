<%-- 
    Document   : RemoveAttr
    Created on : 2019/2/24, 上午 10:37:26
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
        <h1>移除 key1</h1>
        <%
            application.removeAttribute("key1");
        %>
    </body>
</html>
