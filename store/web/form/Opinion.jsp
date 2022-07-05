<%-- 
    Document   : Opinion
    Created on : 2019/2/17, 下午 02:32:25
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
        <h1>意見回饋</h1>
        
        <form method="POST" action="../formController/OpinionController">
            姓名: <input type="text" name="username" value="" /> <br>
            電子郵件:<input type="text" name="email" value="" /><br>
            電話:<input type="text" name="mobile" value="" /><br>
            意見: <textarea name="opinion" rows="4" cols="20">
            </textarea><br>
            <input type="submit" value="送出" /><input type="reset" value="清除" />
        </form>
    </body>
</html>
