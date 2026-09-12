public class SalesforceObjectExample {
    public Account acc;
    public Contact con;
     public Account acc2;
    public List<Account> accList;
    public SalesforceObjectExample(){
        acc=new Account();
        con= new Contact();
        acc2=new Account();
         accList= new List<Account>();
    }
    
    public void detailMethod(){
        acc.Name='coding8';
        acc.Type='Prospect';
        acc.Industry='Technology';
        acc.NumberOfEmployees=2000;
        //System.debug('Account ID before insertion '+acc.Id);
        System.debug('Account Info: '+acc);
        //dml operation value
        //insert acc;
        accList.add(acc);
        
        acc2.Name='coding9';
        acc2.Type='other';
        acc2.Industry='Banking';
        acc2.NumberOfEmployees=2000;
        //insert acc2;
        accList.add(acc2);
        insert accList;
        System.debug('Account ID of acc 1 '+accList[0].Id);
        
        System.debug('Account ID of acc 2 '+accList[1].Id);
        
    }

}