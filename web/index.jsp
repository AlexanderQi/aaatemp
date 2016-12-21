<%-- 
    Document   : index
    Created on : 2016-12-21, 13:04:03
    Author     : Qi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <sql:query var="rs" dataSource="jdbc/mydata">
    select id,username from tbluser;
    </sql:query>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page XXXXXXX</title>
    </head>
    <body>
        
        <c:forEach var="row" items="${rs.rows}">
            id ${row.id}<br/>
            name ${row.username}<br/>
        </c:forEach>
        
        <p>DDDDDDDDDDDDDDDDDDDDDDDDDDD</p> 
        <a href="jsp2.jsp">jsp2</a>
    </body>
</html>
