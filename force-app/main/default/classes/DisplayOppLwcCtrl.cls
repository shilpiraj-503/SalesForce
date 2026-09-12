public class DisplayOppLwcCtrl {

@AuraEnabled(cacheable=true)
public static List<Opportunity> getOppData(String name){
    String name2=name+'%';
    List<Opportunity> oppList=[SELECT Name, StageName,LeadSource,CloseDate 
        FROM Opportunity WHERE Name Like :name2];
        return oppList;
}
}