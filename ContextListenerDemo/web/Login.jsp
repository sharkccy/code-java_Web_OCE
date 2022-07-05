<%-- 
    Document   : Login
    Created on : 2019/2/24, 上午 11:52:07
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
        <h1>Login</h1>
        <%
            //利用session強制設定isLogin為yes
            session.setAttribute("isLogin", "yes");            
        %>
    </body>
</html>
