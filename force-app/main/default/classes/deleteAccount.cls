public class deleteAccount {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccount(){
        return [SELECT Name,Type,Rating,Industry
        FROM Account];
        
    }
}