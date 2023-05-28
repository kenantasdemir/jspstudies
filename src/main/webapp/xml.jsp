<%--
  Created by IntelliJ IDEA.
  User: KENAN
  Date: 26.05.2023
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

        <c:import var="bookInfo" url="http://localhost:8080/books.xml"/>
        <x:parse xml="${bookInfo}" var="output"/>
        <x:out select="$output/books/book[1].name"/>


</body>
</html>
