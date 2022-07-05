<%-- 
    Document   : ForEachVarStatus
    Created on : 2019/1/20, 下午 01:35:22
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>迴圈加上 迴圈資訊判斷</h1>
        
        <c:set var="data" value="${['a','b','c','d','e','f']}" />
        
        <c:forEach items="${data}" var="item" varStatus="sts">
            項目編號: ${sts.index}/${sts.count} -->  ${item} <Br/>
        </c:forEach>
        
    </body>
</html>
