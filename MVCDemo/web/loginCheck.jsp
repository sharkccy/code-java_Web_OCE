<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : loginCheck
    Created on : 2019/1/27, 上午 10:29:05
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <sql:query var="" dataSource="">
        SELECT column_name(s) FROM table_name
    </sql:query>
    <body>
        <h1>Check 帳號密碼</h1>
    </body>
</html>
