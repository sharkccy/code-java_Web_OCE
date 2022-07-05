<%-- 
    Document   : Core_IF
    Created on : 2019/1/13, 下午 03:48:09
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
        <h1>使用核心 判斷式</h1>
        <c:set var="x" value="2"/>
        <c:set var="y" value="15"/>
        <c:if test="${x eq 10 and y gt 8}">
            <h3> 變數 x = 10 而且 y 大於 8 (y = ${y}) </h3>
        </c:if>
            
        <h2>多條件判斷式</h2>
        <c:choose>
            <c:when test="${x<10}">
                <h3>choose-when 變數 x < 10</h3>
            </c:when>
            <c:when test="${x>10}">
                <h3>choose-when 變數 x > 10</h3>
            </c:when>
            <c:otherwise>
                <h3>choose-when 變數 x = 10</h3>
            </c:otherwise>
        </c:choose>
    </body>
</html>