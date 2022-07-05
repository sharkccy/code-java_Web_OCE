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
        <h1>商品售價查詢表單</h1>
        <form action="ProductByTable_Price.jsp">
            模型售價 >= <input type="text" name="p1" value="" size="8" /><br>
            模型售價 <= <input type="text" name="p2" value="" size="8" /><br>
            <input type="submit" value="查詢" />            
        </form>
    </body>
</html>
