public class AssignmentHelper {

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        return [SELECT Name,Type,Rating,Industry
                FROM Account];
    }

}