public class SchedulableExample1 implements Schedulable{
    
    public void execute(SchedulableContext sc){
        List<Messaging.Email> emailMessages = new List<Messaging.Email>();
        
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        List<String> toadd=new List<String>();
        msg.setToAddresses(toadd);
        msg.setSubject('SDFC Training');
        String body='Hi , <br/><br/>';
        body= body + 'Welcome to SalesForce Training <br/><br/>';
        body= body + 'Hope! you understand our pain of trying to do the project!<br/><br/>';
        body= body + 'Thank you for all your support and guidance!<br/><br/>';
        body= body + 'Best Regards <br/><br/>';
        body= body + 'Shilpi Raj';
        msg.setHtmlBody(body);
        emailMessages.add(msg);
        Messaging.sendEmail(emailMessages);
    }

}