<%--
  Created by IntelliJ IDEA.
  User: KENAN
  Date: 25.05.2023
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

        <c:set var="sehir" value="Kayseri">

            <c:if test="${fn:contains(sehir,'seri')}">
                <p>Kayseri isimli ifadede "seri" dizgesi geçiyor.</p>
            </c:if>

            <c:if test="${fn:contains(sehir,'SERİ')}">
                <p>Hayır içermiyor</p>
                <p>fn:contains büyük küçük harfe duyarlıdır.</p>
            </c:if>

            <c:if test="${fn:containsIgnoreCase(sehir,'SERİ')}">
                <p>evet içeriyor.</p>
            </c:if>

            <c:if test="${fn:endsWith(sehir,'seri')}">
                <p>seri dizgesi ile bitiyor.</p>
            </c:if>


            <c:set var="str1" value="merhaba dünya"/>
            <c:set var="str2" value="<xyz>merhaba<abc>dünya</abc><xyz/>">

                    <p>${fn:escaseXml(str1)}</p>
                    <p>${fn:escapeXml(str2)}</p>

                <p>${str1}</p>
                <p>${str2}</p>

                <c:if test="${fn:startsWith(str1,'merhaba')}">
                        Evet ifade merhaba ile başlıyor.
                </c:if>


                <c:set var="str3" value="${fn:toUpperCase(str1)}"/>
                    <c:set var="str4" value="${fn:toLowerCase(str3)}"/>


                        <c:set var="str5" value="this is fifth string"/>
                <p> ${fn:length(str5)}  </p>


                <c:set var="str6" value="${fn:split(str5,' ')}"/>
                <c:set var="str7" value="${fn:join(str6,'-')}"/>


                <p> ${fn:indexOf(str7,"fifth")} </p>

                <c:set var="str8" value="${fn:trim(str7)}"/>


                </body>
</html>
