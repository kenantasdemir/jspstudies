<%--
  Created by IntelliJ IDEA.
  User: KENAN
  Date: 26.05.2023
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

            <jsp:include page="xml.jsp" flush="true"/>
            <jsp:forward page="errorpage.jsp"  />

            <jsp:plugin type="applet" codebase="dirname" code="MyApplet.class" width="100" height="100">
                <jsp:params>
                    <jsp:param name="fontcolor" value="red"/>
                    <jsp:param name="backgroundcolor" value="black"/>
                </jsp:params>


                <jsp:fallback>
                    Java plugini başlatılamadı.
                </jsp:fallback>


            </jsp:plugin>


            <jsp:element name="xmlElement">
                <jsp:attribute name="xmlElementAttribute">
                    öznitelik için değer
                </jsp:attribute>

                <jsp:body>
                    xml elementi için alan
                </jsp:body>
            </jsp:element>

            <jsp:text>
                Merhaba Dünya
            </jsp:text>




</body>
</html>
