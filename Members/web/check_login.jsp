<%-- 
    Document   : check_login
    Created on : 2018/12/23, 下午 04:25:24
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
        <%
            String account1 = request.getParameter("account");  //取出表單 的帳號
            session.setAttribute("userid", account1);  //儲存使用者的帳號
            session.setAttribute("login", true);  // 代表使用者有登入
                             //   key    , 任何 java Object 
        %>
        <jsp:scriptlet>
            String account = request.getParameter("account");
            String passwd = request.getParameter("passwd");            
        </jsp:scriptlet>
        <jsp:useBean class="pojo.PasswordChecker" id="passChecker"/>
        <jsp:setProperty name="passChecker" property="account" value="<%= account %>"/>
        <jsp:setProperty name="passChecker" property="passwd" value="<%= passwd %>"/>
        <jsp:scriptlet>
            passChecker.checkPass();
        </jsp:scriptlet>
        <hr/>
        帳號: <%= account %> <br/>
        密碼: <%= passwd %> <br/>
        登入結果: <jsp:getProperty name="passChecker" property="result" /> ( 1: 成功 0: 失敗 )
        <hr/>
        <a href="products.jsp">商品查詢系統</a>
        <a href="shopping_cart.jsp">購物車</a>
    </body>
</html>
