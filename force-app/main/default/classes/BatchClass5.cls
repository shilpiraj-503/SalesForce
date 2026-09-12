public class BatchClass5 implements Database.Batchable<sObject>,Database.Stateful,Schedulable {
	public List<Contact> emails=new List<Contact>();
    
    public Database.QueryLocator start (Database.BatchableContext bc){
        return Database.getQueryLocator([SELECT Name,Phone,Email,BirthDate
                                       FROM Contact]);
    }
    public void execute(Database.BatchableContext bc, List<Contact> conList)
    {
        for(Contact con:conList){
            if(con.Email!=null&&con.Birthdate!=null){
            if(con.BirthDate.day()==System.Today().day() && con.BirthDate.month()==System.Today().month())
                emails.add(con);
            //System.debug(con.BirthDate.day()+'1'+con.Email);
            }
        }
    }
    public void finish(Database.BatchableContext bc){
        System.debug('All emails='+emails);
        List<Messaging.Email> emailMessages=new List<Messaging.Email>();
        
        for(Contact con:emails){
            List <String> toadd=new List<String>();
            toadd.add(con.Email);
            Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        
        msg.setToAddresses(toadd);
        msg.setSubject('Happy Birthday !');
        String body='Happy birthday to u! '+con.Name;
        msg.setHtmlBody(body);
        msg.setSenderDisplayName('Shilpi Raj');
        emailMessages.add(msg);
        }
        
       Messaging.sendEmail(emailMessages, false);
    }
    public void execute(SchedulableContext sc){
        BatchClass4 be3=new BatchClass4();
        Database.executeBatch(be3,10);
    }
}