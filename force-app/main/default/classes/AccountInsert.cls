public class AccountInsert {
	
    public Account acc {get;set;}
        public AccountInsert(){
            acc= new Account();
        }
    public void saveMethod(){
        acc.Name='Testing';
        acc.Rating='Hot';
        acc.Type='Prospect';
        acc.Industry='Banking';
        acc.Active__c='No';
        insert acc;
    }
    public void updateMethod(){
        List<Account> accList=[SELECT Name,Industry 
                              FROM Account];
        for(Account acc: accList){
            acc.Industry='Banking';
        }
        update accList;
    }
    public void deleteMethod(){
         List<Account> accList=[SELECT Name,Industry 
                              FROM Account];
        delete accList;
    }
}