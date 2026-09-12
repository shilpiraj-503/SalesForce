public class BatchableAccountsCtrl implements Database.batchable<sObject>,Database.stateful{
	
    
    public DataBase.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([SELECT Name,Type,Description
                                        FROM Account]);
    }
    public void execute(Database.BatchableContext bc,List<Account> accList){
       List<Id> accIds=new List<Id>();
        
        for(Account acc:accList){
            
            //con.AccountId=acc.Id;
            accIds.add(acc.Id);
            acc.Description='wetsrytcvb aqerdtf';
        }
        List<Contact> conList=[SELECT Name,Description FROM Contact WHERE AccountId IN: accIds ]; 
        //List<Contact> conList2=new List<Contact>();
        for(Contact con: conList){
            con.Description='sxdfcgvhbjn dtrgyui sertfyguh';
            con.Phone='25346789';
            System.debug(con);
            //conList.add(con);
          // update con;
        }
        //conList2.add
        update conList;	
       // List<Contact> con=[SELECT Contact WHERE AccountId ]
        update accList;   
    }
    
    public void finish(Database.BatchableContext bc){
        
    }
}