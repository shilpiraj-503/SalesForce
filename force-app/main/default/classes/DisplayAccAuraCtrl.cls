public class DisplayAccAuraCtrl {
    
    @AuraEnabled
    public static List<Account> FetchAllAccountRecords(){
       List<Account> accList=[SELECT Name,Type,Rating,Industry FROM Account];
        return accList;
        
    }
    

}