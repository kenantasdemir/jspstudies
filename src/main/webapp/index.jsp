<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>--%>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
  <h1><%= "Hello World!" %></h1>
    <c:set var="maas"  scope="session" value="${10000*2}">
      <c:out value="${maas}">
            <c:remove var="maas">

  <c:catch var="catchException">
      <% int x = 5/0; %>
  </c:catch>

  <c:if test="${catchException != null}">
      <p>Some error has occured</p>
      <p> ${catchException.message} </p>
  </c:if>

  <c:choose>
      <c:when test="${maas<=1000}">
         Çok düşük maaş
      </c:when>

      <c:when test="${maas>= 1000 && maas <= 8500}">
          Düşük maaş
      </c:when>

      <c:when test="${maas > 10000 && maas < 15000}">
            İdare eder
      </c:when>

      <c:otherwise>
          Çok iyi
      </c:otherwise>
  </c:choose>


  <c:import var="data" url="http://www.tutorialspoint.com">
  <c:out value="${data}">


  <c:forEach var="i" begin="1" end="10">
      <c:out value="${i}">
  </c:forEach>

  <c:forToken items="İstanbul,İzmir,Ankara,Bursa,Kocaeli,Kayseri,Antalya" delims="-" var="cityname">
      <c:out value="${cityname}">
  </c:forToken>



  <c:url value="/index.jsp" var="myurl">
      <c:param name="name" value="Kenan"/>
      <c:param name="surname" value="Tasdemir"/>
  </c:url>
  <c:import url="${myurl}">
<%--  "/index.jsp?name=Kenan;surname=Tasdemir"--%>


  <c:redirect url="https://www.youtube.com">




<br/>


    <a href="hello-servlet">Hello Servlet</a>


</body>
</html>