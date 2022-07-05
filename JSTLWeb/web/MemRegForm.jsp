<%-- 
    Document   : MemRegForm
    Created on : 2019/1/20, 下午 04:04:12
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
        <h1>會員註冊</h1>
        
        <form action="MemReg.jsp" method="POST">
            電子郵件:<input type="text" name="email" value="" /> <br/>
            姓名:<input type="text" name="mname" value="" /><br/>
            性別:<select name="gender">
                <option value="M">男</option>
                <option value="F">女 </option>
            </select>
            <br/>
            電話:<input type="text" name="mobile" value="" /><br/>
            密碼:<input type="password" name="pass1" value="" /><br/>
            確認密碼:<input type="password" name="pass2" value="" /><br/>
            
            <input type="submit" value="送出" />
        </form>
    </body>
</html>
