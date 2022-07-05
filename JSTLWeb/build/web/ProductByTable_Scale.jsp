<%-- 
    Document   : ProductByTable
    Created on : 2019/1/20, 下午 12:09:08
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
        <sql:setDataSource  driver="org.mariadb.jdbc.Driver"
                     user="root" password="123456" 
                     url="jdbc:mariadb://172.16.129.207/classicmodels"
                     var="ds" />
        <!-- 對資料庫進行存取 -->
        <sql:query dataSource="${ds}" var="rs">
            SELECT productCode,productName,productScale,quantityInStock,msrp 
            FROM products where productScale= ?
            <sql:param>
                ${param.scale}
            </sql:param>
        </sql:query>
                   
        
        <table  width="100%">
            <caption>模型資料庫 - 產品</caption>
            <tr>
                <th>產品項次</th>
                <th>商品代號</th>
                <th>商品名稱</th>
                <th>產品比例</th>
                <th>現有庫存</th>
                <th>售價</th>                
            </tr>
            <c:forEach items="${rs.rowsByIndex}" var="row"  varStatus="sts" >
                <!-- 單數行 bgColor="#ccddee" 雙數行 預設 -->               
                <c:choose>
                    <c:when test="${sts.count % 2 == 1}">
                        <tr bgColor="#ccddee">      
                    </c:when>
                    <c:otherwise>
                        <tr>
                    </c:otherwise>
                </c:choose>
                
                    <td> ${sts.count} </td>
                    <c:forEach items="${row}" var="col">
                        <td>${col}</td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
