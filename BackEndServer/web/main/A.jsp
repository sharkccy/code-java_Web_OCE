<%-- 
    Document   : A.jsp
    Created on : 2019/2/17, 上午 09:42:44
    Author     : student
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%   
            // 指定時段 不可連入
            java.util.Date d = new java.util.Date();
            int hour = d.getHours();
            
            if( hour > 7 && hour < 11) {
                // 拒絕服務
                response.sendRedirect("Off.jsp");
            }
            
            // 指定 ip 不可連入
            ArrayList ipList = new ArrayList();
            ipList.add("56.11.23.42");
            ipList.add("56.12.24.42");
            ipList.add("53.21.13.142");
            String ip = request.getRemoteAddr();
            //判斷 ip 符合指定清單內的 ip  即時拒絕
            if( ipList.contains(ip)) {
                response.sendError(404);
            }
        %>
        <h1>Hello World!</h1>
    </body>
</html>
