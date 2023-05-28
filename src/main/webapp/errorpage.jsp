<%--
  Created by IntelliJ IDEA.
  User: KENAN
  Date: 26.05.2023
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isErrorPage="true" isThreadSafe="true" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

    <h1>404 not found</h1>
    <p>${pageContext.exception}</p>
    <p>${pageContext.errorData.requestURI}</p>
    <p>${pageContext.errorData.statusCode}</p>

    <c:forEach var="trace" items="${pageContext.exception.stackTrace}">
        <p>${trace}</p>
    </c:forEach>

</body>
</html>
