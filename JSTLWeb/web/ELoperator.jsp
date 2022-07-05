<%-- 
    Document   : ELoperator
    Created on : 2019/1/13, 下午 01:46:34
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
        <h1>EL語法示範</h1>
        
        3 x 8 = ${3*8} <br>
        3 x 8 = <%= 3*8 %> <Br>
        3 > 8 ? ${3>8}<br/>
        3 < 8 &&  5 > 2 ?  ${3<8 && 5 > 2 }<br>
        3 > 8 || 5 > 2 ?  ${3>8 || 5>2 }<br>
        <hr>
        <h2> EL 本意中有使用自然語言進行運算子操作 </h2>
        3 > 8 and 5 > 2 結果: ${3>8 and 5>2 }<br>
        3 > 8 或 5 > 2 ?  ${3>8 or 5>2 }<br>
        
        3 gt 8 and 5 gt 2 結果: ${3 gt 8 and 5 gt 2 }<br>
        8 eq 8 ? ${ 8 eq 8 }<br>
        
        7 / 3 = ${ 7 div 3} <br>
        7 % 3 = ${ 7 mod 3} <br>
        a 物件是否是空的/不存在?  ${empty a}
                
</html>
