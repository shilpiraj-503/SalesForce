public class SOQL_ReturnType {
    public void firstMethod(){
        Contact con = [SELECT Name,Phone,Email
                      FROM Contact
                      LIMIT 1];
        List<Account> accList= [SELECT Name,Type,Rating 
                               FROM Account];
        
        Integer rec=[SELECT Count() FROM Account];
        
        AggregateResult ar = [SELECT MAX(Amount), MIN(Amount),SUM(Amount) 
                              FROM Opportunity];
        System.debug(con);
        System.debug(rec);
        System.debug(ar);
    }
}