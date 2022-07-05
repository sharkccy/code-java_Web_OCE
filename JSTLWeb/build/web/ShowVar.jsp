<%-- 
    Document   : ShowVar
    Created on : 2019/1/13, 下午 03:25:44
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
        <h1>Hello World!</h1>
        
        x = ${x} <br>
        x(request) = ${requestScoep.x} <br>
        x(session) = ${sessionScope.x} <br>
        x(application) = ${applicationScope.x}
        
    </body>
</html>
