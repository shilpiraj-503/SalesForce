public class BatchClassExample3 implements Database.Batchable<sObject>,Database.Stateful,Schedulable {
	
    public Integer count=0;
    public Database.QueryLocator start (Database.BatchableContext bc){
        return Database.getQueryLocator([SELECT FirstName,LastName,Phone,Email,Company
                                       FROM Lead]);
    }
    
    public void execute(Database.BatchableContext bc, List<Lead> conList)
    {
        for(Lead con:conList){
            con.LeadSource='Others';
            con.Industry='Engineering';
            System.debug(con);
            count++;
        }
        update conList;
        System.debug('Count : '+count);
    }
    public void finish(Database.BatchableContext bc){
        //AsyncApexJob : we will get job id , status of asynchronous class
        AsyncApexJob a = [SELECT Id,Status FROM AsyncApexJob WHERE Id =: bc.getJobId() ];
        System.debug('Id: '+a.Id);
        System.debug('Status: '+a.Status);
        System.debug('Count'+count);
    }
    public void execute(SchedulableContext sc){
        BatchClassExample3 be3=new BatchClassExample3();
        Database.executeBatch(be3,10);
    }
}