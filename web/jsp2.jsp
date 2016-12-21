<%-- 
    Document   : jsp2
    Created on : 2016-12-21, 20:41:05
    Author     : Qi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="dao.DaoBean" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>jsp2!</h1>
        <jsp:useBean id="uu" class="dao.DaoBean"/>
        ${uu.getuser()}
        <p>编号：${uu.id}  姓名：${uu.name}</p>
    
    </body>
</html>
