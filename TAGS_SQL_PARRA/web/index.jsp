<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <sql:query var="allRows" dataSource="jdbc/sample">
        SELECT name, city, state FROM customer
        </sql:query>
        <table border="1">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Locacion</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="currentRow" items="${allRows.rows}">
                <tr>
                    <td>${currentRow.name}</td>
                    <td>${currentRow.city}</td>
                    <td>${currentRow.state}</td>
                   
                </tr>
            </c:forEach>
            </tbody>
            
        </table>
    </body>
</html>
