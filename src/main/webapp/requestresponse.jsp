<%--
  Created by IntelliJ IDEA.
  User: KENAN
  Date: 26.05.2023
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <%=  request.getParameter("f_name"); %>
      <%  response.sendError(407,"authentication işlemi gerekli"); %>

</body>
</html>
