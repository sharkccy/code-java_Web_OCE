<%-- 
    Document   : DBDemo
    Created on : 2019/1/20, 上午 10:11:48
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <!-- 對資料庫進行連結 -->
        <sql:setDataSource  driver="org.mariadb.jdbc.Driver"
                            user="root" password="123456" 
                            url="jdbc:mariadb://172.16.129.207/classicmodels"
                            var="ds" />
        <!-- 對資料庫進行存取 -->
        <sql:query dataSource="${ds}" var="rs"
                   sql="SELECT * FROM products" />
        
        <!-- 對資料結果 RS 進行存取 -->
        本次查詢結果:  ${rs.rowCount} 筆
        <hr>
        <h3> 使用 rows 取 key-value  方式</h3>
        <c:forEach items="${rs.rows}" var="row" varStatus="vs">
            項次:  ${vs.count} / ${vs.index}  <br>
            產品編號: ${row.productCode} <br>
            產品比例: ${row.productScale}
            <hr/>
        </c:forEach>
        <hr/>
        <h3> 使用陣列回傳查詢結果(rowsByIndex) </h3>
        <c:forEach items="${rs.rowsByIndex}" var="row">
            產品名稱 : ${row[1]}   <br>
            產品說明 : ${row[5]}   <br>
            剩餘庫存 : ${row[6]}
            <hr>
        </c:forEach>
    </body>
</html>
