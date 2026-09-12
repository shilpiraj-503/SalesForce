public class DisplayAccLwcCtrl {
    
@AuraEnabled(cacheable=true)
public static List<Account> getAccountRecords(){
    List<Account> accList=[SELECT Name, Type, Rating, Industry 
    FROM Account];
    return accList;
}
}