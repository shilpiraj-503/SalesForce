public class EmailSending {
    public void sendEmails(){
        List<String> emails=new List<String>();
        emails.add('shilpi.raj.per@gmail.com');
        emails.add('shilpi.official.amrita@gmail.com');
        List<Messaging.Email> emailMessages=new List<Messaging.Email>();
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        msg.setToAddresses(emails);
        msg.setSubject('Hi hello dear!');
        String body='Hi! Just wanted to say u can smile often! Its Fine!! ';
        msg.setHtmlBody(body);
        msg.setSenderDisplayName('Raj');
        emailMessages.add(msg);
        Messaging.SingleEmailMessage msg2=new Messaging.SingleEmailMessage();
        msg2.setToAddresses(emails);
        msg2.setSubject('Hi hello dear!');
        String body2='Hello! Its Fine!! ';
        msg2.setHtmlBody(body2);
        msg2.setSenderDisplayName('Raj');
        emailMessages.add(msg2);
        Messaging.sendEmail(emailMessages);
        System.debug(emails);
        System.debug(msg);
    }

}