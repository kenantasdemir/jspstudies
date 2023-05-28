<%@ page import="java.util.Properties" %>
<%@ page import="jakarta.mail.internet.MimeMessage" %>
<%@ page import="jakarta.mail.internet.InternetAddress" %>
<%@ page import="jakarta.mail.internet.MimeBodyPart" %>
<%@ page import="jakarta.mail.internet.MimeMultipart" %>
<%@ page import="jakarta.activation.DataSource" %>
<%@ page import="jakarta.activation.FileDataSource" %>
<%@ page import="jakarta.activation.DataHandler" %>
<%@ page import="jakarta.mail.*" %>
<%@ page import="jakarta.servlet.http.Part" %>

<%--
  Created by IntelliJ IDEA.
  User: KENAN
  Date: 26.05.2023
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

        <%
            String result;
            String kime = request.getParameter("recipient");
            String kimden = request.getParameter("youremail");
            String konu = request.getParameter("subject");
            String mesaj = request.getParameter("message");

            String host = "localhost";
            Properties properties = System.getProperties();
            properties.setProperty("mail.smtp.host",host);

            Session mailSession = Session.getDefaultInstance(properties);


            try{
                MimeMessage message = new MimeMessage(mailSession);
                message.setFrom(kimden);
                message.addRecipient(Message.RecipientType.TO,new InternetAddress(kime));
                message.setSubject(konu);


                BodyPart messageBodyPart = new MimeBodyPart();
                messageBodyPart.setText(mesaj);

                Multipart multipart = new MimeMultipart();
                multipart.addBodyPart(messageBodyPart);

                messageBodyPart = new MimeBodyPart();

                Part filePart = request.getPart("uploadedfile");
                String filename = filePart.getSubmittedFileName();

                DataSource source = new FileDataSource(filename);
                messageBodyPart.setDataHandler(new DataHandler(source));
                messageBodyPart.setFileName(filename);
                multipart.addBodyPart(messageBodyPart);

                message.setContent(multipart);
                Transport.send(message);

                result = "mail başarıyla gönderildi";
                System.out.println(result);


            }catch (MessagingException messagingException){
                messagingException.getMessage();
                result = "mail gönderilemedi.";
                System.out.println(result);
            }
        %>




</body>
</html>
