public class BatchClass4 implements Database.Batchable<sObject>,Database.Stateful,Schedulable {
	public List<String> emails=new List<String>();
    
    public Database.QueryLocator start (Database.BatchableContext bc){
        return Database.getQueryLocator([SELECT Name,Phone,Email,BirthDate
                                       FROM Contact]);
    }
    public void execute(Database.BatchableContext bc, List<Contact> conList)
    {
        for(Contact con:conList){
            if(con.Email!=null&&con.Birthdate!=null){
            if(con.BirthDate.day()==System.Today().day() && con.BirthDate.month()==System.Today().month())
                emails.add(con.Email);
            System.debug(con.BirthDate.day()+'1'+con.Email);
            }
        }
    }
    public void finish(Database.BatchableContext bc){
        System.debug('All emails='+emails);
        List<Messaging.Email> emailMessages=new List<Messaging.Email>();
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        msg.setToAddresses(emails);
        msg.setSubject('Happy Birthday !');
        String body='Happy birthday to u! ';
        msg.setHtmlBody(body);
        msg.setSenderDisplayName('Shilpi Raj');
        emailMessages.add(msg);
       Messaging.sendEmail(emailMessages, false);
    }
    public void execute(SchedulableContext sc){
        BatchClass4 be3=new BatchClass4();
        Database.executeBatch(be3,10);
    }
}