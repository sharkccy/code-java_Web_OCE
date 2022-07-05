<%-- 
    Document   : MemReg
    Created on : 2019/1/20, 下午 04:04:32
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
    <%
        // 表單資料檢查
        String pass1 = request.getParameter("pass1");
        String pass2 = request.getParameter("pass2");
        if(! pass1.equals(pass2)) {
            //帳密不符 ,  須返回前一頁進行重設
            response.sendRedirect("MemRegForm.jsp");
        }
        if( pass1.length() < 5) {
            //密碼必須要7 個字以上
            response.sendRedirect("MemRegForm.jsp");
        }
    %>
     <sql:setDataSource  driver="org.mariadb.jdbc.Driver"
                     user="root" password="123456" 
                     url="jdbc:mariadb://172.16.129.207/classicmodels"
                     var="ds" />
     
    <body>
        <h1>會員註冊結果</h1>
        <!-- 檢查資料庫中 是否已有該筆資料? 若有 提醒使用者勿重複 -->
        <sql:query  sql="SELECT email FROM members" var="row"/>
        
        <!-- 不存在 新增該筆資料 -->
        <sql:update dataSource="${ds}" var="result">
            INSERT INTO members VALUES( ?,?,?,?,? )
            <sql:param>${param.email}</sql:param>
            <sql:param>${param.mname}</sql:param>
            <sql:param>${param.gender}</sql:param>
            <sql:param>${param.mobile}</sql:param>
            <sql:param>${param.pass1}</sql:param>
        </sql:update>
        <!-- 發送確認信  請使用者啟用帳號 -->
        
    </body>
</html>
