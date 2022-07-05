<%-- 
    Document   : CoreTageDemo
    Created on : 2019/1/13, 下午 02:50:24
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.util.Date,java.util.*,java.sql.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
          Date now = new Date();
          Connection  con = null;
          java.sql.Date d;
        %>
    </head>
    <body>
        <h1>使用JSTL-Core 核心標籤</h1>
        <hr>
        <h3>宣告變數</h3> 
        <c:set var="z" value="${10*2+5}"/>
        
        <c:set var="x" value="10"/>
        <c:set var="x" value="20" scope="request" />
        <c:set var="x" value="30" scope="session" />
        <c:set var="x" value="40" scope="application" />
        x = ${x} <br>
        x(session) = ${sessionScope.x}
        <hr>
        <c:remove var="x" scope="session"/>
        
        
        <a href="ShowVar.jsp">ShowVar</a>
    </body>
</html>