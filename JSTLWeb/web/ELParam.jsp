<%-- 
    Document   : ELParam
    Created on : 2019/1/13, 下午 02:24:43
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
        <h1>表單參數:</h1>
        x:  <%= request.getParameter("x") %>
        y:  <%= request.getParameter("y") %>
        z:  <%= request.getParameter("z") %>
        
        <hr>
        x: ${param.x} <Br>
        y: ${param.y} <Br>
        z: ${param.z} <Br>
                
        <h2>瀏覽器表頭資訊</h2>
        Accept:  ${header.accept}<br>
        Host: ${header.Host}
        語系: ${header["Accept-Language"]}        
    </body>
</html>
