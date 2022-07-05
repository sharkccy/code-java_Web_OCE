<%-- 
    Document   : AddContextAttribute
    Created on : 2019/2/24, 上午 10:35:37
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
        <h1>示範加入新屬性到 Context 內觸發 Listener 執行</h1>
        <%
        application.setAttribute("key1","hello" );
        %>        
    </body>
</html>
