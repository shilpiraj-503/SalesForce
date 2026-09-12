public class BatchClassExample2 implements Database.Batchable<sObject> {
	
    public Database.QueryLocator start (Database.BatchableContext bc){
        return Database.getQueryLocator([SELECT FirstName,LastName,Phone,Email
                                       FROM Contact]);
    }
    
    public void execute(Database.BatchableContext bc, List<Contact> conList)
    {
        for(Contact con:conList){
            con.LeadSource='Web';
        }
        update conList;
    }
    public void finish(Database.BatchableContext bc){
        //AsyncApexJob : we will get job id , status of asynchronous class
        AsyncApexJob a = [SELECT Id,Status FROM AsyncApexJob WHERE Id =: bc.getJobId() ];
        List<Messaging.Email> emailMessages =new List<Messaging.Email>();
        Messaging.SingleEmailMessage msg= new Messaging.SingleEmailMessage();
        List<String> toadd=new List<String>();
        toadd.add('garf8800@gmail.com');
        toadd.add('shilpi.raj.per@gmail.com');
        msg.setToAddresses(toadd);
        msg.setSubject('Salesforce Training');
        String body='Hi User <br/><br/>Your Batch has been completed!';
        body=body+'Batch Info ::';
        body=body+'Batch Id= '+a.Id+'<br/>';
        body=body+'Batch Id= '+a.Status+'<br/>';
        body=body+'Thank you<br/>';
        body=body+'Shilpi Raj';
        msg.setHtmlBody(body);
        msg.setSenderDisplayName('Ecolab');
        emailMessages.add(msg);
        Messaging.sendEmail(emailMessages);
    }
}