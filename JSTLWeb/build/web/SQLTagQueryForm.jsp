<%-- 
    Document   : SQLTagQueryForm
    Created on : 2019/1/20, 下午 02:14:05
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
        <h1>商品查詢表單</h1>
        <form action="ProductByTable_Scale.jsp">
            模型比例: <input type="text" name="scale" value="" size="8" /><br>
            <input type="submit" value="查詢" />            
        </form>
    </body>
</html>
