<%--
  Created by IntelliJ IDEA.
  User: KENAN
  Date: 26.05.2023
  Time: 17:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


      <jsp:useBean id="tarih" class="java.util.Date"/>
      <p>Tarih : <%= tarih %></p>


      <jsp:useBean id="customId" class="com.kenant42.jspstudies.entities.Employee">
        <jsp:setProperty name="customId" property="id" value="1"/>
        <jsp:setProperty name="customId" property="name" value="Hasan"/>
        <jsp:setProperty name="customId" property="age" value="24"/>
        <jsp:setProperty name="customId" property="email" value="hasan01@gmail.com"/>
        <jsp:setProperty name="customId" property="address" value="Kayseri"/>
        <jsp:setProperty name="customId" property="department" value="Bilisim"/>
        <jsp:setProperty name="customId" property="salary" value="20000"/>
      </jsp:useBean>



        <jsp:getProperty name="customId" property="id"/>
        <jsp:getProperty name="customId" property="name"/>
        <jsp:getProperty name="customId" property="age"/>
        <jsp:getProperty name="customId" property="email"/>
        <jsp:getProperty name="customId" property="address"/>
        <jsp:getProperty name="customId" property="department"/>
        <jsp:getProperty name="customId" property="salary"/>



</body>
</html>
