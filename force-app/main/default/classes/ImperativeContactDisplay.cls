public class ImperativeContactDisplay {

    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        return [SELECT FirstName,LastName,Phone,Email
                FROM Contact];
    }

}