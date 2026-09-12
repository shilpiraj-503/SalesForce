public class Assesment3Ctrl implements Database.batchable<sObject>,Database.stateful,Schedulable{

    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([SELECT Student_Name__c,Student_Phone__c,Student_Email__c,Student_Deposit_Fees__c,CreatedDate,Student_Remaining_Fees__c 
                                         FROM Student__c
                                        WHERE Student_Deposit_Fees__c < 20000 OR CreatedDate = :System.Today()]);
    }
    public void execute(Database.BatchableContext bc,List<Student__c> stdList){
        List<Messaging.Email> emailMessages=new List<Messaging.Email>();
        
        for(Student__c std:stdList){
            Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
            List<String> emails=new List<String>();
            emails.add(std.Student_Email__c);
            msg.setToAddresses(emails);
            String body='Hi '+std.Student_Name__c+' <br/>You are required to submit the '+std.Student_Remaining_Fees__c +' before 15th of this month!<br/>';
            body=body+'Thanks & Regards';
            msg.setHtmlBody(body);
            msg.setSenderDisplayName('SHILPI RAJ');
            msg.setSubject('Fees Due Alert!');
            emailMessages.add(msg);
        }
        Messaging.sendEmail(emailMessages,false);
        
        
    }
    public void finish(Database.BatchableContext bc){
        
    }
    public void execute(System.SchedulableContext sc){
        Assesment3Ctrl obj=new Assesment3Ctrl();
        Database.executeBatch(obj);
    }
}