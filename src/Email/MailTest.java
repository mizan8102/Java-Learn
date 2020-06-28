
package Email;

import java.net.PasswordAuthentication;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Session;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailTest {
    public static void sendMail(String receipient) throws Exception{
        System.out.println("prepare for sending..");
        Properties pro=new Properties();
        pro.put("mail.smtp.auth", "true");
        pro.put("mail.smtp.starttls.enable", "true");
        pro.put("mail.smtp.host", "smtp.gmail.com");
        pro.put("mail.smtp.port", "587");
      final String myac="mizan81025@gmail.com";
       final String pas="Mizan@2001";
        Session session;
        session = Session.getInstance(pro, new Authenticator(){
            @Override
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication(myac, pas);
            }
            
            

           

          
            
        });
        MemeMassage message=prepareMessage(session,myac,receipient);
        
        Transport.send(message);
        System.out.println("Message sent succesfull!");
                
                
               
    }

    private static MemeMassage prepareMessage(Session session, String myac, String receipient) {
        
        try {
            MemeMassage message=new MemeMassage(session);
            message.setFrom(new InternetAddress(myac));
            message.setReceipient(Message.RecipientType.TO,new InternetAddress(receipient));
            message.setSubject("This my first email");
            message.setText("hey there");
            return message;
                    
            
        } catch (AddressException ex) {
            Logger.getLogger(MailTest.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}

