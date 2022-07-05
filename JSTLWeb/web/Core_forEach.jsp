<%-- 
    Document   : Core_forEach
    Created on : 2019/1/13, 下午 04:14:45
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
        <h1>forEach迴圈!</h1>
        <%
            for(int x=1; x<=10; x++) { }
        %>
        <c:forEach begin="1" end="10" var="x" step="1">
            <h5> 迴圈次數 ${x}</h5>
        </c:forEach>
            
        <c:set var="language" value="${['jsp','php','asp.net','python']}" />
        <h4>動態網頁設計</h4>
        <c:forEach items="${language}" var="y">
            <h6> ${y} </h6>
        </c:forEach>
        
            
    </body>
</html>
