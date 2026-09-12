public class DisplayContactAuraCtrl {
    @AuraEnabled
    public static List<Contact> FetchAllContactRecords(){
       List<Contact> conList=[SELECT FirstName,LastName,Phone,Email,LeadSource FROM Contact];
        return conList;
        
    }
     @AuraEnabled
    public static List<Contact> FetchSearchContactRecords(String name){
        String name1=name+'%';
       List<Contact> conList=[SELECT FirstName,LastName,Phone,Email,LeadSource FROM Contact WHERE FirstName LIKE :name1 ];
        return conList;
        
    }

}