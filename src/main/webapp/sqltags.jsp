<%--
  Created by IntelliJ IDEA.
  User: KENAN
  Date: 26.05.2023
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

  <sql:setDataSource var="degisken" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/authorsdb"
    user="root" password=""/>
  <sql:query dataSource="${degisken}" sql="SELECT * FROM authors" var="result"/>

  <sql:update dataSource="${degisken}" var="count">
    INSERT INTO authors VALUES ('Ahmet',48,'Denemeler')
  </sql:update>


<c:set var="authorId" value="10">

  <sql:update dataSource="${degisken}" var="count">
      DELETE FROM authors WHERE authorid = ?
    <sql:param value="${authorId}"/>
  </sql:update>

</body>
</html>
