<%-- 
    Document   : shopping_cart
    Created on : 2019/1/6, 上午 11:56:07
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        session.setMaxInactiveInterval(300);
        //檢查使用者是否有登入: 
        String userid =(String) session.getAttribute("userid");
    %>
    <body>
        <h1>購物車內容</h1>
        <hr/>
        <!-- 使用者若未登入, 不應該使用購物車 -->
        <% 
            if( userid == null ) {
                out.println("<h3> 您尚未登入, 無法使用購物車</h3>");                        
            } else {
                out.println("會員: " + userid);
            }
        %>
        
        
    </body>
</html>
