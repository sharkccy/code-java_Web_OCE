<%-- 
    Document   : beLogin
    Created on : 2019/2/24, 下午 01:35:43
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
        <h1>BackEnd Login(ERP)員工登入頁面</h1>
        <h5>若限定只能從公司內網使用,可以限定內部ip 192.168.0.x ip才可以連入</h5>
        
        <form>
            帳號:<input type="text" name="account" value="" /><br>
            密碼: <input type="password" name="passwd" value="" /><br>
            <input type="submit" value="員工登入" /><br>
        </form>
        
    </body>
</html>
