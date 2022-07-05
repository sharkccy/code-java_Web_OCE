<%-- 
    Document   : login
    Created on : 2019/1/27, 上午 10:26:55
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
        <form action="loginController">
            帳號:<input type="text" name="account" value="" /> <br>
            密碼:<input type="password" name="passwd" value="" /><br>
            <input type="submit" value="送出" />            
        </form>
    </body>
</html>
