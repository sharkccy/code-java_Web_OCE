<%-- 
    Document   : index
    Created on : 2019/2/24, 上午 10:07:27
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
        <h1>Hello World!</h1>
        <a href="AddContextAttribute.jsp">新增屬性key1</a><br>
        <a href="ReplaceAttr.jsp">替換 key1</a><br>
        <a href="RemoveAttr.jsp">移除 key1</a><br>
        <a href="LogOut.jsp">登出</a><br>
        <a href="Login.jsp">登入</a><br>
        <%
            //設定session 1 分鐘 Timeout
            session.setMaxInactiveInterval(60);
        %>
    </body>
</html>
