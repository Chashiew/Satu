<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%
    String dmessage = request.getParameter("dmessage");
    String demail = request.getParameter("demail");
    String result = "";
    if (dmessage == null)
    {
     dmessage = "the message is null";
    }
    
    // Username Password Sender
    final String username = "pimlab6321@gmail.com";
    final String password = "27376321";
    
    // EmailID Receiver
    String emailID = "j.delaosia@gmail.com";
    String emailID2 = "rayson.chou@gmail.com";

    Properties props = new Properties();
    props.put("mail.smtp.starttls.enable", true);
    props.put("mail.smtp.auth", true);
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");
    
    Session mysession = Session.getInstance(props,
            new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
            });

    try {
        MimeMessage message = new MimeMessage(mysession);
        message.setFrom(new InternetAddress(username));
        message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse(emailID));
        message.setSubject("PiM Lab User Passcode");
        message.setText(dmessage);
        
//        MimeBodyPart messageBodyPart = new MimeBodyPart();
//
//        Multipart multipart = new MimeMultipart();
//
//        messageBodyPart = new MimeBodyPart();
//        String file = "snap1.jpg";
//        String fileName = "attachmentName";
//        DataSource source = new FileDataSource(file);
//        messageBodyPart.setDataHandler(new DataHandler(source));
//        messageBodyPart.setFileName(fileName);
//        multipart.addBodyPart(messageBodyPart);
//
//        message.setContent(multipart);
//
//        System.out.println("Sending");

        Transport.send(message);

        //result = "Done";
        
        //response.sendRedirect("Contact.jsp");
        
        message = new MimeMessage(mysession);
        message.setFrom(new InternetAddress(username));
        message.setRecipients(Message.RecipientType.TO,
                InternetAddress.parse(emailID2));
        message.setSubject("Email from NiMOPS Website");
        message.setText(dmessage);
        
        Transport.send(message);

        result = "Done";
        
        response.sendRedirect("Contact.jsp");

    } catch (MessagingException e) {
        e.printStackTrace();
        result = "Failed";
    }
    
%>