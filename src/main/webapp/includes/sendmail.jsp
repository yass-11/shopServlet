<%-- 
<%@ page import="java.util.*,javax.mail.*" %>
<%
    String to = "your@email.com";
    String from = request.getParameter("email");
    String name = request.getParameter("name");
    String subject = "Contact Form Submission";
    String message = request.getParameter("message");
    boolean isSent = sendEmail(to, from, name, subject, message);
    if(isSent){
    %>
        <p>Your message has been sent.</p>
    <% } else { %>
        <p>Failed to send your message. Please try again later.</p>
    <% }
    %>
    <%!
    public static boolean sendEmail(String to, String from, String name, String subject, String message) {
        try {
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.example.com");
            props.put("mail.smtp.port", "587");
            Session session = Session.getInstance(props,
            new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("username", "password");
                }
            });
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(from, name));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            msg.setSubject(subject);
            msg.setText(message);
            Transport.send(msg);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    %>
    --%>