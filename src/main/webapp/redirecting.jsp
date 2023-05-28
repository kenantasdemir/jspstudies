<%--
  Created by IntelliJ IDEA.
  User: KENAN
  Date: 26.05.2023
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.io.*,java.util.*" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

    <%
        String youtube = new String("http://www.youtube.com");
        response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
        response.setHeader("Location",youtube);
    %>

        <%
            //5 saniyede bir sayfa yenileme işlemi
            response.setIntHeader("Refresh",5);
        %>


        <%
            Enumeration headers = request.getHeaderNames();
            while (headers.hasMoreElements()){
                String paramName = (String) headers.nextElement();
                String paramValue = request.getHeader(paramName)
            }
        %>


</body>
</html>
