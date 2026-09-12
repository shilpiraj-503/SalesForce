public class ContactTriggerHelper {

    public static void CountContactCheck(List<Contact> newList){
        Set<Id> accIds=new Set<Id>();
        for(Contact con:newList){
            accIds.add(con.AccountId);
            System.debug('Account Id '+con.AccountId);
        }
        List<Account> accList=[SELECT Name,TotalCountContacts__c, 
                               (SELECT Name FROM Contacts)
                              FROM Account
                              WHERE ID IN: accIds];
        List<Account> updateAccList=new List<Account>();
        for(Account acc:accList){
            List<Contact> conList=acc.Contacts;
            System.debug('Total Associated Contacts:: '+conList.size());
            Integer count=conList.size();
            if(Count<5){
                acc.TotalCountContacts__c=count+1;
                updateAccList.add(acc);
            }
            else
            {
                for(Contact con:newList){
                    con.addERROR('Sorry! Only 5 accounts are possible ');
                }
            }
        }
        update updateAccList;
    }
     public static void CountContactCheckUpdate(List<Contact> newList){
        Set<Id> accIds=new Set<Id>();
        for(Contact con:newList){
            accIds.add(con.AccountId);
            System.debug('Account Id '+con.AccountId);
        }
        List<Account> accList=[SELECT Name,TotalCountContacts__c, 
                               (SELECT Name FROM Contacts)
                              FROM Account
                              WHERE ID IN: accIds];
        List<Account> updateAccList=new List<Account>();
        for(Account acc:accList){
            List<Contact> conList=acc.Contacts;
            System.debug('Total Associated Contacts:: '+conList.size());
            Integer count=conList.size();
            if(Count<5){
                acc.TotalCountContacts__c=count+1;
                updateAccList.add(acc);
            }
            else
            {
                for(Contact con:newList){
                    con.addERROR('Sorry! Only 5 accounts are possible ');
                }
            }
        }
        update updateAccList;
    }
}