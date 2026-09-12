public class SingleEmailMessage1 {
    public void sendEmail(){
        List<Messaging.Email> emailMessages=new List<Messaging.Email>();
        //one template
        Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
        List<String> toAdd=new List<String>();
        toadd.add('garf8800@gmail.com');
        toadd.add('1906503@kiit.ac.in');
        
        msg.setSubject('Subject');
        msg.setPlainTextBody('Mail from Apex class');
        msg.setToAddresses(toadd);
       // msg.sendSenderDisplayName('Ecolab');
        msg.setReplyTo('1906503@kiit.ac.in');
        
        emailMessages.add(msg);
        Messaging.sendEmail(emailMessages);
	}
}