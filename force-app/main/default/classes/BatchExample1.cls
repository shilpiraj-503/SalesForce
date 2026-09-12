public class BatchExample1 implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([SELECT Name,Type,Rating,Industry
                              FROM Account]);
    }
    
    public void execute(Database.BatchableContext bc, List<Account>newRecs){
        List<Account> updateAccList = new List<Account>();
        
        for(Account acc: newRecs){
            acc.Industry='Technology';
            acc.Ownership = 'Public';
            updateAccList.add(acc);
        }
        update updateAccList;
    }
    
    public void finish(Database.BatchableContext bc){
        
    }
}