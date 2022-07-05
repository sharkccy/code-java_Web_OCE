<%-- 
    Document   : login
    Created on : 2018/12/23, 下午 04:23:36
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
        <h1>會員登入</h1>
        <form method="POST" action="check_login.jsp">
            帳號: <input type="text" name="account"/><br>
            密碼: <input type="password" name="passwd"/><br/>
            <input type="submit" value="登入"/>
        </form>
    </body>
</html>
