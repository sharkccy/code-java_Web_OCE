<%-- 
    Document   : logou
    Created on : 2019/1/6, 下午 12:06:21
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
        <h1>您以登出本系統</h1>
        <% session.invalidate(); %>
        
    </body>
</html>
