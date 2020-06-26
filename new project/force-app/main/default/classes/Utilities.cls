//don't ever change this first line. just delete it and start a new one if you need to.
public class Utilities {

    public static void send_email(String recipient, String subject, String body){
        //variable => data type and name
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        
        mail.setToAddresses (new String[]{recipient});
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}