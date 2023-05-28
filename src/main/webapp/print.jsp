<%--
  Created by IntelliJ IDEA.
  User: KENAN
  Date: 26.05.2023
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <c:forEach var="sayac" begin="1" end="20" step="2">
          <c:out value="${sayac-2}"/>
      <% System.out.println("sayac = " + pageContext.findAttribute("sayac")); %>
    </c:forEach>

</body>
</html>
