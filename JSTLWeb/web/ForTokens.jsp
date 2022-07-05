<%-- 
    Document   : ForToken
    Created on : 2019/1/20, 上午 09:50:57
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>For Tokens 處理範例</h1>
        <c:set var="data" value="${'A,B,C,D,E F G-H#I?J~K'}" />
        
        DATA = ${data}
        <hr>
        <c:forTokens items="${data}" delims=", -#?~" var="x">
            項目:${x} <br>
        </c:forTokens>
        
        
    </body>
</html>
