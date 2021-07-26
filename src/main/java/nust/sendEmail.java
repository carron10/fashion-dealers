package nust;

import java.util.*;
import javax.servlet.http.*;
import javax.mail.*;
import javax.mail.internet.*;
import org.apache.commons.codec.digest.DigestUtils;

public class sendEmail extends HttpServlet {

    public String getRandom() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        String hash = DigestUtils.md5Hex("" + number);
        return hash;
    }

    /**
     *
     * @param msg
     * @param to
     * @param from
     * @param sub
     * @return
     */
    public boolean send(String msg, String to, final String from, String sub) {

        // Assuming you are sending email from localhost
        String host = "smtp.gmail.com";
        final String password = "211712194CarronMuleya";
        // Get system properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        Authenticator auth = new Authenticator() {
            @Override
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        };
 
        
        
        Session session = Session.getInstance(properties, auth);

        try {

            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));
            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            // Set Subject: header field
            message.setSubject(sub);
            // Send the actual HTML message, as big as you like
            message.setContent(msg, "text/html");
            // Send message
             message.setSentDate(new Date());
            Transport.send(message);
            return true;

        } catch (MessagingException mex) {
            System.out.println("Email sending error: " + mex.getMessage() + mex.getCause());
            return false;
        }
    }
}
 class EmailUtility {
    public static void sendEmail(String host, String port,
            final String userName, final String password, String toAddress,
            String subject, String message) throws AddressException,
            MessagingException {
 
        // sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.ssl.enable","false");
        properties.put("mail.smtp.socketFactory.fallback","true");
        properties.put("mail.smtp.socketFactory.port",port);
        properties.put("mail.smtp.starttls.required","true");
        // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            @Override
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(userName, password);
            }
        };
 
        Session session = Session.getInstance(properties, auth);
 
        // creates a new e-mail message
        Message msg = new MimeMessage(session);
 
        msg.setFrom(new InternetAddress(userName));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        msg.setText(message);
 
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        // sends the e-mail
        Transport.send(msg);
 //n01910066j@students.nust.ac.zw
    }
}