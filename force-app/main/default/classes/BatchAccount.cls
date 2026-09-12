public class BatchAccount implements Database.Batchable<sObject>{
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([SELECT Name,Type,Industry,Active__c,Rating 
                                        FROM Account]);
        
    }
    public void execute(Database.BatchableContext bc, List<Account> accList){
        
        for(Account acc:accList){
            acc.Industry='Technology';
            acc.Active__c='Yes';
            
        }
        update accList;
    }
    public void finish(Database.BatchableContext bc){
        
    }
}